import VueCompositionApi from '@vue/composition-api'

import Vue from "vue";
Vue.use(VueCompositionApi)

import VueRouter from "vue-router";
import routes from "./routes/routes";
import store from "./store/store";
require('./bootstrap');

Vue.use(VueRouter);
// import  Editor  from 'vue-editor-js/src/index'
// import { ref, reactive } from '@vue/composition-api'
// Vue.use(Editor);

Vue.component('App', require('./ap2p').default);
// const { ref, reactive } = VueCompositionAPI
//Helpers
Vue.prototype.pluralize = (word, count) => {
    return parseInt(count) > 1 ? word + "s" : word;
};

Vue.prototype.setDocumentTitle = function (title = "SPA Blog") {
      document.title = title;
};

const app = new Vue({
    el: '#app',
    router: new VueRouter({ routes, mode: "history" }),
    store
});
