<template>
  <div>
  <b-container>
    <b-row>
      <b-col>
        <h3>
        Exploring Nuclei of Descending Input to the Spinal Cord
        </h3>
      </b-col>
    </b-row>
    <b-row>
      <b-col class="text-center">
        <h5>
        This project visualizes and quantifies supra spinal neurons with projections to the cervical, thoracic and lumbar segments.
        </h5>
        <b-button 
          class="button" 
          variant="primary" 
          :to="{name: 'selecttype'}"
        >
          <b>Start Exploring</b>
        </b-button>
      </b-col>
    </b-row>
    <b-row>
      <b-col>
        <br>
        <b-carousel
            id="carousel-fade"
            style="text-shadow: 0px 0px 2px #000"
            fade
            indicators
            controls
            img-width="800"
            img-height="380"
          >
          <b-carousel-slide v-for="(image, index) in items" :key="index"
            :caption="image.text"
            :img-src="image.src"
            >
          </b-carousel-slide>
        </b-carousel>
        <br>
      </b-col>
    </b-row>
  </b-container>
  </div>
</template>

<script>
export default {
  name: "Home",
  data: function() {
    return {
      items: [
        {
          src: "../carousel/CAROUSEL.001.png",
          //text: "Text to go with first slide"
        },
        {
          src: "../carousel/CAROUSEL.002.png",
          //text: "Text to go with first slide"
        },
        {
          src: "../carousel/CAROUSEL.003.png",
          //text: "Text to go with second slide"
        },
        {
          src: "../carousel/CAROUSEL.004.png",
          //text: "Text to go with third slide"
        },
        {
          src: "../carousel/CAROUSEL.005.png",
          //text: "Text to go with fourth slide"
        },
        {
          src: "../carousel/CAROUSEL.006.png",
          //text: "Text to go with fifth slide"
        },
        {
          src: "../carousel/CAROUSEL.007.png",
          //text: "Text to go with fifth slide"
        },
      ],
    };
 }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h3 {
  text-align: center;
}
h5 {
  margin-left: 10px;
  margin-top: 10px;
  margin-right: 10px;
  text-align: center;
  font-size: 18px;
}
.button {
  margin: 0 auto;
  /* display: block; */
}

.carousel-item {
  width: 100% !important;
  height: 100%;
}
.container {
  margin-top: 0px;
}
/* .img {
    position: absolute;
    top: 0;
    left: 0;
    min-height: 300px;
} */

</style>
