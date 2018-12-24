import Vue from "vue/dist/vue.esm"
import VueResource from "vue-resource"

Vue.use(VueResource)

document.addEventListener("turbolinks:load", () => {
  Vue.http.header.common['X-CSRF-Token'] = document.querySelector("meta[name='csrf-token']").getAttribute('content')

  const form = document.getElementById("team-form")
});
