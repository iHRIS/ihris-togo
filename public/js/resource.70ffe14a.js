"use strict";(self["webpackChunkiHRIS_v5"]=self["webpackChunkiHRIS_v5"]||[]).push([[4105],{8412:function(e,t,i){i.r(t),i.d(t,{default:function(){return c}});var n,r=function(){var e=this,t=e.$createElement,i=e._self._c||t;return i("ihris-template",{key:e.$route.path},[e._v(" Loading... ")])},a=[],o=i(538),s={name:"fhir-page-search",data:function(){return{}},created:function(){this.getTemplate()},methods:{getTemplate:function(){fetch("/config/page/"+n+"/search").then((e=>{e.json().then((e=>{"OperationOutcome"===e.resourceType?o["default"].component("ihris-template",{name:"ihris-template",data:function(){return{issues:e.issue}},components:{"ihris-outcome":()=>i.e(2269).then(i.bind(i,5532))},template:'<div><ihris-outcome :issues="issues"></ihris-outcome></div>'}):o["default"].component("ihris-template",{name:"ihris-template",data:function(){return{fields:e.data.fields,addLink:e.data.addLink,terms:{}}},components:{"ihris-search":()=>Promise.all([i.e(3986),i.e(2200),i.e(3113),i.e(2242)]).then(i.bind(i,9169)),"ihris-search-code":()=>Promise.all([i.e(3986),i.e(2200),i.e(3113),i.e(2242)]).then(i.bind(i,5975)),"ihris-search-term":()=>Promise.all([i.e(3986),i.e(2200),i.e(3113),i.e(2242)]).then(i.bind(i,1841))},template:e.template,methods:{searchData:function(e,t){this.$set(this.terms,e,t)}}}),this.$forceUpdate()})).catch((e=>{console.log(e),o["default"].component("ihris-template",{template:"<div><h1>Error</h1><p>An error occurred trying to load this page</p>.</div>"}),this.$forceUpdate()}))})).catch((e=>{console.log(e),o["default"].component("ihris-template",{template:"<div><h1>Error</h1><p>An error occurred trying to load this page</p>.</div>"}),this.$forceUpdate()}))}},components:{},beforeCreate:function(){n=this.$route.params.page,o["default"].component("ihris-template",{template:"<div>Loading...</div>"})}},h=s,l=i(3736),d=(0,l.Z)(h,r,a,!1,null,null,null),c=d.exports},7652:function(e,t,i){i.r(t),i.d(t,{default:function(){return u}});var n,r,a,o=function(){var e=this,t=e.$createElement,i=e._self._c||t;return i("ihris-template",{key:e.$route.path},[e._v(" Loading... ")])},s=[],h=i(538),l={name:"fhir-page-view",data:function(){return{}},created:function(){this.getTemplate()},methods:{getTemplate:function(){fetch("/config/page/"+r).then((e=>{e.json().then((e=>{"OperationOutcome"===e.resourceType?h["default"].component("ihris-template",{name:"ihris-template",data:function(){return{issues:e.issue}},components:{"ihris-outcome":()=>i.e(2269).then(i.bind(i,5532))},template:'<div><ihris-outcome :issues="issues"></ihris-outcome></div>'}):h["default"].component("ihris-template",{name:"ihris-template",data:function(){return{fhirId:n,isEdit:a,sectionMenu:e.data.sectionMenu,subFields:e.data.subFields,columns:e.data.columns,actions:e.data.actions,links:e.data.links,mounts:e.data.mounts,constraints:e.data.constraints}},components:{"ihris-practitioner-intro":()=>Promise.all([i.e(3986),i.e(2200),i.e(3113),i.e(379),i.e(2657)]).then(i.bind(i,2765)),"ihris-resource":()=>Promise.all([i.e(3986),i.e(2200),i.e(3113),i.e(379),i.e(2657)]).then(i.bind(i,3308)),"ihris-codesystem":()=>i.e(902).then(i.bind(i,6462)),"ihris-section":()=>Promise.all([i.e(3986),i.e(2200),i.e(3113),i.e(379),i.e(2657)]).then(i.bind(i,6181)),"ihris-secondary":()=>Promise.all([i.e(3986),i.e(2200),i.e(3113),i.e(379),i.e(2657)]).then(i.bind(i,371)),"ihris-array":()=>Promise.all([i.e(3986),i.e(2200),i.e(3113),i.e(379),i.e(2657)]).then(i.bind(i,9486)),"fhir-extension":()=>Promise.all([i.e(3986),i.e(2200),i.e(3113),i.e(379),i.e(2657)]).then(i.bind(i,1355)),"fhir-reference":()=>Promise.all([i.e(3986),i.e(591),i.e(4556),i.e(4502),i.e(7293),i.e(8384)]).then(i.bind(i,4556)),"fhir-backbone-element":()=>Promise.all([i.e(3986),i.e(591),i.e(4556),i.e(4502),i.e(7293),i.e(8384)]).then(i.bind(i,5447)),"fhir-string":()=>Promise.all([i.e(3986),i.e(2200),i.e(3113),i.e(379),i.e(2657)]).then(i.bind(i,9147)),"fhir-attachment":()=>Promise.all([i.e(3986),i.e(591),i.e(4556),i.e(4502),i.e(7293),i.e(8384)]).then(i.bind(i,4502)),"fhir-human-name":()=>i.e(1364).then(i.bind(i,8667)),"fhir-code":()=>Promise.all([i.e(3986),i.e(2200),i.e(3113),i.e(379),i.e(2657)]).then(i.bind(i,2423)),"fhir-date":()=>Promise.all([i.e(3986),i.e(2200),i.e(3113),i.e(379),i.e(2657)]).then(i.bind(i,2397)),"fhir-date-time":()=>Promise.all([i.e(3986),i.e(2200),i.e(3113),i.e(379),i.e(2657)]).then(i.bind(i,415)),"fhir-period":()=>Promise.all([i.e(3986),i.e(591),i.e(4556),i.e(4502),i.e(7293),i.e(8384)]).then(i.bind(i,5481)),"fhir-identifier":()=>Promise.all([i.e(3986),i.e(2200),i.e(3113),i.e(379),i.e(2657)]).then(i.bind(i,3858)),"fhir-contact-point":()=>Promise.all([i.e(3986),i.e(591),i.e(4556),i.e(4502),i.e(7293),i.e(8384)]).then(i.bind(i,6010)),"fhir-address":()=>Promise.all([i.e(3986),i.e(591),i.e(4556),i.e(4502),i.e(7293),i.e(8384)]).then(i.bind(i,5537)),"fhir-codeable-concept":()=>Promise.all([i.e(3986),i.e(2200),i.e(3113),i.e(379),i.e(2657)]).then(i.bind(i,5334)),"fhir-uri":()=>Promise.all([i.e(3986),i.e(591),i.e(4556),i.e(4502),i.e(7293),i.e(8384)]).then(i.bind(i,6328)),"fhir-boolean":()=>Promise.all([i.e(3986),i.e(591),i.e(4556),i.e(4502),i.e(7293),i.e(8384)]).then(i.bind(i,8947)),"fhir-positive-int":()=>Promise.all([i.e(3986),i.e(591),i.e(4556),i.e(4502),i.e(7293),i.e(8384)]).then(i.bind(i,4055)),"fhir-unsigned-int":()=>Promise.all([i.e(3986),i.e(591),i.e(4556),i.e(4502),i.e(7293),i.e(8384)]).then(i.bind(i,8594)),"fhir-integer":()=>Promise.all([i.e(3986),i.e(591),i.e(4556),i.e(4502),i.e(7293),i.e(8384)]).then(i.bind(i,2989)),"fhir-coding":()=>Promise.all([i.e(3986),i.e(2200),i.e(3113),i.e(379),i.e(2657)]).then(i.bind(i,1819)),"fhir-money":()=>Promise.all([i.e(3986),i.e(591),i.e(4556),i.e(4502),i.e(7293),i.e(8384)]).then(i.bind(i,8856)),"fhir-decimal":()=>i.e(7305).then(i.bind(i,3769))},template:e.template,methods:{setEdit:function(e){this.isEdit=e}}}),this.$forceUpdate()})).catch((e=>{console.log(e),h["default"].component("ihris-template",{template:"<div><h1>Error</h1><p>An error occurred trying to load this page</p>.</div>"}),this.$forceUpdate()}))})).catch((e=>{console.log(e),h["default"].component("ihris-template",{template:"<div><h1>Error</h1><p>An error occurred trying to load this page</p>.</div>"}),this.$forceUpdate()}))}},beforeCreate:function(){n=this.$route.params.id,r=this.$route.params.page,a=this.$route.query.edit,h["default"].component("ihris-template",{template:"<div>Loading...</div>"})}},d=l,c=i(3736),m=(0,c.Z)(d,o,s,!1,null,null,null),u=m.exports}}]);
//# sourceMappingURL=resource.70ffe14a.js.map