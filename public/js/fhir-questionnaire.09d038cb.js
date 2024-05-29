"use strict";(self["webpackChunkiHRIS_v5"]=self["webpackChunkiHRIS_v5"]||[]).push([[8926],{5098:function(t,e,i){i.d(e,{Z:function(){return d}});i(6699);var s=i(5648),r=i(8119),o=i(172),a=i(2936),n=i(8085),l=i(6591),h=i(3325),c=i(1824),d=(0,h.Z)(s.Z,a.Z,l.Z).extend({name:"v-alert",props:{border:{type:String,validator(t){return["top","right","bottom","left"].includes(t)}},closeLabel:{type:String,default:"$vuetify.close"},coloredBorder:Boolean,dense:Boolean,dismissible:Boolean,closeIcon:{type:String,default:"$cancel"},icon:{default:"",type:[Boolean,String],validator(t){return"string"===typeof t||!1===t}},outlined:Boolean,prominent:Boolean,text:Boolean,type:{type:String,validator(t){return["info","error","success","warning"].includes(t)}},value:{type:Boolean,default:!0}},computed:{__cachedBorder(){if(!this.border)return null;let t={staticClass:"v-alert__border",class:{[`v-alert__border--${this.border}`]:!0}};return this.coloredBorder&&(t=this.setBackgroundColor(this.computedColor,t),t.class["v-alert__border--has-color"]=!0),this.$createElement("div",t)},__cachedDismissible(){if(!this.dismissible)return null;const t=this.iconColor;return this.$createElement(r.Z,{staticClass:"v-alert__dismissible",props:{color:t,icon:!0,small:!0},attrs:{"aria-label":this.$vuetify.lang.t(this.closeLabel)},on:{click:()=>this.isActive=!1}},[this.$createElement(o.Z,{props:{color:t}},this.closeIcon)])},__cachedIcon(){return this.computedIcon?this.$createElement(o.Z,{staticClass:"v-alert__icon",props:{color:this.iconColor}},this.computedIcon):null},classes(){const t={...s.Z.options.computed.classes.call(this),"v-alert--border":Boolean(this.border),"v-alert--dense":this.dense,"v-alert--outlined":this.outlined,"v-alert--prominent":this.prominent,"v-alert--text":this.text};return this.border&&(t[`v-alert--border-${this.border}`]=!0),t},computedColor(){return this.color||this.type},computedIcon(){return!1!==this.icon&&("string"===typeof this.icon&&this.icon?this.icon:!!["error","info","success","warning"].includes(this.type)&&`$${this.type}`)},hasColoredIcon(){return this.hasText||Boolean(this.border)&&this.coloredBorder},hasText(){return this.text||this.outlined},iconColor(){return this.hasColoredIcon?this.computedColor:void 0},isDark(){return!(!this.type||this.coloredBorder||this.outlined)||n.Z.options.computed.isDark.call(this)}},created(){this.$attrs.hasOwnProperty("outline")&&(0,c.fK)("outline","outlined",this)},methods:{genWrapper(){const t=[this.$slots.prepend||this.__cachedIcon,this.genContent(),this.__cachedBorder,this.$slots.append,this.$scopedSlots.close?this.$scopedSlots.close({toggle:this.toggle}):this.__cachedDismissible],e={staticClass:"v-alert__wrapper"};return this.$createElement("div",e,t)},genContent(){return this.$createElement("div",{staticClass:"v-alert__content"},this.$slots.default)},genAlert(){let t={staticClass:"v-alert",attrs:{role:"alert"},on:this.listeners$,class:this.classes,style:this.styles,directives:[{name:"show",value:this.isActive}]};if(!this.coloredBorder){const e=this.hasText?this.setTextColor:this.setBackgroundColor;t=e(this.computedColor,t)}return this.$createElement("div",t,[this.genWrapper()])},toggle(){this.isActive=!this.isActive}},render(t){const e=this.genAlert();return this.transition?t("transition",{props:{name:this.transition,origin:this.origin,mode:this.mode}},[e]):e}})},3205:function(t,e,i){i.d(e,{Z:function(){return o}});var s=i(8085),r=i(3325),o=(0,r.Z)(s.Z).extend({name:"v-subheader",props:{inset:Boolean},render(t){return t("div",{staticClass:"v-subheader",class:{"v-subheader--inset":this.inset,...this.themeClasses},attrs:this.$attrs,on:this.$listeners},this.$slots.default)}})},6591:function(t,e,i){var s=i(538);e["Z"]=s["default"].extend({name:"transitionable",props:{mode:String,origin:String,transition:String}})},1997:function(t,e,i){i.d(e,{x:function(){return r}});var s=i(1746);const r={data(){return{hide:!1,pathes:{}}},methods:{hideShowField(t){if(t){this.hide=!0;let e=t.split("+=");for(let t of e){let e=t.split("|"),i=e[0],r=e[1],o=e[2];this.pathes[i]||(this.pathes[i]={data:[]}),this.pathes[i].data.push({expectedVal:o,operator:r}),s.Y.$on(i,(t=>{this.pathes[i].selectedVal=t,this.hide=!0;for(let e in this.pathes){let t=this.pathes[e].selectedVal;for(let i of this.pathes[e].data){let e=i.expectedVal,s=i.operator;("="===s&&e==t||"!="===s&&e!=t||"exists"===s&&""!==t||">"===s&&e>t||"<"===s&&e<t||"<="===s&&e<=t||">="===s&&e>=t)&&(this.hide=!1)}}}))}}else this.hide=!1}}}},216:function(t,e,i){i.r(e),i.d(e,{default:function(){return u}});var s=function(){var t=this,e=t.$createElement,i=t._self._c||e;return i("div",{staticClass:"ihris-section"},[i("v-alert",{attrs:{prominent:"",border:"top",type:t.alertType,"colored-border":"",elevation:"2"}},[t._v(" "+t._s(t.text)+" ")])],1)},r=[],o={name:"ihris-section",props:["type","text"],computed:{alertType(){return this.type?this.type:"info"}}},a=o,n=i(3736),l=i(3453),h=i.n(l),c=i(5098),d=(0,n.Z)(a,s,r,!1,null,null,null),u=d.exports;h()(d,{VAlert:c.Z})},6187:function(t,e,i){i.r(e),i.d(e,{default:function(){return u}});var s=function(){var t=this,e=t.$createElement,i=t._self._c||e;return i("div",{staticClass:"d-none"},[i("v-text-field",{attrs:{readonly:"","hide-details":"",dense:"",disabled:""},model:{value:t.hiddenValue,callback:function(e){t.hiddenValue=e},expression:"hiddenValue"}})],1)},r=[],o={name:"ihris-hidden",props:["label","path","hiddenType","hiddenValue"],data:function(){return{qField:"value"+this.hiddenType,value:this.hiddenValue}}},a=o,n=i(3736),l=i(3453),h=i.n(l),c=i(5978),d=(0,n.Z)(a,s,r,!1,null,null,null),u=d.exports;h()(d,{VTextField:c.Z})},5760:function(t,e,i){i.r(e),i.d(e,{default:function(){return m}});var s=function(){var t=this,e=t.$createElement,i=t._self._c||e;return t.hide?t._e():i("v-card",{staticClass:"mx-auto",attrs:{"max-width":"700",outlined:""}},[i("v-card-title",{staticClass:"primary white--text font-weight-bold"},[t._v(t._s(t.$t("App.fhir-resources-texts."+t.label)))]),i("v-divider"),t._l(t.errors,(function(e,s){return i("v-card-text",{key:s,staticClass:"error white--text font-weight-bold"},[t._v(t._s(e))])})),i("v-card-text",{staticClass:"my-3"},[t._t("default",null,{source:t.source})],2)],2)},r=[],o=i(1997),a={name:"ihris-questionnaire-group",props:["id","profile","sliceName","field","label","slotProps","path","constraints","limit","displayCondition"],mixins:[o.x],data:function(){return{isQuestionnaireGroup:!0,source:{path:"",data:[]},errors:[]}},created:function(){this.hideShowField(this.displayCondition),this.setupData()},watch:{slotProps:{handler(){this.setupData()},deep:!0}},methods:{setupData:function(){if(this.slotProps&&this.slotProps.source){if(this.source={path:this.slotProps.source.path+"."+this.field,data:{}},this.slotProps.source.fromArray)this.source.data=this.slotProps.source.data,this.source.fromArray=!0;else{let t;if(t=this.profile?this.profile:this.sliceName,t){let e=this.field.replace(/([^:]+):(.+)/,"$1.where(url='"+t+"')");this.source.data=this.$fhirpath.evaluate(this.slotProps.source.data,e),this.limit&&(this.source.data=this.$fhirpath.evaluate(this.source.data,this.limit))}else this.limit?this.source.data=this.$fhirpath.evaluate(this.slotProps.source.data,this.limit):this.source=this.slotProps.source}if(this.source.data.length>1){let t,e=this.path.split("[");for(let i of e){let e=i.split("]");Number.isInteger(parseInt(e[0]))&&(t=e[0])}(t||0==t)&&(this.source.data=this.source.data[t])}}}}},n=a,l=i(3736),h=i(3453),c=i.n(h),d=i(2371),u=i(7118),p=i(1418),f=(0,l.Z)(n,s,r,!1,null,null,null),m=f.exports;c()(f,{VCard:d.Z,VCardText:u.ZB,VCardTitle:u.EB,VDivider:p.Z})},8188:function(t,e,i){i.r(e),i.d(e,{default:function(){return f}});var s=function(){var t=this,e=t.$createElement,i=t._self._c||e;return i("div",{staticClass:"ihris-section pb-4",attrs:{id:"section-"+t.id}},[t.hide?t._e():i("v-card",{staticClass:"mx-auto",attrs:{"max-width":"700",outlined:""}},[i("v-card-title",{staticClass:" justify-center darken-1 primary white--text text-uppercase font-weight-bold"},[t._v(t._s(t.$t("App.fhir-resources-texts."+t.label)))]),t._l(t.errors,(function(e,s){return i("v-card-text",{key:s,staticClass:"error white--text font-weight-bold"},[t._v(t._s(e))])})),i("v-card-text",{staticClass:"my-3"},[t._t("default",null,{source:t.source})],2)],2)],1)},r=[],o=i(1997),a={name:"ihris-questionnaire-section",props:["id","profile","sliceName","field","slotProps","label","description","path","constraints","link-id","link-field","search-field","search-field-target","displayCondition"],mixins:[o.x],data:function(){return{isQuestionnaireGroup:!0,resourceId:"",source:{path:"",data:[]},errors:[]}},created:function(){this.hideShowField(this.displayCondition),this.setupData()},watch:{slotProps:{handler(){this.setupData()},deep:!0}},methods:{setupData:function(){if(this.searchField&&this.linkId){let t;if(2===this.searchField.split(":").length){let e=this.searchField.split(":")[0];t="fhir/"+e+"?_id="+this.linkId+"&_include="+this.searchField}else{t="/fhir/"+this.field;let e=[];this.profile&&e.push("_profile="+this.profile);let i="";this.searchFieldTarget&&(i=this.searchFieldTarget+"/"),i+=this.linkId,this.searchField?e.push(this.searchField+"="+i):e.push(this.linkField.substring(this.linkField.indexOf(".")+1)+"="+i),t+="?"+e.join("&")}t+="&_sort=-_id&_count=1",fetch(t).then((t=>{200===t.status&&t.json().then((async t=>{t.entry&&t.entry.length>0&&(this.resourceId=t.entry[0].resource.id,this.source={path:this.field,data:t.entry[0].resource})}))}))}else if(this.slotProps&&this.slotProps.source)if(this.source={path:this.slotProps.source.path+"."+this.field,data:{}},this.slotProps.source.fromArray)this.source.data=this.slotProps.source.data;else{let t;if(t=this.profile?this.profile:this.sliceName,t){let e=this.field.replace(/([^:]+):(.+)/,"$1.where(url='"+t+"')");this.source.data=this.$fhirpath.evaluate(this.slotProps.source.data,e),this.limit&&(this.source.data=this.$fhirpath.evaluate(this.source.data,this.limit))}else this.limit?this.source.data=this.$fhirpath.evaluate(this.slotProps.source.data,this.limit):this.source=this.slotProps.source}}}},n=a,l=i(3736),h=i(3453),c=i.n(h),d=i(2371),u=i(7118),p=(0,l.Z)(n,s,r,!1,null,null,null),f=p.exports;c()(p,{VCard:d.Z,VCardText:u.ZB,VCardTitle:u.EB})},2876:function(t,e,i){i.r(e),i.d(e,{default:function(){return I}});var s=function(){var t=this,e=t.$createElement,i=t._self._c||e;return i("v-container",{staticClass:"my-3"},[i("ihris-practitioner-intro"),i("v-form",{ref:"form",attrs:{id:"app"},model:{value:t.valid,callback:function(e){t.valid=e},expression:"valid"}},[t._t("default",null,{source:t.source}),i("v-overlay",{attrs:{value:t.overlay}},[i("v-progress-circular",{attrs:{color:"primary",indeterminate:"",size:"50"}}),i("v-btn",{attrs:{icon:""},on:{click:function(e){t.overlay=!1}}},[i("v-icon",[t._v("mdi-close")])],1)],1),i("v-navigation-drawer",{staticClass:"primary darken-1 white--text",staticStyle:{"z-index":"3"},attrs:{app:"",clipped:"",permanent:"",right:""}},[i("v-list",{staticClass:"white--text"},[i("v-list-item",[i("v-btn",{staticClass:"secondary",attrs:{dark:""},on:{click:function(e){return t.$router.go(-1)}}},[i("v-icon",{attrs:{light:""}},[t._v("mdi-close-circle-outline")]),i("span",[t._v(t._s(t.$t("App.hardcoded-texts.Cancel")))])],1),i("v-spacer"),t.valid?i("v-btn",{staticClass:"success darken-1",attrs:{disabled:!t.valid,dark:""},on:{click:function(e){return t.processFHIR()}}},[i("v-icon",{attrs:{light:""}},[t._v("mdi-content-save")]),i("span",[t._v(t._s(t.$t("App.hardcoded-texts.Save")))])],1):i("v-btn",{staticClass:"green",attrs:{dark:""},on:{click:function(e){return t.$refs.form.validate()}}},[i("v-icon",{attrs:{light:""}},[t._v("mdi-content-save")]),i("span",[t._v(t._s(t.$t("App.hardcoded-texts.Save")))])],1)],1),"/questionnaire/ihris-practitioner/practitioner"===t.$router.history.current.path?i("v-list-item",[i("v-btn",{staticClass:"primary",attrs:{dark:""},on:{click:function(e){return t.$router.push("/bulk-registration")}}},[i("v-icon",{attrs:{light:""}},[t._v("mdi-attachment")]),i("span",[t._v(t._s(t.$t("App.hardcoded-texts.uploadCSV")))])],1)],1):t._e(),"/questionnaire/ihris-practitioner/practitioner"===t.$router.history.current.path?i("v-list-item",[i("v-btn",{staticClass:"primary",attrs:{dark:""},on:{click:t.getCsvTemplate}},[i("v-icon",{attrs:{light:""}},[t._v("mdi-download")]),i("span",[t._v(t._s(t.$t("App.hardcoded-texts.getCSVTemplate")))])],1)],1):t._e(),i("v-divider",{attrs:{color:"white"}}),t.sectionMenu?i("v-subheader",{staticClass:"white--text"},[i("h2",[t._v(t._s(t.$t("App.hardcoded-texts.Sections")))])]):t._e(),t._l(t.sectionMenu,(function(e){return i("v-list-item",{key:e.id,class:"#section-"+e.id===t.path?"highlighted":"",attrs:{href:"#section-"+e.id}},[i("v-list-item-content",{staticClass:"white--text"},[i("v-list-item-title",{staticClass:"text-uppercase"},[i("h4",[t._v(t._s(t.$t("App.fhir-resources-texts."+e.title)))])]),i("v-list-item-subtitle",{staticClass:"white--text"},[t._v(t._s(t.$t("App.fhir-resources-texts."+e.desc))+" ")])],1)],1)}))],2)],1)],2)],1)},r=[],o=(i(6699),i(9669)),a=i.n(o);const n=i(7673);var l={name:"ihris-questionnaire",props:["id","url","title","description","purpose","section-menu","view-page","edit","constraints","field","profile","fhir-id"],data:function(){return{fhir:{},loading:!1,overlay:!1,isEdit:!1,valid:!0,advancedValid:!0,position:"",source:{path:"",data:{}},introSource:{path:"",data:{}},path:""}},watch:{$route:function(){this.path=this.$route.hash}},created:function(){this.fhirId&&(this.loading=!0,fetch("/fhir/"+this.field+"/"+this.fhirId).then((t=>{t.json().then((t=>{this.orig=t,this.source={data:t,path:this.field},this.setLinkText(),this.loading=!1})).catch((t=>{console.log(this.field,this.fhirId,t)}))})).catch((t=>{console.log(this.field,this.fhirId,t)})))},methods:{getLinkField:function(t){let e=this.$fhirpath.evaluate(this.source.data,t);return!!e&&e[0]},getLinkUrl:function(t){let e;if(t.field&&(e=this.getLinkField(t.field)),e){if(e.includes("/")){let t=e.split("/");e=t[1]}return t.url.replace("FIELD",e)}return t.url},setLinkText:function(){for(let t in this.links){let e=this.links[t];if(e.text)this.linktext[t]=e.text;else if(e.field){let i=this.getLinkField(e.field);i&&this.$fhirutils.lookup(i).then((e=>{this.$set(this.linktext,t,e)}))}}},logout(){this.loading=!0,fetch("/auth/logout").then((()=>{this.loading=!1,this.$store.commit("logout"),this.$store.commit("setMessage",{type:"success",text:"You change your password success fully."}),this.$router.push({path:"/"})}))},handleScroll(){this.hasScrolled=window.top.scrollY>=100,this.sectionMenu.map((t=>{let e=document.getElementById(`section-${t.id}`),i=e.offsetTop;pageYOffset>=i&&(this.path=`#section-${t.id}`)}))},getCsvTemplate(){a()({url:"/config/csvTemplate",method:"GET",responseType:"blob"}).then((t=>{let e=new Blob([t.data],{type:"application/vnd.ms-excel"}),i=document.createElement("a");i.href=window.URL.createObjectURL(e),i.download="User_bulk_registration_template.xlsx",i.click()}))},processFHIR:async function(){if(this.$refs.form.validate(),!this.valid)return;this.advancedValid=!0,this.overlay=!0,this.loading=!0;let t=[];this.fhirId&&t.push({profile:this.profile,id:this.fhirId});const e=t=>{let e=[];for(let i of t)for(let t of i.$children)if(t.isExtension)for(let i of t.$children)e.push(i);return e},i=async(s,r,o)=>{o||(o={});for(let n of r){let r=s,l={};if(n.isArray);else if(n.isQuestionnaireGroup){n.resourceId&&t.push({profile:n.profile,id:n.resourceId});let e={linkId:n.path,text:n.label,item:[]};r.push(e),r=e.item}else if(n.qField){let t;o.hasOwnProperty(n.path)?t=o[n.path]:(t={linkId:n.path,answer:[]},o[n.path]=t,r.push(t));let e={};if(e[n.qField]=n.value,t.answer.push(e),n.constraints){n.errors=[];try{this.advancedValid=this.advancedValid&&await this.$fhirutils.checkConstraints(n.constraints,this.constraints,n.value,n.errors)}catch(a){this.advancedValid=!1,n.errors.push("An unknown error occurred."),console.log(a)}}}if(n.$children)try{let t=[];if(n.isArray){let i=e(n.$children);i.length>0&&(t=i)}0===t.length&&(t=n.$children),await i(r,t,l)}catch(a){this.advancedValid=!1,console.log(a)}if(n.isQuestionnaireGroup&&n.constraints){n.errors=[];try{this.advancedValid=this.advancedValid&&await this.$fhirutils.checkConstraints(n.constraints,this.constraints,r,n.errors)}catch(a){this.advancedValid=!1,n.errors.push("An unknown error occurred."),console.log(a)}}}};this.fhir={resourceType:"QuestionnaireResponse",questionnaire:this.url,status:"completed",item:[]};try{await i(this.fhir.item,this.$children)}catch(s){this.advancedValid=!1,console.log(s)}if(!this.advancedValid)return this.overlay=!1,this.loading=!1,void this.$store.commit("setMessage",{type:"error",text:"There were errors on the form."});this.fhir.item.find((t=>"Practitioner:communication"===t.linkId))&&this.fhir.item.find((t=>"Practitioner:communication"===t.linkId)).item.map(((t,e)=>{t.linkId=`Practitioner:communication[${e}]`,t.item[0].linkId=`Practitioner.communication[${e}]`})),this.$route.query.editing=!1,t.length>0&&(this.$route.query.editingResources=JSON.stringify(t),this.$route.query.editing=!0),fetch("/fhir/QuestionnaireResponse?"+n.stringify(this.$route.query),{method:"POST",headers:{"Content-Type":"application/fhir+json"},redirect:"manual",body:JSON.stringify(this.fhir)}).then((t=>{201===t.status?(t.json().then((t=>{let e;if(this.overlay=!1,this.loading=!1,this.viewPage){if(t.meta.tag){let i=t.meta.tag.find((t=>"http://ihris.org/fhir/tags/resource"===t.system));i&&i.code&&(e=i.code)}if(!e&&t.subject&&t.subject.reference&&(e=t.subject.reference),e){let i=e.split("/");i=i[1]?i[1]:e,"http://ihris.org/fhir/Questionnaire/ihris-change-password"===t.questionnaire&&this.logout(),this.$router.push({name:"resource_view",params:{page:this.viewPage,id:i}})}}e||this.$router.push({name:"home"})})),this.$store.commit("setMessage",{type:"success",text:"Added successfully."})):(this.overlay=!1,this.loading=!1,t.json().then((t=>{let e;if("OperationOutcome"==t.resourceType)try{e=Array.from(new Set(t.issue.map((t=>t.diagnostics)))).join(", ")}catch(s){console.log("Unable to retrieve errors from ",t)}else e=t.message?t.message:"Unknown";this.$store.commit("setMessage",{type:"error",text:"An error occurred trying to save this record: "+e})})).catch((t=>{this.$store.commit("setMessage",{type:"error",text:"An unknown error occurred trying to save this record."}),console.log("Error on retrieving error status",t)})))})).catch((t=>{console.log(t),this.overlay=!1,this.loading=!1,this.$store.commit("setMessage",{type:"error",text:"Failed to update data."})}))}},components:{"ihris-practitioner-intro":()=>Promise.all([i.e(3986),i.e(2200),i.e(3113),i.e(5870),i.e(2657)]).then(i.bind(i,8436))}},h=l,c=i(3736),d=i(3453),u=i.n(d),p=i(3150),f=i(4228),m=i(1418),v=i(6232),g=i(6428),y=i(6816),$=i(7620),_=i(4562),x=i(5132),b=i(1058),C=i(624),k=i(9762),w=i(3205),V=(0,c.Z)(h,s,r,!1,null,null,null),I=V.exports;u()(V,{VBtn:p.Z,VContainer:f.Z,VDivider:m.Z,VForm:v.Z,VIcon:g.Z,VList:y.Z,VListItem:$.Z,VListItemContent:_.km,VListItemSubtitle:_.oZ,VListItemTitle:_.V9,VNavigationDrawer:x.Z,VOverlay:b.Z,VProgressCircular:C.Z,VSpacer:k.Z,VSubheader:w.Z})},6984:function(t,e,i){i.r(e),i.d(e,{default:function(){return d}});var s,r=function(){var t=this,e=t.$createElement,i=t._self._c||e;return i("ihris-template",{key:t.$route.path},[t._v(" Loading... ")])},o=[],a=i(538),n={name:"fhir-report",props:{report:{type:String,default:""},terms:{type:Object,default:function(){return{}}},termsConditions:{type:Object,default:function(){return{}}},hideFilters:{type:Boolean,default:!1},hideCheckboxes:{type:Boolean,default:!1},hideLabel:{type:Boolean,default:!1},hideExport:{type:Boolean,default:!1},hideReportCustomization:{type:Boolean,default:!1},disableOpenResourcePage:{type:Boolean,default:!1}},data:function(){return{}},created:function(){this.$route.params&&this.$route.params.report?s=this.$route.params.report:this.report&&(s=this.report),this.getTemplate()},methods:{getTemplate:function(){fetch("/config/report/es/"+s).then((t=>{t.json().then((t=>{let e=this.terms,s=this.termsConditions,r=this.hideFilters,o=this.hideCheckboxes,n=this.hideLabel,l=this.hideExport,h=this.hideReportCustomization,c=this.disableOpenResourcePage,d=t=>{this.$emit("rowSelected",t)};a["default"].component("ihris-template",{name:"ihris-template",data:function(){return{reportData:t.reportData,dataURL:t.dataURL,terms:e,termsConditions:s,hideLabel:n,hideFilters:r,hideCheckboxes:o,hideExport:l,hideReportCustomization:h,disableOpenResourcePage:c}},components:{"ihris-es-report":()=>Promise.all([i.e(3986),i.e(2200),i.e(3113),i.e(5844)]).then(i.bind(i,4430)),"ihris-es-search-term":()=>Promise.all([i.e(3986),i.e(1276)]).then(i.bind(i,2509)),"ihris-sql-report":()=>Promise.all([i.e(3986),i.e(2200),i.e(3113),i.e(5844)]).then(i.bind(i,825)),"ihris-sql-search-term":()=>Promise.all([i.e(3986),i.e(1276)]).then(i.bind(i,3709))},template:t.reportTemplate,methods:{rowSelected(t){d(t)},searchData:function(t,e,i){this.$set(this.terms,t,e),(this.terms[t]&&"object"===typeof this.terms[t]&&this.terms[t].length>0||"string"===typeof this.terms[t]&&""!==this.terms[t])&&this.$set(this.termsConditions,t,i)}}}),this.$forceUpdate()})).catch((t=>{console.log("error"),console.log(t),a["default"].component("ihris-template",{template:"<div><h1>Error</h1><p>An error occurred trying to load this report</p>.</div>"}),this.$forceUpdate()}))})).catch((t=>{console.log(t),a["default"].component("ihris-template",{template:"<div><h1>Error</h1><p>An error occurred trying to load this report</p>.</div>"}),this.$forceUpdate()}))}},components:{},beforeCreate:function(){a["default"].component("ihris-template",{template:"<div>Loading...</div>"})}},l=n,h=i(3736),c=(0,h.Z)(l,r,o,!1,null,null,null),d=c.exports}}]);
//# sourceMappingURL=fhir-questionnaire.09d038cb.js.map