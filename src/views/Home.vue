<template>
  <div class="home">
    <roller v-if="false" />
    <!-- <loading /> -->
    <div class="test">
      <div class="test1" v-transfer-dom v-if="show">11</div>
    </div>
    <el-button round @click="test">测试拼接</el-button>
  </div>
</template>

<script>
// @ is an alias to /src
import Roller from '@/components/roller.vue'
import TransferDom from '../directives/transfer-dom'
// import Loading from '@/components/loading.vue'

export default {
  name: 'Home',
  directives: { TransferDom },
  data() {
    return {
      show: false
    }
  },
  components: {
    // Loading
    Roller
  },
  methods: {
    test () {
      this.show = !this.show
    }
  },
}
</script>
<style lang="scss">
.test {
  position: relative;
  background-color: red;
  width: 100px;
  height: 100px;
  .test1 {
    position: absolute;
    width: 100px;
    height: 50px;
    top: 0;
    right: 0;
    background-color: green;
  }
}
</style>