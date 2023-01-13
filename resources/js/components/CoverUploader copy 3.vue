<style>
/*
.modal {
z-index:1;
display:none;
padding-top:10px;
position:fixed;
left:0;
top:0;
width:50%;
height:50%;
overflow:auto;
background-color:rgb(0,0,0);
background-color:rgba(0,0,0,0.8)
}

.modal-content{
margin: auto;
display: block;
    position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}


.modal-hover-opacity {
opacity:1;
filter:alpha(opacity=100);
-webkit-backface-visibility:hidden
}

.modal-hover-opacity:hover {
opacity:0.60;
filter:alpha(opacity=60);
-webkit-backface-visibility:hidden
}


.close {
text-decoration:none;float:right;font-size:24px;font-weight:bold;color:white
}
.container1 {
width:50px;
display:inline-block;
}
.modal-content, #caption {

    -webkit-animation-name: zoom;
    -webkit-animation-duration: 0.6s;
    animation-name: zoom;
    animation-duration: 0.6s;
}


@-webkit-keyframes zoom {
    from {-webkit-transform:scale(0)}
    to {-webkit-transform:scale(1)}
}

@keyframes zoom {
    from {transform:scale(0)}
    to {transform:scale(1)}
}
*/
</style>
<template>
    <label for="cover" class="cover_label">
        <img style="height: 500px; width: 700px; display: block;" :src="image" alt="Card image" class="mx-auto">
        <!-- <input type="file" name="cover" ref="cover" hidden @change="upload" id="cover"> -->
                  <a href="#" @click="editModal(user)">
                                            <i class="fa fa-edit blue"></i>
                                        </a>
                                          <div
            class="modal fade"
            id="addNew"
            tabindex="-1"
            role="dialog"
            aria-labelledby="addNewLabel"
            aria-hidden="true"
        >
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5
                            class="modal-title"
                            id="addNewLabel"

                        >
                            Add New User
                        </h5>
                        <h5
                            class="modal-title"
                            id="addNewLabel"

                        >
                            Update User
                        </h5>
                        <button
                            type="button"
                            class="close"
                            data-dismiss="modal"
                            aria-label="Close"
                        >
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                            <div class="container1">
    <img src="https://images-na.ssl-images-amazon.com/images/M/MV5BMTczNTI2ODUwOF5BMl5BanBnXkFtZTcwMTU0NTIzMw@@._V1_SY1000_CR0,0,674,1000_AL_.jpg" style="max-width:100%;cursor:pointer"
	@click="clickme('https://images-na.ssl-images-amazon.com/images/M/MV5BMTczNTI2ODUwOF5BMl5BanBnXkFtZTcwMTU0NTIzMw@@._V1_SY1000_CR0,0,674,1000_AL_.jpg')" class="modal-hover-opacity">
  </div>
  <div class="container1">
    <img src="https://images-na.ssl-images-amazon.com/images/M/MV5BMTUyNzk3MjA1OF5BMl5BanBnXkFtZTcwMTE1Njg2MQ@@._V1_SY1000_CR0,0,674,1000_AL_.jpg" style="max-width:100%;cursor:pointer"
    @click="clickme('http://www.filmosphere.com/wp-content/uploads/2013/04/Iron-Man-3-affiche1-300x400.jpg')" class="modal-hover-opacity">
  </div>
  <div class="container1">
    <img src="https://images-na.ssl-images-amazon.com/images/M/MV5BMTM0MDgwNjMyMl5BMl5BanBnXkFtZTcwNTg3NzAzMw@@._V1_.jpg" style="max-width:100%;cursor:pointer"
    @click="clickme('https://images-na.ssl-images-amazon.com/images/M/MV5BMTczNTI2ODUwOF5BMl5BanBnXkFtZTcwMTU0NTIzMw@@._V1_SY1000_CR0,0,674,1000_AL_.jpg')" class="modal-hover-opacity">
  </div>
  <div class="container1">
    <img src="http://www.filmosphere.com/wp-content/uploads/2013/04/Iron-Man-3-affiche1-300x400.jpg" style="max-width:100%;cursor:pointer" @click="clickme('https://images-na.ssl-images-amazon.com/images/M/MV5BMTczNTI2ODUwOF5BMl5BanBnXkFtZTcwMTU0NTIzMw@@._V1_SY1000_CR0,0,674,1000_AL_.jpg')" class="modal-hover-opacity">
  </div>
                </div>
            </div>
        </div>



<div id="modal01" class="modal" @click="!teto " :style="teto ?'display:block;' : 'display:none;'">
  <span class="close">&times;&nbsp;&nbsp;&nbsp;&nbsp;</span>
  <div class="modal-content">
    <img id="img01" style="max-width:50%">
  </div>
</div>
    </label>
</template>

<script>
    export default {
        name: "CoverUploader",
        props: {
            cover: {
                type: String,
                required: false
            }
        },
        data() {
            return {
                teto: true,
                element: [],
                image: "data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22318%22%20height%3D%22180%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20318%20180%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_158bd1d28ef%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A16pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_158bd1d28ef%22%3E%3Crect%20width%3D%22318%22%20height%3D%22180%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22129.359375%22%20y%3D%2297.35%22%3ECover%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
            }
        },
        methods: {
            editModal(user) {
            // this.editmode = true;
            // this.form.reset();
            $("#addNew").modal("show");
            // this.form.fill(user);
        },
            upload() {
                this.showImage();
                this.dispatchImage();
            },
            showImage() {
                let reader = new FileReader();
                reader.onload = (event) => {
                    this.image = event.target.result;
                };
                reader.readAsDataURL(this.$refs.cover.files[0]);
            },
            dispatchImage() {
                this.$emit("loaded", this.$refs.cover.files[0]);
            },
            clickme(element){
                 document.getElementById("img01").src = element;
  document.getElementById("modal01").style.display = "block";
            }
        },
        watch: {
            "cover"(newValue, oldValue) {
                if(newValue !== "") {
                    this.image = newValue;
                }
            }
        },
        mounted(){
            $($('.cover_label')[0]).on('click', function()
                {
                $("#addNew").modal("show");
                });
        }
    }
</script>

<style scoped>
    .cover_label {
        position: relative;
    }

    .cover_label:hover {
        cursor: pointer;
    }

    .cover_label:after {
        content: "";
        position: absolute;
        width: 100%;
        height: 100%;
        transition: background-color 0.3s;
        top: 0;
    }

    .cover_label:hover:after {
        background-color: rgba(0, 0, 0, 0.5);
    }

</style>
