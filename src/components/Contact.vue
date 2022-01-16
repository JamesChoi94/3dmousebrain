<template>
  <div>
      <b-container>
        <b-row>
          <b-col>
            <get-markdown src="../ContactMarkdown.md"></get-markdown>
          </b-col>
        </b-row>
      </b-container>
  </div>
  </template>
  
  <script>
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