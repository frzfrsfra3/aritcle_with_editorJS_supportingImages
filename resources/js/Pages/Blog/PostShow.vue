<template>
    <div class="row col-md-8">
        <div class="col-sm-12 col-md-12 row mt-2">
            <div class="col-md-12 blog-main">
                <div class="blog-img mb-4 text-center">
                    <img :src="post.cover_path" alt="" class="w-100" style="max-height: 300px;">
                </div>

                <div class="blog-post">
                    <h2 class="blog-post-title">{{ post.title }}</h2>
                    <p class="blog-post-meta">{{ post.created_at }} by <a href="#">{{ post.creator.name }}</a></p>

                    <div v-if="newpost==''" v-html="post.content">
                    </div>
                    <div v-else v-html="newpost">


                    </div>

                </div><!-- /.blog-post -->
            </div>
           <Comments :items="post.comments" />
        </div>

    </div>

</template>

<script>
    import moment from "moment";
    import Comments from "../../components/Comments";

    export default {
        name: "PostShow",
        components: {Comments},
        data() {
            return {
                post: {
                    creator: "",
                    comments: []
                },
                newpost: ""
            }
        },
        created() {
            this.fetchPost(this.$route.params);
        },
        methods: {
            convertDataToHtml(blocks) {
      var convertedHtml = "";
      blocks.map(block => {

        switch (block.type) {
          case "header":
            convertedHtml += `<h${block.data.level}>${block.data.text}</h${block.data.level}>`;
            break;
          case "embded":
            convertedHtml += `<div><iframe width="560" height="315" src="${block.data.embed}" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe></div>`;
            break;
          case "paragraph":
            convertedHtml += `<p>${block.data.text}</p>`;
            break;
          case "delimiter":
            convertedHtml += "<hr />";
            break;
          case "image":
            convertedHtml += `<img class="img-fluid" src="${block.data.file.url}" title="${block.data.caption}" /><br /><em>${block.data.caption}</em>`;
            break;
          case "list":
            convertedHtml += "<ul>";
            block.data.items.forEach(function(li) {
              convertedHtml += `<li>${li}</li>`;
            });
            convertedHtml += "</ul>";
            break;
          default:
            console.log("Unknown block type", block.type);
            break;
        }
      });
      return convertedHtml;
    },
            fetchPost({ category, slug : postSlug}) {
                let url = `/api/${postSlug}`;
            var objectJ=[];
                axios.get(url)
                    .then(({ data : post}) =>
                        {
                    console.log(post.data.content);
                    this.post = post.data
                    if ((this.post.content).indexOf("blocks")>0)
                    {
                         objectJ= JSON.parse(this.post.content);
                          this.newpost=objectJ;
                          console.log(objectJ);
                          this.newpost=this.convertDataToHtml(this.newpost.blocks);
                    }
                        }

                    )
                    .catch(error => console.log(error));
            }
            // fetchPost({ category, slug : postSlug}) {
            //     let url = `/api/${category}/${postSlug}`;
            // var objectJ=[];
            //     axios.get(url)
            //         .then(({ data : post}) =>
            //             {
            //         console.log(post.data.content);
            //         this.post = post.data
            //         if ((this.post.content).indexOf("blocks")>0)
            //         {
            //              objectJ= JSON.parse(this.post.content);
            //               this.newpost=objectJ;
            //               console.log(objectJ);
            //               this.newpost=this.convertDataToHtml(this.newpost.blocks);
            //         }
            //             }

            //         )
            //         .catch(error => console.log(error));
            // }
        },
        watch: {
            '$route.params'(value) {
                this.fetchPost(value);
            }
        }
    }
</script>

<style scoped>

</style>
