<template>
  <div :style="'transform: scale('+ scale + ')'">
    <svg :height="size" :width="size" x-mlns="http://www.w3.org/200/svg">
      <defs>
        <linearGradient x1="1" y1="0" x2="0" y2="0" id="outGradient">
          <stop offset="0%" stop-color="#4D80F0" />
          <stop offset="100%" stop-color="#a7c0f8" />
        </linearGradient>
        <linearGradient x1="1" y1="0" x2="0" y2="0" id="innerGradient">
          <stop offset="0%" stop-color="#fff" />
          <stop offset="100%" stop-color="#a7c0f8" />
        </linearGradient>
      </defs>
      <circle
        :r="r"
        :cx="cx"
        :cy="cy"
        stroke="url('#innerGradient')"
        stroke-width="20"
        transform="rotate(-90)"
        transform-origin="center"
        fill="none"
        stroke-linecap="round"
        stroke-dasharray="0 1000000"
      >
        <animate
          to="56520,1000000"
          begin="0.005555555555555556s"
          dur="0.01s"
          from="314,1000000"
          attributeName="stroke-dasharray"
          fill="freeze"
        />
      </circle>
      <circle
        :r="r"
        :cx="cx"
        :cy="cy"
        stroke="url('#outGradient')"
        stroke-width="20"
        stroke-dasharray="314 1000000"
        fill="none"
        transform="rotate(-90)"
        transform-origin="center"
        stroke-linecap="round"
      />
    </svg>
  </div>
</template>

<script>
export default {
  data() {
    return {
      cx: 120,
      cy: 120,
      r: 100,
      size: 240
    }
  },

  props: {
    fontSize: {
      type: String,
      default: '18'
    }
  },

  computed: {
    scale () {
      return this.fontSize / this.size
    }
  },
}
</script>

<style>
</style>