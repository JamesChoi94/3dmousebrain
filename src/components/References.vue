<!-- <template>
  <v-row justify="center">
    <v-expansion-panels accordion>
      <v-expansion-panel
        :items="brainref"
        v-for ="(brainregion, index) in data.item" :key="index"
      >
        <v-expansion-panel-header>
          {{ brainregion }}
        </v-expansion-panel-header>
        
        <template v-for="(ArticleTitle, index) in data.item.ArticleTitle" :key ="index">

        </template>

        <v-expansion-panel-content>
          <div v-if="">

          </div>
        </v-expansion-panel-content>

      </v-expansion-panel>
    </v-expansion-panels>
  </v-row>
</template> -->
 
<!-- <script>
  import * as d3 from "d3-fetch";
  import * as _ from "lodash";
  import * as $ from "jquery";

  export default {
    name: 'References',
    components: {},
    props: ['id'],
    data: function() {
      return {
        brainref: [],
        fields: [
          {
            key: "Index",
            sortable: true,
          },
          {
            key: "Region",
            sortable: false,
            thStyle: {},
          },
          {
            key: "Abbreviation",
            sortable: true,
          },
        ],
      };
    },      
    methods: {
      async fetchData() {
        console.log(this.$route.name)
        this.brainref = await d3.csv('../brain-references-tidy.csv');
        this.brainref = _.forEach(this.brainref, (obj) => {
          obj.BrainRegion = obj.BrainRegion;
          obj.Abbreviation = obj.Abbreviation;
          obj.Authors = obj.Authors;
          obj.ArticleTitle = obj.ArticleTitle;
          obj.JournalTitle = obj.JournalTitle;
          obj.DateVolumeIssueLocation = obj.DateVolumeIssueLocation;
          obj.doi = obj.doi;
          obj.Identifiers = obj.Identifiers;
          obj.url = obj.url;
        });
        this.brainref = _.groupBy(this.brainref, this.brainref => this.brainref.BrainRegion);
      }
    },
    created() {
      this.fetchData();
    }
  }
</script> -->


<!-- Old markdown-based references template -->
<template>
  <div>
    <b-container>
      <b-row>
        <b-col>
          <get-markdown src="../ReferencesMarkdown.md"></get-markdown>
        </b-col>
      </b-row>
    </b-container>
  </div>
</template>
  
<script>
  //import * as d3 from "d3-fetch";
  //import * as d3sc from "d3-scale";
  //import * as _ from "lodash";
  //import * as $ from "jquery";
  import GetMarkdown from './GetMarkdownFile.vue'
  
  
  export default {
    components: {
      GetMarkdown,
    }
  }
</script>

<style lang="css" scoped>
.left {
  float: left;
}
</style>