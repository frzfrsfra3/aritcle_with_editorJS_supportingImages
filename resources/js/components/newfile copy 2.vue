<template>
  <div >
    <div >
      <h1 style="text-align:center">This is vue editor.js <a href="https://twitter.com/@code4mk" target="_blank">@code4mk</a></h1>
    </div>

    <div class="editorx_body">
      <!--editorjs id-->
      <div class id="codex-editor"/>
    </div>
    <button style="margin-left: 30%;" type="button" name="button" @click="save()">save</button>
    <div class="editorx_body">
      <pre>{{value}}</pre>
    </div>
    <div id="m01" class="modal">
        <gify></gify>
    </div>
    <!-- <editor header list code ... :config="config"/> -->
  </div>
</template>

<script>
import EditorJS from "@editorjs/editorjs";
import Header from "@editorjs/header";
import Paragraph from "@editorjs/paragraph";
import List from "@editorjs/list";
import ImageTool from '@editorjs/image';
import Gify from './gify';
//  import  Editor  from 'vue-editor-js/src/index';
export default {
    components:{
        Gify
    },
  data() {
    return {
      value: null,
       config: {
        image: {
          // Like in https://github.com/editor-js/image#config-params
          endpoints: {
            byFile: 'http://localhost:8090/image',
            byUrl: 'http://localhost:8090/image-by-url',
          },
          field: 'image',
          types: 'image/*',
        },
      }
    };
  },
  methods: {
    save: function() {
      editor.save().then(savedData => {
        console.log(savedData);
        this.value = savedData;
      });
    },
    myEditor: function() {
      window.editor = new EditorJS({
        holder: "codex-editor",
        autofocus: true,
        /**
         * This Tool will be used as default
         */
        initialBlock: "paragraph",
        tools: {
          header: {
            class: Header,
            shortcut: "CMD+SHIFT+H"
          },
          list: {
            class: List
          },
          paragraph: {
            class: Paragraph,
            config: {
              placeholder: "."
            }
          },
            image: {
      class: ImageTool,
      config: {
        endpoints: {
          byFile: 'http://localhost:8008/uploadFile', // Your backend file uploader endpoint
          byUrl: 'http://localhost:8008/fetchUrl', // Your endpoint that provides uploading by Url
        },
            actions: [
                {
                    name: 'new_button',
                    icon: '<svg>...</svg>',
                    title: 'New Button',
                    toggle: true,
                    action: (name) => {
                        alert(`${name} button clicked`);
                    }
                }
            ]
      },
      actions: [
    {
        name: 'new_button',
        icon: '<svg>...</svg>',
        title: 'New Button',
        toggle: true,
        action: (name) => {
            alert(`${name} button clicked`);
        }
    }
]
        }
        },
        onReady: function() {
          console.log("ready");
        },
        onChange: function() {
          console.log("change");
        }
      });
    }
  },
  mounted: function() {
    this.myEditor();
  }
};
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
