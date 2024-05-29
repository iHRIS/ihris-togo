"use strict";(self["webpackChunkiHRIS_v5"]=self["webpackChunkiHRIS_v5"]||[]).push([[5548],{5548:function(e,t,s){s.r(t),s.d(t,{default:function(){return P}});var a=function(){var e=this,t=e.$createElement,s=e._self._c||t;return s("v-container",{attrs:{"grid-list-xs":""}},[s("v-overlay",{attrs:{value:e.overlay}},[s("v-progress-circular",{attrs:{color:"primary",indeterminate:"",size:"50"}}),s("v-btn",{attrs:{icon:""},on:{click:function(t){e.overlay=!1}}},[s("v-icon",[e._v("mdi-close")])],1)],1),s("v-card",{staticClass:"mx-auto",attrs:{"max-width":"700",outlined:""}},[s("v-card-title",{staticClass:"primary darken-1 white--text text-uppercase font-weight-bold"},[e._v(" Change Password ")]),s("v-card-text",{staticClass:"my-3"},[s("v-container",[s("v-text-field",{attrs:{label:"Current Password",outlined:"","hide-details":"auto",type:e.showCurrentPassword?"text":"password","append-icon":e.showCurrentPassword?"mdi-eye":"mdi-eye-off",dense:""},on:{"click:append":function(t){e.showCurrentPassword=!e.showCurrentPassword}},model:{value:e.current,callback:function(t){e.current=t},expression:"current"}})],1),s("v-container",[s("v-text-field",{attrs:{label:"New Password",outlined:"","hide-details":"auto",type:e.showNew1Password?"text":"password","append-icon":e.showNew1Password?"mdi-eye":"mdi-eye-off",dense:""},on:{"click:append":function(t){e.showNew1Password=!e.showNew1Password}},model:{value:e.new1,callback:function(t){e.new1=t},expression:"new1"}})],1),s("v-container",[s("v-text-field",{attrs:{label:"Confirm New Password",outlined:"","hide-details":"auto",type:e.showNew2Password?"text":"password","append-icon":e.showNew2Password?"mdi-eye":"mdi-eye-off",dense:""},on:{"click:append":function(t){e.showNew2Password=!e.showNew2Password}},model:{value:e.new2,callback:function(t){e.new2=t},expression:"new2"}})],1)],1),s("v-card-actions",[s("v-spacer"),s("v-btn",{attrs:{color:"success",disabled:e.new1!=e.new2||!e.current||!e.new1||!e.new2},on:{click:e.change}},[e._v("Change")])],1)],1),s("v-snackbar",{staticClass:"align-content-lg-space-between",attrs:{absolute:e.absolute,color:"secondary"},scopedSlots:e._u([{key:"action",fn:function(t){var a=t.attrs;return[s("v-btn",e._b({attrs:{color:"warning",text:""},on:{click:function(t){e.snackbar=!1}}},"v-btn",a,!1),[e._v("Close")])]}}]),model:{value:e.snackbar,callback:function(t){e.snackbar=t},expression:"snackbar"}},[e._v(" "+e._s(e.message)+" ")])],1)},r=[],n={props:["queries"],data(){return{absolute:!0,snackbar:!1,message:"",overlay:!1,showCurrentPassword:!1,showNew1Password:!1,showNew2Password:!1,current:"",new1:"",new2:""}},methods:{change(){if(this.new1.length<8)return this.message="Password length must be atleast 8 characters",void(this.snackbar=!0);this.overlay=!0;let e={currentPassword:this.current,newPassword:this.new1};fetch("/site/user/change-password",{method:"POST",headers:{"Content-Type":"application/json"},redirect:"manual",body:JSON.stringify(e)}).then((e=>{this.overlay=!1,200===e.status?(this.$store.commit("setMessage",{type:"success",text:"Password Changed"}),setTimeout((()=>{fetch("/auth/logout").then((()=>{this.loading=!1,this.$store.commit("logout"),this.$emit("loggedout"),this.$router.push({path:"/"})}))}),800)):e.json().then((e=>{this.$store.commit("setMessage",{type:"error",text:e.message})}))})).catch((()=>{this.$store.commit("setMessage",{type:"error",text:"Failed to change password."})}))}}},o=n,i=s(3736),c=s(3453),d=s.n(c),l=s(3150),w=s(2371),u=s(7118),h=s(4228),p=s(6428),v=s(1058),m=s(624),f=s(3202),b=s(9762),g=s(5978),y=(0,i.Z)(o,a,r,!1,null,null,null),P=y.exports;d()(y,{VBtn:l.Z,VCard:w.Z,VCardActions:u.h7,VCardText:u.ZB,VCardTitle:u.EB,VContainer:h.Z,VIcon:p.Z,VOverlay:v.Z,VProgressCircular:m.Z,VSnackbar:f.Z,VSpacer:b.Z,VTextField:g.Z})}}]);
//# sourceMappingURL=5548.7a327ee3.js.map