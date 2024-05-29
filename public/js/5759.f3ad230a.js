"use strict";(self["webpackChunkiHRIS_v5"]=self["webpackChunkiHRIS_v5"]||[]).push([[5759],{1835:function(e,t,i){i.d(t,{Z:function(){return o}});i(6699);var s=i(3986),r=i(5978),l=i(6290),a=i(4589);const n={...s.l,offsetY:!0,offsetOverflow:!0,transition:!1};var o=s.Z.extend({name:"v-autocomplete",props:{allowOverflow:{type:Boolean,default:!0},autoSelectFirst:{type:Boolean,default:!1},filter:{type:Function,default:(e,t,i)=>i.toLocaleLowerCase().indexOf(t.toLocaleLowerCase())>-1},hideNoData:Boolean,menuProps:{type:s.Z.options.props.menuProps.type,default:()=>n},noFilter:Boolean,searchInput:{type:String}},data(){return{lazySearch:this.searchInput}},computed:{classes(){return{...s.Z.options.computed.classes.call(this),"v-autocomplete":!0,"v-autocomplete--is-selecting-index":this.selectedIndex>-1}},computedItems(){return this.filteredItems},selectedValues(){return this.selectedItems.map((e=>this.getValue(e)))},hasDisplayedItems(){return this.hideSelected?this.filteredItems.some((e=>!this.hasItem(e))):this.filteredItems.length>0},currentRange(){return null==this.selectedItem?0:String(this.getText(this.selectedItem)).length},filteredItems(){return!this.isSearching||this.noFilter||null==this.internalSearch?this.allItems:this.allItems.filter((e=>{const t=(0,a.qF)(e,this.itemText),i=null!=t?String(t):"";return this.filter(e,String(this.internalSearch),i)}))},internalSearch:{get(){return this.lazySearch},set(e){this.lazySearch!==e&&(this.lazySearch=e,this.$emit("update:search-input",e))}},isAnyValueAllowed(){return!1},isDirty(){return this.searchIsDirty||this.selectedItems.length>0},isSearching(){return this.multiple&&this.searchIsDirty||this.searchIsDirty&&this.internalSearch!==this.getText(this.selectedItem)},menuCanShow(){return!!this.isFocused&&(this.hasDisplayedItems||!this.hideNoData)},$_menuProps(){const e=s.Z.options.computed.$_menuProps.call(this);return e.contentClass=`v-autocomplete__content ${e.contentClass||""}`.trim(),{...n,...e}},searchIsDirty(){return null!=this.internalSearch&&""!==this.internalSearch},selectedItem(){return this.multiple?null:this.selectedItems.find((e=>this.valueComparator(this.getValue(e),this.getValue(this.internalValue))))},listData(){const e=s.Z.options.computed.listData.call(this);return e.props={...e.props,items:this.virtualizedItems,noFilter:this.noFilter||!this.isSearching||!this.filteredItems.length,searchInput:this.internalSearch},e}},watch:{filteredItems:"onFilteredItemsChanged",internalValue:"setSearch",isFocused(e){e?(document.addEventListener("copy",this.onCopy),this.$refs.input&&this.$refs.input.select()):(document.removeEventListener("copy",this.onCopy),this.blur(),this.updateSelf())},isMenuActive(e){!e&&this.hasSlot&&(this.lazySearch=null)},items(e,t){t&&t.length||!this.hideNoData||!this.isFocused||this.isMenuActive||!e.length||this.activateMenu()},searchInput(e){this.lazySearch=e},internalSearch:"onInternalSearchChanged",itemText:"updateSelf"},created(){this.setSearch()},destroyed(){document.removeEventListener("copy",this.onCopy)},methods:{onFilteredItemsChanged(e,t){if(e!==t){if(!this.autoSelectFirst){const i=t[this.$refs.menu.listIndex];i?this.setMenuIndex(e.findIndex((e=>e===i))):this.setMenuIndex(-1),this.$emit("update:list-index",this.$refs.menu.listIndex)}this.$nextTick((()=>{this.internalSearch&&(1===e.length||this.autoSelectFirst)&&(this.$refs.menu.getTiles(),this.autoSelectFirst&&e.length&&(this.setMenuIndex(0),this.$emit("update:list-index",this.$refs.menu.listIndex)))}))}},onInternalSearchChanged(){this.updateMenuDimensions()},updateMenuDimensions(){this.isMenuActive&&this.$refs.menu&&this.$refs.menu.updateDimensions()},changeSelectedIndex(e){this.searchIsDirty||(this.multiple&&e===a.Do.left?-1===this.selectedIndex?this.selectedIndex=this.selectedItems.length-1:this.selectedIndex--:this.multiple&&e===a.Do.right?this.selectedIndex>=this.selectedItems.length-1?this.selectedIndex=-1:this.selectedIndex++:e!==a.Do.backspace&&e!==a.Do["delete"]||this.deleteCurrentItem())},deleteCurrentItem(){const e=this.selectedIndex,t=this.selectedItems[e];if(!this.isInteractive||this.getDisabled(t))return;const i=this.selectedItems.length-1;if(-1===this.selectedIndex&&0!==i)return void(this.selectedIndex=i);const s=this.selectedItems.length,r=e!==s-1?e:e-1,l=this.selectedItems[r];l?this.selectItem(t):this.setValue(this.multiple?[]:null),this.selectedIndex=r},clearableCallback(){this.internalSearch=null,s.Z.options.methods.clearableCallback.call(this)},genInput(){const e=r.Z.options.methods.genInput.call(this);return e.data=(0,l.ZP)(e.data,{attrs:{"aria-activedescendant":(0,a.vO)(this.$refs.menu,"activeTile.id"),autocomplete:(0,a.vO)(e.data,"attrs.autocomplete","off")},domProps:{value:this.internalSearch}}),e},genInputSlot(){const e=s.Z.options.methods.genInputSlot.call(this);return e.data.attrs.role="combobox",e},genSelections(){return this.hasSlot||this.multiple?s.Z.options.methods.genSelections.call(this):[]},onClick(e){this.isInteractive&&(this.selectedIndex>-1?this.selectedIndex=-1:this.onFocus(),this.isAppendInner(e.target)||this.activateMenu())},onInput(e){if(this.selectedIndex>-1||!e.target)return;const t=e.target,i=t.value;t.value&&this.activateMenu(),this.multiple||""!==i||this.deleteCurrentItem(),this.internalSearch=i,this.badInput=t.validity&&t.validity.badInput},onKeyDown(e){const t=e.keyCode;!e.ctrlKey&&[a.Do.home,a.Do.end].includes(t)||s.Z.options.methods.onKeyDown.call(this,e),this.changeSelectedIndex(t)},onSpaceDown(e){},onTabDown(e){s.Z.options.methods.onTabDown.call(this,e),this.updateSelf()},onUpDown(e){e.preventDefault(),this.activateMenu()},selectItem(e){s.Z.options.methods.selectItem.call(this,e),this.setSearch()},setSelectedItems(){s.Z.options.methods.setSelectedItems.call(this),this.isFocused||this.setSearch()},setSearch(){this.$nextTick((()=>{this.multiple&&this.internalSearch&&this.isMenuActive||(this.internalSearch=!this.selectedItems.length||this.multiple||this.hasSlot?null:this.getText(this.selectedItem))}))},updateSelf(){(this.searchIsDirty||this.internalValue)&&(this.multiple||this.valueComparator(this.internalSearch,this.getValue(this.internalValue))||this.setSearch())},hasItem(e){return this.selectedValues.indexOf(this.getValue(e))>-1},onCopy(e){var t,i;if(-1===this.selectedIndex)return;const s=this.selectedItems[this.selectedIndex],r=this.getText(s);null==(t=e.clipboardData)||t.setData("text/plain",r),null==(i=e.clipboardData)||i.setData("text/vnd.vuetify.autocomplete.item+plain",r),e.preventDefault()}}})},1997:function(e,t,i){i.d(t,{x:function(){return r}});var s=i(1360);const r={data(){return{hide:!1,pathes:{}}},methods:{hideShowField(e){if(e){this.hide=!0;let t=e.split("+=");for(let e of t){let t=e.split("|"),i=t[0],r=t[1],l=t[2];this.pathes[i]||(this.pathes[i]={data:[]}),this.pathes[i].data.push({expectedVal:l,operator:r}),s.Y.$on(i,(e=>{this.pathes[i].selectedVal=e,this.hide=!0;for(let t in this.pathes){let e=this.pathes[t].selectedVal;for(let i of this.pathes[t].data){let t=i.expectedVal,s=i.operator;("="===s&&t==e||"!="===s&&t!=e||"exists"===s&&""!==e||">"===s&&t>e||"<"===s&&t<e||"<="===s&&t<=e||">="===s&&t>=e)&&(this.hide=!1)}}}))}}else this.hide=!1}}}},5759:function(e,t,i){i.r(t),i.d(t,{default:function(){return w}});var s=function(){var e=this,t=e.$createElement,i=e._self._c||t;return e.hide?e._e():i("ihris-element",{attrs:{edit:e.edit,loading:e.loading},scopedSlots:e._u([{key:"form",fn:function(){return["tree"==e.displayType?i("v-menu",{ref:"menu",attrs:{"close-on-content-click":!1,transition:"scale-transition","offset-y":"","min-width":"290px","max-height":"500px"},scopedSlots:e._u([{key:"activator",fn:function(t){var s=t.on;return[i("v-text-field",e._g({attrs:{label:e.$t("App.fhir-resources-texts."+e.display),readonly:"",outlined:"","hide-details":"auto",rules:e.rules,"error-messages":e.errors,loading:e.loading,dense:""},scopedSlots:e._u([{key:"label",fn:function(){return[e._v(e._s(e.$t("App.fhir-resources-texts."+e.display))+" "),e.required?i("span",{staticClass:"red--text font-weight-bold"},[e._v("*")]):e._e()]},proxy:!0}],null,!0),model:{value:e.displayValue,callback:function(t){e.displayValue=t},expression:"displayValue"}},s))]}}],null,!1,4007027273),model:{value:e.menu,callback:function(t){e.menu=t},expression:"menu"}},[e.disabled||e.preset&&"resource_add"===e.$route.name?e._e():i("v-card",[i("v-treeview",{attrs:{active:e.active,items:e.items,"load-children":e.fetchChildren,open:e.open,"item-disabled":"locked",activatable:"","multiple-active":!1,"selection-type":"independent",loading:e.loading},on:{"update:active":function(t){e.active=t},"update:open":function(t){e.open=t}},scopedSlots:e._u([{key:"label",fn:function(t){var i=t.item;return[e._v(" "+e._s(i.name)+" ")]}}],null,!1,40735413)})],1)],1):"reportSelect"===e.displayType?i("v-autocomplete",{attrs:{loading:e.loading,items:e.items,"cache-items":"",flat:"","hide-no-data":"","hide-details":"",label:e.display,outlined:"",dense:"",readonly:"",rules:e.rules,disabled:e.disabled||e.preset&&"resource_add"===e.$route.name,"error-messages":e.errors},on:{click:function(t){e.reportDialog=!0},change:function(t){e.errors=[]}},scopedSlots:e._u([{key:"label",fn:function(){return[e._v(e._s(e.$t("App.fhir-resources-texts."+e.display))+" "),e.required?i("span",{staticClass:"red--text font-weight-bold"},[e._v("*")]):e._e()]},proxy:!0}],null,!1,3110236810),model:{value:e.select,callback:function(t){e.select=t},expression:"select"}}):i("v-autocomplete",{attrs:{loading:e.loading,items:e.items,"search-input":e.search,"cache-items":"",flat:"","hide-no-data":"","hide-details":"",label:e.display,outlined:"",dense:"",placeholder:e.placeholder,rules:e.rules,disabled:e.disabled||e.preset&&"resource_add"===e.$route.name,"error-messages":e.errors},on:{"update:searchInput":function(t){e.search=t},"update:search-input":function(t){e.search=t},change:function(t){e.errors=[]}},scopedSlots:e._u([{key:"label",fn:function(){return[e._v(e._s(e.$t("App.fhir-resources-texts."+e.display))+" "),e.required?i("span",{staticClass:"red--text font-weight-bold"},[e._v("*")]):e._e()]},proxy:!0}],null,!1,3110236810),model:{value:e.select,callback:function(t){e.select=t},expression:"select"}}),i("v-dialog",{attrs:{transition:"dialog-bottom-transition","max-width":"1000"},model:{value:e.reportDialog,callback:function(t){e.reportDialog=t},expression:"reportDialog"}},[i("v-card",[i("v-toolbar",{attrs:{color:"primary",dark:""}},[e._v("Click row to select value")]),i("v-progress-linear",{attrs:{color:"secondary",indeterminate:e.loadingReportVal,rounded:"",height:"6"}}),e.loadingReportVal?e._e():i("v-card-text",[e.report?i("es-report",{attrs:{report:e.report,hideCheckboxes:!0,hideExport:!0,hideReportCustomization:!0,disableOpenResourcePage:!0},on:{rowSelected:e.reportRowSelected}}):e._e()],1),i("v-card-actions",{staticClass:"justify-end"},[i("v-btn",{attrs:{text:""},on:{click:function(t){e.reportDialog=!1}}},[e._v("Close")])],1)],1)],1)]},proxy:!0},{key:"header",fn:function(){return[e._v(" "+e._s(e.$t("App.fhir-resources-texts."+e.display))+" ")]},proxy:!0},{key:"value",fn:function(){return[e._v(" "+e._s(e.displayValue)+" ")]},proxy:!0}],null,!1,3536291416)})},r=[],l=(i(6699),i(2130)),a=i(1360),n=i(1997);const o=i(7673),h="http://hl7.org/fhir/StructureDefinition/";var c={name:"fhir-reference",props:["field","label","sliceName","targetProfile","targetResource","min","max","base-min","base-max","slotProps","path","sub-fields","edit","readOnlyIfSet","constraints","displayType","initialValue","overrideValue","displayCondition","searchParameter","initialProfile","allowedProfiles","pageTargetProfile","report","reportReturnValue","referenceDisplayPath","initial"],components:{IhrisElement:l.Z,"es-report":()=>i.e(8926).then(i.bind(i,6984))},mixins:[n.x],data:function(){return{hide:!1,reportDialog:!1,loadingReportVal:!1,source:{path:"",data:{}},value:{reference:""},qField:"valueReference",loading:!1,search:"",menu:!1,items:[],select:"",resource:"",awaitingSearch:!1,displayValue:"",preset:!1,disabled:!1,errors:[],lockWatch:!1,active:[],open:[],treeLookup:{},allAllowed:!0,pathes:{},shortnames:{}}},created:async function(){fetch("/config/getParameters?key=shortname:profile").then((e=>{e.json().then((e=>{this.shortnames=e}))})),this.hideShowField(this.displayCondition),this.setupData(),"preloaded"===this.displayType&&this.querySelections()},watch:{slotProps:{handler(){this.lockWatch||this.setupData()},deep:!0},search:function(e){"preloaded"!==this.displayType&&(this.awaitingSearch||setTimeout((()=>{e&&e.length>1&&this.querySelections(this.search),this.awaitingSearch=!1}),500),this.awaitingSearch=!0)},select:function(e){this.value.reference=e,this.getDisplay(),a.Y.$emit(this.path,e)},active:function(){this.active.length?(this.select=this.active[0],this.displayValue=this.treeLookup[this.select]):(this.select=void 0,this.displayValue=""),this.menu=!1}},methods:{reportRowSelected(e){let t;if(this.loadingReportVal=!0,this.reportReturnValue&&this.reportReturnValue.split(".").length>1){let i=this.reportReturnValue.split(".")[1];t=e[i]}else t=e.id;if(2!==t.split("/").length)for(let i in e){let s=e[i];s&&(s.toString().split("/").length>1&&s.toString().split("/")[1]==t&&(t=s))}this.referenceDisplayPath?fetch("/fhir/"+t).then((e=>{e.json().then((e=>{let i=this.$fhirpath.evaluate(e,this.referenceDisplayPath);Array.isArray(i)&&i.length&&"string"===typeof i[0]?(i=i.join(", "),this.items=[{value:t,text:i}],this.select=t,this.loadingReportVal=!1,this.reportDialog=!1):Array.isArray(i)&&i.length&&"object"===typeof i[0]&&this.$fhirutils.resourceLookup(i[0].reference).then((e=>{this.items=[{value:t,text:e}],this.select=t,this.loadingReportVal=!1,this.reportDialog=!1}))}))})):this.$fhirutils.resourceLookup(t).then((e=>{this.displayValue=e,this.items.push({text:e,value:t}),this.select=t,this.loadingReportVal=!1,this.reportDialog=!1}))},targetResourceMatchProfile(){let e=[];this.targetProfile&&(e=this.targetProfile.split(",")),this.pageTargetProfile&&(e=[this.pageTargetProfile]);let t=this.targetResource.split(","),i=!1;for(let s in e)if(e[s].replace(h,"")===t[s]){i=!0;break}return i},setupData:function(){let e=[];this.targetProfile&&(e=this.targetProfile.split(","));let t=[];if(this.targetResource&&(t=this.targetResource.split(",")),this.pageTargetProfile&&(e=[this.pageTargetProfile]),e.length>0&&t.length>0&&(this.targetResourceMatchProfile()?this.allAllowed=!0:this.allAllowed=!1,this.resource=t[0]),"tree"===this.displayType&&this.setupTreeItems(),this.slotProps&&this.slotProps.source)if(this.source={path:this.slotProps.source.path+"."+this.field,data:{}},this.slotProps.source.fromArray)this.source.data=this.slotProps.source.data;else{let e=this.$fhirutils.pathFieldExpression(this.field),t=this.$fhirpath.evaluate(this.slotProps.source.data,e);this.source.data=t[0]}if(this.initial&&!this.$route.params.id){let e=this.initial.reference.replace(/["']/g,"");this.source.data={reference:e}}this.source.data&&(this.preset=!0,this.select=this.source.data.reference,this.lockWatch=!0),this.disabled=this.readOnlyIfSet&&this.preset},setupTreeItems:async function(){let e=this.initialValue,t=this.searchParameter;this.overrideValue&&(e=this.overrideValue),this.loading=!0;let i={};t?e?i={searchparam:e}:e||(i[t+":missing"]=!0,this.initialProfile?i["_profile"]=this.initialProfile:this.allowedProfiles&&(i["_profile"]=this.allowedProfiles)):i=e?{partof:e}:{"partof:missing":!0},i._count=500;let s="/fhir/"+this.resource+"?_sort=name&"+o.stringify(i);this.items=[],this.addItems(s,this.items)},checkChildren:function(e){let t={};this.searchParameter?(t[this.searchParameter]=e.id,this.allowedProfiles&&(t["_profile"]=this.allowedProfiles)):t={partof:e.id},t["_summary"]="count";let i="/fhir/"+this.resource+"?_sort=name&"+o.stringify(t);return new Promise((t=>{fetch(i).then((s=>{s.ok?s.json().then((i=>{i.total&&i.total>0&&(e.children=[]),t()})).catch((e=>{console.log("failed to check children for",i,e),t()})):(console.log("failed to check children for",i,s.status),t())})).catch((e=>{console.log("failed to check children for",i,e),t()}))}))},addItems:function(e,t){fetch(e).then((i=>{i.ok?i.json().then((async e=>{let i=[];if(this.targetProfile&&(i=this.targetProfile.split(",")),this.pageTargetProfile&&(i=[this.pageTargetProfile]),e.entry&&e.entry.length>0)for(let s of e.entry){let e=!this.allAllowed&&!s.resource.meta.profile.find((e=>i.includes(e))),r=await this.resourceDisplayName(s.resource),l=[];s.resource.meta&&s.resource.meta.profile&&(l=s.resource.meta.profile);let a={profile:l,id:s.resource.resourceType+"/"+s.resource.id,name:r,locked:e};await this.checkChildren(a),this.treeLookup[a.id]=a.name,t.push(a)}if(e.link){let i=e.link.find((e=>"next"===e.relation));i?this.addItems(i.url,t):this.loading=!1}else this.loading=!1})).catch((t=>{console.log("Failed to add items for",e,t),this.loading=!1})):(console.log("//////////////////////////////"),console.log("Failed to add items for",e,i.status),this.loading=!1)})).catch((t=>{console.log("Failed to add items for",e,t),this.loading=!1}))},fetchChildren:function(e){let t={};this.searchParameter?(t[this.searchParameter]=e.id,this.allowedProfiles&&(t["_profile"]=this.allowedProfiles),t["_count"]=500):t={partof:e.id,_count:500};let i="/fhir/"+this.resource+"?"+o.stringify(t);return this.loading=!0,this.addItems(i,e.children),new Promise((e=>{let t=0;const i=()=>{!this.loading||t++>100?e():setTimeout(i,200)};i()}))},querySelections:function(e,t){if(this.loading=!0,!t){let i={};e&&(i["name:contains"]=e),i._count=200;let s=[];this.targetProfile&&(s=this.targetProfile.split(",")),this.pageTargetProfile&&(s=[this.pageTargetProfile]),s[0].endsWith(this.resource)||(i._profile=s),t="/fhir/"+this.resource,Object.keys(i).length>0&&(t+="?"+o.stringify(i))}fetch(t).then((i=>{i.ok?(t="",i.json().then((async i=>{let s=i.link&&i.link.find((e=>"next"===e.relation));if(s&&(t=s.url.replace("/fhir?","/fhir/"+this.resource+"?"),t=t.substring(t.indexOf("/fhir/"))),t||(this.items=[]),i.entry&&i.entry.length)for(let e of i.entry){let t=e.resource.resourceType+"/"+e.resource.id,i={value:t};i.text=await this.$fhirutils.resourceLookup(t),this.items.push(i)}t?this.querySelections(e,t):this.loading=!1}))):(console.log("Failed to retrieve",this.resource),this.loading=!1)}))},getDisplay:function(){(!this.edit||this.preset)&&this.value&&this.value.reference&&(this.loading=!0,this.referenceDisplayPath?fetch("/fhir/"+this.value.reference).then((async e=>{e.json().then((async e=>{let t=this.$fhirpath.evaluate(e,this.referenceDisplayPath);Array.isArray(t)&&t.length&&"object"===typeof t[0]?await this.$fhirutils.resourceLookup(t[0].reference).then((e=>{t=e})):Array.isArray(t)&&t.length&&(t=t.join(", ")),this.items=[{value:this.value.reference,text:t}],this.displayValue=t,this.loading=!1}))})):this.$fhirutils.resourceLookup(this.value.reference).then((e=>{this.displayValue=e,"tree"!==this.displayType&&this.items.push({text:e,value:this.value.reference}),this.loading=!1})))},resourceDisplayName(e){return new Promise((t=>{let i;if(e.meta&&e.meta.profile){let t=e.meta.profile[0],s=t.split(":");for(let e of s)i=i?i[e]:this.shortnames[e]}if(!i){let i=e.name;return i||(i=e.extension&&e.extension.find((e=>"http://ihris.org/fhir/StructureDefinition/ihris-basic-name"===e.url)),i&&(i=i.valueString)),t(i)}let s=i.format||"%s",r=[],l=i.order?i.order.split(","):Object.keys(i.path);if(i.fhirpath)r.push(this.$fhirpath.evaluate(e,i.fhirpath).join(i.join||" "));else if(i.paths)for(let n of l)n=n.trim(),r.push(this.$fhirpath.evaluate(e,i.paths[n].fhirpath).join(i.paths[n].join||" "));let a=[];for(let e of r)a.push(new Promise((t=>{2===e.split("/").length?fetch("/fhir/"+e).then((e=>{e.json().then((async e=>{let i=await this.resourceDisplayName(e);s=s.replace("%s",i),t()}))})):(s=s.replace("%s",e),t())})));Promise.all(a).then((()=>t(s)))}))}},computed:{placeholder:function(){return"preloaded"===this.displayType?"":this.$t("App.hardcoded-texts.Start typing for selection")},index:function(){return this.slotProps?this.slotProps.input:void 0},display:function(){return this.slotProps&&this.slotProps.input?this.slotProps.input.label:this.label},required:function(){return(this.index||0)<this.min},rules:function(){return this.required?[e=>!!e||this.display+" is required"]:[]}}},d=c,u=i(3736),p=i(3453),f=i.n(p),m=i(1835),g=i(3150),y=i(2371),v=i(7118),I=i(4497),x=i(1152),S=i(7003),P=i(5978),b=i(6656),D=i(8080),k=(0,u.Z)(d,s,r,!1,null,null,null),w=k.exports;f()(k,{VAutocomplete:m.Z,VBtn:g.Z,VCard:y.Z,VCardActions:v.h7,VCardText:v.ZB,VDialog:I.Z,VMenu:x.Z,VProgressLinear:S.Z,VTextField:P.Z,VToolbar:b.Z,VTreeview:D.Z})}}]);
//# sourceMappingURL=5759.f3ad230a.js.map