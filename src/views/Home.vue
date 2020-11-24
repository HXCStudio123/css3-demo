<template>
  <div class="home">
    <!-- <roller v-if="false" /> -->
    <!-- <loading /> -->
    <div class="test">
      <div class="test1" ref="pop" v-if="true">132131231213</div>
    </div>
    <vnode ref="testp"></vnode>
    <el-button round @click="test">测试拼接</el-button>
  </div>
</template>

<script>
// @ is an alias to /src
import vnode from '@/components/vnode.vue'
import Vue from 'vue'
// import Loading from '@/components/loading.vue'

export default {
  name: 'Home',
  data () {
    return {
      show: false
    }
  },
  components: {
    // Loading
    vnode
  },
  methods: {
    test () {
      var z = document.createElement('p'); // is a node
      z.innerHTML = 'test satu dua tiga';
      this.show = !this.show
      this.popDom.node = (<div>test131231231231</div>)
      console.log(this.$refs.pop, this.$refs.testp.$el, this.popDom.node)

      document.body.appendChild(this.$refs.testp.$el)
    }
  },
  beforeCreate () {
    // 定义一个新节点对象，在对象内部描述他
    this.popDom = new Vue({
      data: { node: '12123' },
      // 使用render结构去描述真实dom
      render () {
        return '123131'
      }
      // 使用$mount挂载定义的popDom对象
    }).$mount()
  },
  beforeDestroy () {
    this.popDom && this.popDom.$destroy();
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