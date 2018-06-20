import Vue from 'vue/dist/vue.esm'
import Userprofile from '../userprofile.vue'

document.addEventListener('DOMContentLoaded', () => {
  let element = document.getElementById("userloyalty")
  let loyalty = JSON.parse(element.dataset.loyalty )

  const userprofile = new Vue({
    el: '#userloyalty',
    data: {
      loyalty: loyalty
    },
    template: '<Userprofile :loyalty="loyalty"/>',
    components: { Userprofile }
  })
})
