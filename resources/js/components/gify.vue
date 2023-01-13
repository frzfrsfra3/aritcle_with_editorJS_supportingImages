<template>
  <div >
    <h1>Amazing Gif Searcher</h1>
    <input v-model="searchTerm" type="text">
    <button class="button" @click=getGifs()>Search</button>
    <div class="gif-container">
      <img v-for="gif in gifs" :src="gif" @click="logg(gif)"  style="width:100px; height:100px; padding: 5px; border-radius:5px;" :key="gif.id">
    </div>
         <button @click="downloadFile()">DownLoad</button>
  </div>
</template>

<script>
export default {
  data() {
    return {
      searchTerm: "",
      gifs: [],
      log: ""
    };
  },
  methods: {

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
                //       axios({
                //     url: this.log, // File URL Goes Here
                //     method: 'GET',
                //     responseType: 'blob',
                // }).then((res) => {
                    console.log(response.data);
                    console.log(this.$parent.$data.value.blocks);
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
    }
  },
  created()
  {
    this.fetchGifs();
  },
  mounted()
  {
    this.downloadFile();
  }
};
</script>

<style scoped>
#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
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
