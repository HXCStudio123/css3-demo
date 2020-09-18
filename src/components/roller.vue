<template>
  <div>
    <ul
      class="roller"
      @touchstart="onTouchStart"
      @touchmove="onTouchMove"
      @touchend="onTouchEnd"
      @touchcancel="onTouchEnd"
    >
      <li v-for="i in 20" :key="i" :class="['li'+i]">{{i}}</li>
    </ul>
  </div>
</template>

<script>

export default {
  created () {
  },
  methods: {
    onTouchStart (event) {
      console.log('开始', event)
    },
    onTouchMove (event) {
      this.moving = true
      console.log('移动中', event)
    },
    onTouchEnd (event) {
      console.log('移动结束', event)
    },
    onTranstionEnd () {
      console.log('移动中', event)
    },
  },
}
</script>

<style lang="scss">
// 球心
.roller {
  width: 100px;
  height: 35px;
  margin: 150px auto;
  text-align: center;
  transform-style: preserve-3d;
  // animation: test 5s linear;
  // animation-iteration-count: infinite;
  transform: rotate3d(1, 0, 0, 18deg);
  position: relative;
}
.roller li {
  list-style: none;
  width: 100px;
  height: 35px;
  line-height: 35px;
  position: absolute;
  opacity: 0.7;
  // border: 1px solid rgba(0, 0, 0, 0.25);
  // box-sizing: border-box;
}

$len: 30;

@for $i from $len through 1 {
  .li#{$i} {
    $color: #34d19d;
    background-color: $color;
    backface-visibility: hidden;
    // 角度和半径
    transform: rotate3d(1, 0, 0, -18deg * $i) translateZ(110px);
  }
}
// @keyframes test {
//   from {
//     transform: rotateX(0);
//   }
//   to {
//     transform: rotateX(360deg);
//   }
// }
</style>