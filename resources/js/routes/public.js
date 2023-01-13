//components
import PostsIndex from "../Pages/Blog/PostsIndex";
import PostShow from "../Pages/Blog/PostShow";
import PostShow2 from "../Pages/Blog/PostShow2";
import NotFound from "../Pages/NotFound";
import CategoryIndex from "../Pages/Blog/CategoryIndex";
import TagIndex from "../Pages/Blog/TagIndex";
import ArticleCreate from "../Pages/Admin/Posts/PostsCreate";
import FileIndex from "../components/neweditor";
import Gify from "../components/gify";
const routes = [
    {
        path: "/",
        component: PostsIndex,
        name: "posts.index"
    },
    {
        path: "/categories/:category",
        component: CategoryIndex,
        name: "categories.index"
    },
    {
        path: "/file",
        component: FileIndex,
        name: "file"
    },
    {
        path: "/gify",
        component: Gify,
        name: "gify.index"
    },
    {
        path: "/admin/article/create",
        component: ArticleCreate,
        name: "admin.posts.create",
        meta: {
            layout: "admin-layout"
        }
    },
    {
        path: "/tags/:tag",
        component: TagIndex,
        name: "tags.index"
    },
    {
        path: "/:category/:slug",
        component: PostShow,
        name: "posts.show"
    },
    {
        path: "/:slug",
        component: PostShow,
        name: "posts.show2"
    },
    {
        path: "*",
        component: NotFound,
        name: "not found"
    }
];

export default routes;
