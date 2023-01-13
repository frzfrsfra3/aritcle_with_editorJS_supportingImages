<template>
  <div >
    <div >
      <h1 style="text-align:center">This is vue editor.js Written By Mhd Feras Zaiter</h1>
    </div>

    <div class="editorx_body">
      <!--editorjs id-->
      <div class id="codex-editor"/>
    </div>
    <button style="margin-left: 30%;" type="button" name="button" @click="save()">save</button>
    <div class="editorx_body">
      <pre>{{value}}</pre>
    </div>
       <div class="editorx_body">
      <!-- <pre>{{preview}}</pre> -->
    <div v-html="preview"></div>
    </div>
    <div id="m01" class="modal">
        <!-- <gify></gify> -->
          <div >
    <h1>Amazing Gif Searcher</h1>
    <input v-model="searchTerm" type="text">
    <button class="button" @click=getGifs()>Search</button>
     <div class="modal-body">
    <div class="gif-container">
      <img v-for="gif in gifs" :src="gif" @click="logg(gif)"  style="width:100px; height:100px; padding: 5px; border-radius:5px;" :key="gif.id">
    </div>
    </div>
         <button @click="downloadFile()">DownLoad</button>
  </div>
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
        searchTerm: "",
      gifs: [],
      log: "",
      value: null,
      preview: null,
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
      console.log(savedData.blocks);
       this.preview= this.convertDataToHtml(savedData.blocks);
        this.value = savedData;
      });
    },
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
    logg(gif){
            console.log("gif:"+gif);

        // axios('/api/upload')
        this.log=gif;
            let formData = new FormData();
        formData.append("image", this.log);
            axios({
                 method: "post",
                 url: `/api/nomagic`,
                 data: formData
             }).then( (response)=> {

                    console.log(Object.values(response.data.file));
                    var filo=Object.values(response.data.file)[0];
                    // console.log(this.value.blocks);

                    console.log('file' + filo);
                    editor.blocks.insert(
                "image",
                {
                 file:
                 {
                    url: filo
                 }
                  ,
                  caption : " Enter Your Content here",
                  withBorder : false,
                  withBackground : false,
                  stretched : true
                })
//                     data:Object
// id:"PsXvdI2HSX"
// type:"image"

            //          var FILE = window.URL.createObjectURL(new Blob([res.data]));
            // $(".image-tool__image-picture").attr('src',this.log);
            //   console.log("ton");
            //   var docUrl = document.createElement('x');
            //          docUrl.href = FILE;
            //          docUrl.setAttribute('download', this.log );
            //          document.body.appendChild(docUrl);
            //          docUrl.click();
                // });
             })
                   $("#m01").modal('hide');
        },
        downloadFile() {
              axios({
                    url: this.log, // File URL Goes Here
                    method: 'GET',
                    responseType: 'blob',
                }).then((res) => {
                     var FILE = window.URL.createObjectURL(new Blob([res.data]));

                     var docUrl = document.createElement('x');
                     docUrl.href = FILE;
                     docUrl.setAttribute('download', this.log );
                     document.body.appendChild(docUrl);
                     docUrl.click();
                });
          },
       fetchGifs() {
      let apiKey = "nzg4sDi4boEiUmF4c3kq6toFJ5syarBP";
      let searchEndPoint = "https://api.giphy.com/v1/gifs/trending?";
      let limit = 20;
      let url = `${searchEndPoint}&api_key=${apiKey}&q=${
        this.searchTerm
      }&limit=${limit}`;
      fetch(url)
        .then(response => {
          return response.json();
        })
        .then(json => {
          this.buildGifs(json);
        })
        .catch(err => console.log(err));
    },
    getGifs() {
      let apiKey = "nzg4sDi4boEiUmF4c3kq6toFJ5syarBP";
      let searchEndPoint = "https://api.giphy.com/v1/gifs/search?";
      let limit = 20;
      let url = `${searchEndPoint}&api_key=${apiKey}&q=${
        this.searchTerm
      }&limit=${limit}`;
      fetch(url)
        .then(response => {
          return response.json();
        })
        .then(json => {
          this.buildGifs(json);
        })
        .catch(err => console.log(err));
    },
    buildGifs(json) {
      this.gifs = json.data.map(gif => gif.id).map(gifId => {
        return `https://media.giphy.com/media/${gifId}/giphy.gif`;
      });
    },
    myEditor: function() {
      window.editor = new EditorJS({
        holder: "codex-editor",
        autofocus: true,
        readOnly: false,
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
       action: (name) => {
                        alert(`${name} button clicked`);
                    },
      config: {
        endpoints: {
          byFile: '/api/uploadfile', // Your backend file uploader endpoint
        //   byUrl: '/api/nomagic', // Your endpoint that provides uploading by Url
        },
            uploader: {
          /**
           * Upload file to the server and return an uploaded image data
           * @param {File} file - file selected from the device or pasted by drag-n-drop
           * @return {Promise.<{success, file: {url}}>}
           */
        //   uploadByFile(file){
        //     // your own uploading logic here
        //     return MyAjax.upload(file).then(() => {
        //       return {
        //         success: 1,
        //         file: {
        //           url: 'https://codex.so/upload/redactor_images/o_80beea670e49f04931ce9e3b2122ac70.jpg',
        //           // any other image data you want to store, such as width, height, color, extension, etc
        //         }
        //       };
        //     });
        //   },

          /**
           * Send URL-string to the server. Backend should load image by this URL and return an uploaded image data
           * @param {string} url - pasted image URL
           * @return {Promise.<{success, file: {url}}>}
           */
          uploadByUrl(url){
            // your ajax request for uploading
            // return MyAjax.upload(file).then(() => {
            //   return {
            //     success: 1,
            //     file: {
            //       url: 'https://codex.so/upload/redactor_images/o_e48549d1855c7fc1807308dd14990126.jpg',
            //       // any other image data you want to store, such as width, height, color, extension, etc
            //     }
            //   }
            // })
            console.log('gggg')
            return 'haha';
          }
        }
        ,          actions: [
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
        }
        },
        onReady: function() {
          console.log("ready");
        },
        onChange: function() {
            $("input[type=file]").attr('disabled',true);
          console.log("change");
             $("div[data-item-name='image']").on("click",function(){
    $("#m01").modal('show');

    });
    $("div.cdx-button").on("click",function(){
  $("#m01").modal('show');
});
   }
      });
    }
  },
  mounted: function() {
    this.myEditor();
    // this.$el.querySelector("input[type='file']").disabled = false;
  },
    created()
  {
    this.fetchGifs();
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
input {
  padding: 5px;
  margin-bottom: 20px;
}
.button {
  background-color: rgb(0, 172, 0);
  color: white;
  padding: 5px 20px;
  border: none;
  display: block;
  margin: 0 auto;
}
.button:hover {
  background-color: rgb(0, 148, 0);
}
.gif-container {
  margin-top: 30px;
  display: block;
  flex-direction: column;
  align-items: center;
}
</style>
