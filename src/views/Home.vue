<template>
  <div class="home">
    <!-- <cube :progress="90" /> -->
    <loading />
  </div>
</template>

<script>
// @ is an alias to /src
// import Cube from '@/components/cube.vue'
import Loading from '@/components/loading.vue'

export default {
  name: 'Home',
  components: {
    Loading
    // Cube
  }
}
</script>
