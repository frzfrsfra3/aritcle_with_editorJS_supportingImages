<template>
  <div>
    <div id="girls_gallery">
      <div class="girls_gallery_content">
        <div>
          <div class="g_gallery_title_container">
            <h1>Hover Image</h1>
          </div>
          <div class="girls_list">
            <div v-bind:key="index" v-for="(girl,index) in girls" class="girls_container">
              <img
                style="width: 200px; height: 200px"
                @mouseover="mouseOver(girl)"
                @mouseout="mouseout(girl)"
                v-bind:src="girl.imgSrc"
                alt="Snow"
              />
            </div>
          </div>
        </div>
      </div>
    </div>
    <div style="margin-top: 50px">
      <div v-for="(girl,index) in girls" v-bind:key="index"
        style="width: 200px; height: 200px; background: red"
        v-bind:style="{'background-color' : girl.hoverColor}"
        v-show="girl.hovered">
        </div>


      <!-- <slide-y-up-transition>
        <RedExperience v-show="img1" key="img1" />
      </slide-y-up-transition>
      <slide-y-up-transition>
        <OrangeExperience v-show="img2" key="img2" />
      </slide-y-up-transition>
      <slide-y-up-transition>
        <GreenExperience v-show="img4" key="img4" />
      </slide-y-up-transition>
      <slide-y-up-transition>
        <BlueExperience v-show="img3" key="img3" />
      </slide-y-up-transition> -->
    </div>
  </div>
</template>

<script>
export default {
  name: "HelloWorld",

  data() {
    return {
      girls: [
        {imgSrc: 'https://www.gettyimages.com/gi-resources/images/500px/983794168.jpg', hovered:false, hoverColor:'#337700'},
        {imgSrc: 'https://www.gettyimages.com/gi-resources/images/500px/983794168.jpg', hovered:false, hoverColor:'#123456'},
        {imgSrc: 'https://www.gettyimages.com/gi-resources/images/500px/983794168.jpg', hovered:false, hoverColor:'#000000'}
      ]

    };
  },

  methods: {
    mouseOver: function (girl) {
      girl.hovered = true;
    },

    mouseout: function (girl) {
      girl.hovered = false;

    },
  },
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.centered h1 {
  font-size: 48px;
  -webkit-text-stroke-width: 1px;
  -webkit-text-stroke-color: #FFFFFF;
  text-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
  font-family: Second-Montserrat-Bold;
  letter-spacing: -3px;
}



.girl_number h1 {
  font-family: Oswald-Bold;
  font-style: normal;
  font-weight: bold;
  font-size: 150px;
  line-height: 222px;
  text-align: center;
  -webkit-text-stroke-width: 5px;
  -webkit-text-stroke-color: #FFFFFF;
  color: #ffffff00;
  color: rgba(255, 255, 255, 0.4);
  text-shadow: -4px 2px 4px #eee, 0 0 0 #000, -6px 5px 3px #00000069;
}

.girls_container img {
  width: 380px;
  height: auto;
  max-width: 100%;
}

.g_gallery_title_container h1 {
  font-size: 48px;
  text-align: center;
  font-family: Montserrat-SemiBold;
}


.centered {
  position: absolute;
  top: 64%;
  left: 50%;
  transform: translate(-50%, -50%);
}

.g_standart_text {
  color: #CC003D;
}

.g_roleplay_text {
  font-family: Montserrat-ExtraBold;
  -webkit-text-stroke-width: 3px;
  -webkit-text-stroke-color: white;
  font-size: 64px;
  color: #FFE600;
  letter-spacing: -7px;
}

.g_cosplay_text {
  color: #74C8C5;
}

.g_quickie_text {
  color: #76ED00;
}


@media (max-width: 1100px) {
  .girls_list {
    flex-wrap: wrap;
  }

  .HomePageContainer {
    background-size: cover;
  }

}

.girls_list {
  display: flex;
  justify-content: center;
  align-items: center;
}

.girl_number { position: absolute; //left: 35px; top: -35px; z-index: -1; }

.girls_gallery_content {
  position: relative;
  top: 130px;
  margin: auto;
  width: 100%;
}

.girls_container {
  position: relative;
  text-align: center;
}

@media screen and (max-width: 1100px) {
  #girls_gallery {
    height: 100%;
  }
}

.g_gallery_title_container {
  margin-bottom: 15px;
}

#girls_gallery {
  background-image: url(~@/assets/Images/HomePage/ImageBackground.png);
  position: relative;
  width: 100%;
  background-repeat: no-repeat;
  background-size: contain;
  background-position: center;
}

</style>
