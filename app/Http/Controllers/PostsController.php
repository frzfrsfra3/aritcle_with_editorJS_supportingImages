<?php

namespace App\Http\Controllers;

use App\Filters\PostsFilter;
use App\Http\Requests\PostRequest;
use App\Http\Resources\PostCollection;
use App\Http\Resources\PostResource;
use App\Models\Category;
use App\Models\Post;
use App\Models\Tag;
use Illuminate\Http\Request;
use Illuminate\Http\UploadedFile;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class PostsController extends Controller
{
    protected $filter;



    /**
     * PostsController constructor.
     * @param PostsFilter $filter
     */
    public function __construct(PostsFilter $filter)
    {
        $this->filter = $filter;
    }

    /**
     * Fetch filtered posts that have an online status
     * @return PostCollection
     */
    public function index()
    {
        $filteredPosts  = $this->filter->apply(
            request()->all(),
            Post::online()->latest()
        );

        $posts = $filteredPosts->paginate(7);

        return new PostCollection($posts);
    }

    /**
     * Fetch all posts (online or not)
     */
    public function all()
    {
        return new PostCollection(Post::latest()->get());
    }


    /**
     * @param PostRequest $request
     * @return PostResource
     */
    public function store(PostRequest $request)
    {

        $data = $request->data();
        // $data["cover_path"] = $this->uploadCover($request->file("cover"));
        if($request->file("cover")) {
            // Storage::delete("public/covers/" . $post->cover);
            $data["cover_path"] =  $this->hl_uploadFileTo($request->cover, 'user/');
            // $data["cover_path"] = $this->uploadCover($request->file("cover"));
        }


        $data["visits"] = 0;
        // $image_data = $this->hl_uploadFileTo($request->file("cover"), 'user/');
        $post = Post::create($data);
            // dd(auth("api"));
        // $tagsId = Tag::add(explode(",", $request->tags));
        $post->tags()->attach(1);

        return new PostResource($post);
    }

    private function uploadCover(UploadedFile $file) : string
    {
        $filename = time() . "." . $file->getClientOriginalExtension();
        // dd($file);
        $file->storeAs("public/covers", $filename);
        // dd(asset("storage/covers/". $filename));
        return asset("storage/covers/". $filename);
    }
    public    function getMediaUrl($path)
    {
        return url('/public/'.$path);
    }

    public function hl_uploadFileTo($file,$path)
    {

        $name= $file->getClientOriginalName();

        $file->move($path,$path.'/'. $name);
        // dd($this->getMediaUrl($file));
        // dd(asset($path. $name));
        // dd($file);
        // return [
        //     'media_path' => $file,
        //     'media_url' => $this->getMediaUrl($file)
        // ];
        return asset($path. $name);

    }
    /**
     * @param Category $category
     * @param Post $post
     * @return PostResource
     *
     */
    public function show(Category $category, Post $post) : PostResource
    {
        if(! auth()->user()) {
            $post->increment("visits");
        }

        $post->load(["category", "creator", "comments"]);

        return new PostResource($post);
    }
    public function show2( Post $post) : PostResource
    {
        if(! auth()->user()) {
            $post->increment("visits");
        }

        $post->load(["category", "creator", "comments"]);

        return new PostResource($post);
    }
    public function upload(Request $request)
    {
        // $this->validate($request, [
        //     'image' => 'required|mimes:jpeg,jpg,png',
        // ]);
        // dd($request);
        $picName = time() . '.' . $request->image->extension();
        $request->image->move(public_path('uploads'), $picName);
        // return $picName;
        return response()->json([
            'success' => 1,
            'file' => [
                'url' => "http://127.0.0.1:2222/uploads/$picName",
            ],
        ]);

    }
    public function nomagic(Request $request)
    {
        // dd($request->image);
        // $filename = 'temp-image.jpg';
        // $tempImage = tempnam(sys_get_temp_dir(), $filename);
        // copy($request->image, $tempImage);
        // dd($request);
        // $contents = file_get_contents($request->image);
// $name = substr($request->image, strrpos($request->image, '/') + 1);
// Storage::put($name, $contents);

        // dd($tempImage);
    //    return  $this->upload($tempImage);
        // return response()->download($tempImage, $filename);
        return response()->json([
            'success' => 1,
            'file' => [
                'url' => $request->image,
            ],
        ]);

    }
    public function nomagic2(Request $request)
    {
        // dd($request->image);
        // $filename = 'temp-image.jpg';
        // $tempImage = tempnam(sys_get_temp_dir(), $filename);
        // copy($request->image, $tempImage);
        // dd($request);
        // $contents = file_get_contents($request->image);
// $name = substr($request->image, strrpos($request->image, '/') + 1);
// Storage::put($name, $contents);

        // dd($tempImage);
    //    return  $this->upload($tempImage);
        // return response()->download($tempImage, $filename);
        return response()->json([
            'success' => 1,
            'file' => [
                'url' => $request->url,
            ],
        ]);

    }
    public function uploadEditorImage(Request $request)
    {
        $this->validate($request, [
            'image' => 'required|mimes:jpeg,jpg,png',
        ]);
        $picName = time() . '.' . $request->image->extension();
        $request->image->move(public_path('uploads'), $picName);
        return response()->json([
            'success' => 1,
            'file' => [
                'url' => "http://fullstack.localhost/uploads/$picName",
            ],
        ]);
        return $picName;
    }


    /**
     * @param PostRequest $request
     * @param Post $post
     * @return PostResource
     */
    public function update(PostRequest $request, Post $post) : PostResource
    {
        $data = $request->data();

        if($request->file("cover")) {
            Storage::delete("public/covers/" . $post->cover);
            $data["cover_path"] =  $this->hl_uploadFileTo($request->cover, 'user/');
            // $data["cover_path"] = $this->uploadCover($request->file("cover"));
        }

        $post->update($data);

        $tagsId = Tag::add(explode(",", $request->tags));
        $post->tags()->sync($tagsId);

        return new PostResource($post);
    }

    /**
     * @param Post $post
     * @return \Illuminate\Http\JsonResponse
     * @throws \Exception
     */
    public function destroy(Post $post)
    {
        $post->delete();

        Storage::delete("public/covers/{$post->cover}");

        return response()->json([], 204);
    }
}
