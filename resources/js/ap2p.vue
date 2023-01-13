<template>
    <div class="h-100">
        <!-- Layout section -->
        <component :is="layout"></component>
        <!-- End layout section -->
        <Flash></Flash>
    </div>
</template>

<script>
   import BlogLayout from "./Pages/Layouts/BlogLayout"
   import AdminLayout from "./Pages/Layouts/AdminLayout"
   import LoginLayout from "./Pages/Layouts/LoginLayout"
   import Flash from "./Utilities/Flash";
   import EditorJS from "@editorjs/editorjs";
    import Header from "@editorjs/header";
    import Paragraph from "@editorjs/paragraph";
    import List from "@editorjs/list";

    export default {
        name: "App",
        components: { Flash, AdminLayout, BlogLayout, LoginLayout },
        data() {
            return {
                defaultLayout: "blog-layout",
                     value: null
            }
        },
          methods: {
    save: function() {
      editor.save().then(savedData => {
        console.log(savedData);
        this.value = savedData;
      });
    },
    // myEditor: function() {
    //   window.editor = new EditorJS({
    //     holder: "codex-editor",
    //     autofocus: true,
    //     /**
    //      * This Tool will be used as default
    //      */
    //     initialBlock: "paragraph",
    //     tools: {
    //       header: {
    //         class: Header,
    //         shortcut: "CMD+SHIFT+H"
    //       },
    //       list: {
    //         class: List
    //       },
    //       paragraph: {
    //         class: Paragraph,
    //         config: {
    //           placeholder: "."
    //         }
    //       }
    //     },
    //     onReady: function() {
    //       console.log("ready");
    //     },
    //     onChange: function() {
    //       console.log("change");
    //     }
    //   });
    // }
  },

        mounted() {
            this.$store.dispatch("fetchCategories");
            this.setDocumentTitle("SPA Article");
            //  this.myEditor();
        },
        computed: {
            layout() {
                return this.$route.meta.layout ? this.$route.meta.layout : this.defaultLayout;
            }
        },

    }
</script>
<style lang="css" scoped >
.editorx_body {
  /* width: 62%;
  margin-left: 15%; */
  width: 60%;
  margin-left: 20%;
  border: 2px solid #f1f3f5;
  box-sizing: border-box;
}
.ce-block--focused {
  background: linear-gradient(
    90deg,
    rgba(2, 0, 36, 1) 0%,
    rgba(9, 9, 121, 0.5438550420168067) 35%,
    rgba(0, 212, 255, 1) 100%
  );
}
</style>
