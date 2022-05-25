<template>
  <div>
    <b-breadcrumb>
      <b-breadcrumb-item href="/">
        <b-icon
          icon="house-fill"
          scale="1.25"
          shift-v="1.25"
          aria-hidden="true"
        ></b-icon>
        Home
      </b-breadcrumb-item>
      <b-breadcrumb-item :to="{ name: 'selecttype' }">
        Treatments
      </b-breadcrumb-item>
    </b-breadcrumb>
    <div class="d-flex justify-content-center">
      <b-container fluid>
        <b-row class="justify-content-center">
          <b-col
            class="d-flex justify-content-center"
            lg="6" md="6" sm="6" cols="auto" align-h="center"
            v-for="(brain, index) in brainObj[$route.name]"
            :key="index"
          >
            <b-card 
              v-b-popover.hover="hoveredText(brain)"
              @mouseover="activeCard=index"
              @mouseout="activeCard=null"
              :border-variant="activeCard==index ? 'primary' : 'dark' "
              :header="($route.name=='injured') ? textContent(brain) : ''"
              header-text-variant="dark"
              :title="'Animal ID: ' + brain" 
              :img-src="'../injectionimages/'+brain+'.png'"
              img-alt="Image"
              img-top
              :img-height="300"
              tag="article"
              align="center" 
              style="width: 100%; max-width: 320px; justify-content: center;"
              :class="activeCard==index ? ['highlightcard','mb-2'] : 'mb-2'"
            >
              <b-button
                :to="{
                  name: $route.name + 'brain',
                  params: { id: brain, category: $route.name },
                }"
                variant="primary"
              >
                <b>Visualize</b>
              </b-button>
            </b-card>
          </b-col>
        </b-row>
      </b-container>
    </div>
  </div>
</template>

<script>
export default {
  name: "BrainList",
  props: ["type"],
  data: function () {
    return {
      activeCard: null,
      brainObj: {
        cervicallumbar: ["174", "176"],
        lumbar: ["167", "168"],
        lowlumbar: ["136","138"],
        injured: [ "190", "191", "177", "179", "180","182", "148", "149",],
        thoracic: ["140", "145"],
      },
    };
  },
  methods: {
    hoverEffect(){
      console.log("hi")
    },
    hoveredText(id){
      // Cervical-Lumbar
      if (id=='174'||id=='176') {
        return "AAV-Retro-mScarlet and AAV2-Retro-H2B-mGL were injected to segments C4 and L1 of the spinal cord, respectively."
      } 
      // Upper Lumbar
      else if (id=='167'||id=='168') {
        return "AAV2-Retro-H2B-mGL was injected to segment L1 of the spinal cord."
      } 
      // Lower Lumbar
      else if (id=='136'||id=='138') {
        return "AAV2-Retro-H2B-mGL was injected to segment L3/4 of the spinal cord."
      }
      // Thoracic
      else if (id=='140'||id=='145') {
        return "AAV2-Retro-H2B-mGL was injected to segment T10 of the spinal cord."
      }
      // Injured
      else {
        return "AAV2-Retro-H2B-mGL was injected rostrally or caudally after mild, moderate or severe spinal injury."
      }
    },
    // // if colors required for the border
    // borderColor(id){
    //   if (id=='182' || id=='180') {
    //     return 'danger'
    //   }
    //   else if (id=='148' || id == '149') {
    //     return 'warning'
    //   }
    //   else if (id=='190' || id == '191') {
    //     return 'info'
    //   }
    //   else {
    //     return 'primary'
    //   }
    //   //:header-bg-variant="($route.name=='injured') ? borderColor(brain) : ''"
    // }
    // ,
    textContent(id){
      if (id=='182' || id=='180') {
        return 'Severe Injury'
      }
      else if (id=='148' || id == '149') {
        return 'Severe Injury, Rostral Injection'
      }
      else if (id=='190' || id == '191') {
        return 'Mild Injury'
      }
      else {
        return 'Moderate Injury'
      }
    }
  },
  mounted() {
    console.log(this.$route.name);
  },
};
</script>

<style lang="css" scoped>
.card {
  border: solid 2px;
}
.text-dark {
  font-size: large;
  font-weight: bold;
}
.highlightcard {
  border: solid 3px;
  transition: 0.1s;
  transition-timing-function: ease;
}
</style>