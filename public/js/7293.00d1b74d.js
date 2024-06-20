"use strict";(self["webpackChunkiHRIS_v5"]=self["webpackChunkiHRIS_v5"]||[]).push([[7293,333],{2245:function(){},1328:function(t,e,s){s.d(e,{Z:function(){return u}});s(2245);var i=s(7764),l=s(8230),r=s(5500),a=s(5827),n=s(624),o=s(4589),u=i.Z.extend({name:"v-switch",directives:{Touch:r.Z},props:{inset:Boolean,loading:{type:[Boolean,String],default:!1},flat:{type:Boolean,default:!1}},computed:{classes(){return{...l.Z.options.computed.classes.call(this),"v-input--selection-controls v-input--switch":!0,"v-input--switch--flat":this.flat,"v-input--switch--inset":this.inset}},attrs(){return{"aria-checked":String(this.isActive),"aria-disabled":String(this.isDisabled),role:"switch"}},validationState(){return this.hasError&&this.shouldValidate?"error":this.hasSuccess?"success":null!==this.hasColor?this.computedColor:void 0},switchData(){return this.setTextColor(this.loading?void 0:this.validationState,{class:this.themeClasses})}},methods:{genDefaultSlot(){return[this.genSwitch(),this.genLabel()]},genSwitch(){const{title:t,...e}=this.attrs$;return this.$createElement("div",{staticClass:"v-input--selection-controls__input"},[this.genInput("checkbox",{...this.attrs,...e}),this.genRipple(this.setTextColor(this.validationState,{directives:[{name:"touch",value:{left:this.onSwipeLeft,right:this.onSwipeRight}}]})),this.$createElement("div",{staticClass:"v-input--switch__track",...this.switchData}),this.$createElement("div",{staticClass:"v-input--switch__thumb",...this.switchData},[this.genProgress()])])},genProgress(){return this.$createElement(a.b0,{},[!1===this.loading?null:this.$slots.progress||this.$createElement(n.Z,{props:{color:!0===this.loading||""===this.loading?this.color||"primary":this.loading,size:16,width:2,indeterminate:!0}})])},onSwipeLeft(){this.isActive&&this.onChange()},onSwipeRight(){this.isActive||this.onChange()},onKeydown(t){(t.keyCode===o.Do.left&&this.isActive||t.keyCode===o.Do.right&&!this.isActive)&&this.onChange()}}})},9155:function(t,e,s){var i=s(6286),l=s(538);e["Z"]=l["default"].extend({name:"rippleable",directives:{ripple:i.Z},props:{ripple:{type:[Boolean,Object],default:!0}},methods:{genRipple(t={}){return this.ripple?(t.staticClass="v-input--selection-controls__ripple",t.directives=t.directives||[],t.directives.push({name:"ripple",value:{center:!0}}),this.$createElement("div",t)):null}}})},7764:function(t,e,s){s.d(e,{X:function(){return n}});var i=s(8230),l=s(9155),r=s(4419),a=s(3325);function n(t){t.preventDefault()}e["Z"]=(0,a.Z)(i.Z,l.Z,r.Z).extend({name:"selectable",model:{prop:"inputValue",event:"change"},props:{id:String,inputValue:null,falseValue:null,trueValue:null,multiple:{type:Boolean,default:null},label:String},data(){return{hasColor:this.inputValue,lazyValue:this.inputValue}},computed:{computedColor(){if(this.isActive)return this.color?this.color:this.isDark&&!this.appIsDark?"white":"primary"},isMultiple(){return!0===this.multiple||null===this.multiple&&Array.isArray(this.internalValue)},isActive(){const t=this.value,e=this.internalValue;return this.isMultiple?!!Array.isArray(e)&&e.some((e=>this.valueComparator(e,t))):void 0===this.trueValue||void 0===this.falseValue?t?this.valueComparator(t,e):Boolean(e):this.valueComparator(e,this.trueValue)},isDirty(){return this.isActive},rippleState(){return this.isDisabled||this.validationState?this.validationState:void 0}},watch:{inputValue(t){this.lazyValue=t,this.hasColor=t}},methods:{genLabel(){const t=i.Z.options.methods.genLabel.call(this);return t?(t.data.on={click:n},t):t},genInput(t,e){return this.$createElement("input",{attrs:Object.assign({"aria-checked":this.isActive.toString(),disabled:this.isDisabled,id:this.computedId,role:t,type:t},e),domProps:{value:this.value,checked:this.isActive},on:{blur:this.onBlur,change:this.onChange,focus:this.onFocus,keydown:this.onKeydown,click:n},ref:"input"})},onClick(t){this.onChange(),this.$emit("click",t)},onChange(){if(!this.isInteractive)return;const t=this.value;let e=this.internalValue;if(this.isMultiple){Array.isArray(e)||(e=[]);const s=e.length;e=e.filter((e=>!this.valueComparator(e,t))),e.length===s&&e.push(t)}else e=void 0!==this.trueValue&&void 0!==this.falseValue?this.valueComparator(e,this.trueValue)?this.falseValue:this.trueValue:t?this.valueComparator(e,t)?null:t:!e;this.validate(!0,e),this.internalValue=e,this.hasColor=e},onFocus(t){this.isFocused=!0,this.$emit("focus",t)},onBlur(t){this.isFocused=!1,this.$emit("blur",t)},onKeydown(t){}}})},5537:function(t,e,s){s.r(e),s.d(e,{default:function(){return h}});var i=function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("ihris-complex-card",{attrs:{complexField:t.field,slotProps:t.slotProps,label:t.label,errors:t.errors},scopedSlots:t._u([{key:"default",fn:function(e){return[t._t("default",null,{source:e.source})]}}],null,!0)})},l=[],r=s(6972),a={name:"fhir-address",props:["field","slotProps","sliceName","min","max","base-min","base-max","label","path","edit","constraints"],data:function(){return{errors:[]}},components:{IhrisComplexCard:r.Z}},n=a,o=s(3736),u=(0,o.Z)(n,i,l,!1,null,null,null),h=u.exports},5447:function(t,e,s){s.r(e),s.d(e,{default:function(){return h}});var i=function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("ihris-complex-card",{attrs:{complexField:t.field,slotProps:t.slotProps,label:t.label,errors:t.errors},scopedSlots:t._u([{key:"default",fn:function(e){return[t._t("default",null,{source:e.source})]}}],null,!0)})},l=[],r=s(6972),a={name:"fhir-backbone-element",props:["field","slotProps","sliceName","min","max","base-min","base-max","label","path","edit","constraints"],data:function(){return{errors:[]}},components:{IhrisComplexCard:r.Z}},n=a,o=s(3736),u=(0,o.Z)(n,i,l,!1,null,null,null),h=u.exports},8947:function(t,e,s){s.r(e),s.d(e,{default:function(){return m}});var i=function(){var t=this,e=t.$createElement,s=t._self._c||e;return t.hide?t._e():s("ihris-element",{attrs:{edit:t.edit,loading:!1},scopedSlots:t._u([{key:"form",fn:function(){return[s("v-switch",{attrs:{label:t.display+": "+t.value.toString(),disabled:t.disabled,rules:t.rules,dense:"","error-messages":t.errors},on:{change:function(e){t.errors=[]}},scopedSlots:t._u([{key:"label",fn:function(){return[t._v(t._s(t.$t("App.fhir-resources-texts."+t.display))+": "+t._s(t.$t("App.hardcoded-texts."+t.value.toString()))+" "),t.required?s("span",{staticClass:"red--text font-weight-bold"},[t._v("*")]):t._e()]},proxy:!0}],null,!1,3512769424),model:{value:t.value,callback:function(e){t.value=e},expression:"value"}})]},proxy:!0},{key:"header",fn:function(){return[t._v(" "+t._s(t.$t("App.fhir-resources-texts."+t.display))+" ")]},proxy:!0},{key:"value",fn:function(){return[t._v(" "+t._s(t.$t("App.hardcoded-texts."+t.value))+" ")]},proxy:!0}],null,!1,4198086038)})},l=[],r=s(2130),a=s(8247),n=s(1997),o={name:"fhir-boolean",props:["field","label","min","max","id","path","slotProps","sliceName","base-min","base-max","edit","readOnlyIfSet","constraints","displayCondition","enableBehavior","initial"],components:{IhrisElement:r.Z},mixins:[n.x],data:function(){return{source:{path:"",data:{}},value:!0,qField:"valueBoolean",disabled:!1,errors:[],lockWatch:!1}},created:function(){"boolean"!==typeof this.initial||this.$route.params.id||(this.value=this.initial),this.hideShowField(this.displayCondition,this.enableBehavior),this.setupData()},watch:{slotProps:{handler(){this.lockWatch||this.setupData()},deep:!0},value(t){a.Y.$emit(this.path,t)}},methods:{setupData(){if(this.slotProps&&this.slotProps.source){if(this.source={path:this.slotProps.source.path+"."+this.field,data:{}},this.slotProps.source.fromArray)this.source.data=this.slotProps.source.data,this.value=this.source.data,this.lockWatch=!0;else{let t=this.$fhirutils.pathFieldExpression(this.field);this.source.data=this.$fhirpath.evaluate(this.slotProps.source.data,t);let e=null;if(1==this.source.data.length)e=this.source.data[0];else{let t,s=this.path.split("[");for(let e of s){let s=e.split("]");Number.isInteger(parseInt(s[0]))&&(t=s[0])}(t||0==t)&&(e=this.source.data[t])}null!=e&&(this.value=e,this.lockWatch=!0)}this.disabled=this.readOnlyIfSet&&!!this.value}}},computed:{index:function(){return this.slotProps&&this.slotProps.input?this.slotProps.input.index:void 0},display:function(){return this.slotProps&&this.slotProps.input?this.slotProps.input.label:this.label},required:function(){return(this.index||0)<this.min},rules:function(){return[]}}},u=o,h=s(3736),c=s(3453),d=s.n(c),p=s(1328),f=(0,h.Z)(u,i,l,!1,null,null,null),m=f.exports;d()(f,{VSwitch:p.Z})},6010:function(t,e,s){s.r(e),s.d(e,{default:function(){return h}});var i=function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("ihris-complex-card",{attrs:{complexField:t.field,slotProps:t.slotProps,label:t.label,errors:t.errors},scopedSlots:t._u([{key:"default",fn:function(e){return[t._t("default",null,{source:e.source})]}}],null,!0)})},l=[],r=s(6972),a={name:"fhir-contact-point",props:["field","slotProps","sliceName","min","max","base-min","base-max","label","path","edit","constraints"],data:function(){return{errors:[]}},components:{IhrisComplexCard:r.Z}},n=a,o=s(3736),u=(0,o.Z)(n,i,l,!1,null,null,null),h=u.exports},2989:function(t,e,s){s.r(e),s.d(e,{default:function(){return m}});var i=function(){var t=this,e=t.$createElement,s=t._self._c||e;return t.hide?t._e():s("ihris-element",{attrs:{edit:t.edit,loading:!1},scopedSlots:t._u([{key:"form",fn:function(){return[s("v-text-field",{attrs:{"error-messages":t.errors,label:t.display,disabled:t.disabled,name:t.field,outlined:"","hide-details":"auto",rules:t.rules,dense:""},on:{change:function(e){t.errors=[]}},scopedSlots:t._u([{key:"label",fn:function(){return[t._v(t._s(t.$t("App.fhir-resources-texts."+t.display))+" "+t._s(t.displayNumber)+" "),t.required?s("span",{staticClass:"red--text font-weight-bold"},[t._v("*")]):t._e()]},proxy:!0}],null,!1,976301406),model:{value:t.value,callback:function(e){t.value=t._n(e)},expression:"value"}})]},proxy:!0},{key:"header",fn:function(){return[t._v(" "+t._s(t.$t("App.fhir-resources-texts."+t.display))+" ")]},proxy:!0},{key:"value",fn:function(){return[t._v(" "+t._s(t.value)+" ")]},proxy:!0}],null,!1,590559606)})},l=[],r=s(2130),a=s(8247),n=s(1997),o={name:"fhir-integer",props:["field","label","min","max","id","path","slotProps","sliceName","base-min","base-max","edit","readOnlyIfSet","constraints","displayCondition","enableBehavior","initial"],components:{IhrisElement:r.Z},mixins:[n.x],data:function(){return{source:{path:"",data:{}},value:"",hiddenVal:"",qField:"valueInteger",disabled:!1,errors:[],lockWatch:!1}},created:function(){this.initial&&!this.$route.params.id&&(this.value=this.initial),this.hideShowField(this.displayCondition,this.enableBehavior),this.setupData()},watch:{hide(t){t?(this.hiddenVal=this.value,this.value=""):this.hiddenVal&&(this.value=this.hiddenVal)},slotProps:{handler(){this.lockWatch||this.setupData()},deep:!0},value(t){a.Y.$emit(this.path,t)}},methods:{setupData(){if(this.slotProps&&this.slotProps.source){if(this.source={path:this.slotProps.source.path+"."+this.field,data:{}},this.slotProps.source.fromArray)this.source.data=this.slotProps.source.data,this.value=this.source.data,this.lockWatch=!0;else{let t=this.$fhirutils.pathFieldExpression(this.field);this.source.data=this.$fhirpath.evaluate(this.slotProps.source.data,t);let e=null;if(1==this.source.data.length)e=this.source.data[0];else{let t,s=this.path.split("[");for(let e of s){let s=e.split("]");Number.isInteger(parseInt(s[0]))&&(t=s[0])}(t||0==t)&&(e=this.source.data[t])}null!=e&&(this.value=e,this.lockWatch=!0)}this.disabled=this.readOnlyIfSet&&!!this.value}}},computed:{index:function(){return this.slotProps?this.slotProps.input:void 0},display:function(){return this.label},displayNumber:function(){return this.slotProps&&this.slotProps.input?" ("+(parseInt(this.slotProps.input.index)+1)+")":""},required:function(){return(this.index||0)<this.min},rules:function(){const t=t=>{let e=Number(t);return Number.isInteger(e)||this.display+" must be an integer"};let e=[t];return this.required&&e.push((t=>0===t||!!t||this.display+" is required")),e}}},u=o,h=s(3736),c=s(3453),d=s.n(c),p=s(5978),f=(0,h.Z)(u,i,l,!1,null,null,null),m=f.exports;d()(f,{VTextField:p.Z})}}]);
//# sourceMappingURL=7293.00d1b74d.js.map