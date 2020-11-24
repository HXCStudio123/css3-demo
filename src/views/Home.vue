<template>
  <div class="home">
    <roller />
    <!-- <loading /> -->
  </div>
</template>

<script>
// @ is an alias to /src
import Roller from '@/components/roller.vue'
// import Loading from '@/components/loading.vue'

export default {
  name: 'Home',
  components: {
    // Loading
    Roller
  }
}
</script>
