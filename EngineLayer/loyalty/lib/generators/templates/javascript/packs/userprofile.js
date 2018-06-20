import Vue from 'vue/dist/vue.esm'
import Userprofile from '../userprofile.vue'

document.addEventListener('DOMContentLoaded', () => {
  let element = document.getElementById("userloyalty")
  let loyalty = JSON.parse(element.dataset.loyalty )
  let user = JSON.parse(element.dataset.user )

  const userprofile = new Vue({
    el: '#userloyalty',
    data: {
      loyalty: loyalty,
      user: user
    },
    template: '<Userprofile :loyalty="loyalty" :user="user"/>',
    components: { Userprofile }
  })
})
