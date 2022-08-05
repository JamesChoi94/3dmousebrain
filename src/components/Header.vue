<template>
<div class="container-fluid">
  <b-navbar 
  type="dark" 
  variant="primary"
  toggleable="md"
  >
    <b-navbar-brand href="/" >
      <img src="../3dmousebrain-logo.png" width="40" height="30" alt="Logo" class="d-inline-block align-center">
      3Dmousebrain
    </b-navbar-brand>

    <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>

    <b-collapse id="nav-collapse" is-nav>
      <b-navbar-nav>
        <b-nav-item href="/">Home</b-nav-item>
        <b-nav-item :to="{name: 'selecttype'}">Brains</b-nav-item>
        <b-nav-item :to="{name: 'methods'}">Methods</b-nav-item>
        <b-nav-item :to="{name: 'software'}">Software</b-nav-item>
        <b-nav-item :to="{name: 'references'}">References</b-nav-item>
        <b-nav-item :to="{name: 'contact'}">Contact</b-nav-item>
      </b-navbar-nav>
    </b-collapse>
  </b-navbar>
</div>
</template>

<script>
  export default {
    name: 'Header2',
    data: function(){
      return {
          links: [
              {
                  name: 'Home',
                  route: 'cervicallumbar',
                  state: false
              },
              {
                  name: 'Lumbar Injection',
                  route: 'lumbar',
                  state: false
              },
              {
                  name: 'Thoracic Injection',
                  route: 'thoracic',
                  state: false
              },
              {
                  name: 'Injured Animals',
                  route: 'injured',
                  state: false
              },

          ]
      }
    }
  }
</script>

<style scoped>
.navitems {
  color: white;
  font-weight: bold;
  font-size: 22px;
}
.nav-link {
    color: white !important;
}
</style>