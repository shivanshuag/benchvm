
<html lang="en" dir="ltr">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type=text/css>
<!--
body,td,div,p,a,font,span {font-family: arial,sans-serif}
body {margin-top:2}

.c {width: 4; height: 4}

.bubble {background-color:#C3D9FF}

.tl {padding: 0; width: 4; text-align: left; vertical-align: top}
.tr {padding: 0; width: 4; text-align: right; vertical-align: top}
.bl {padding: 0; width: 4; text-align: left; vertical-align: bottom}
.br {padding: 0; width: 4; text-align: right; vertical-align: bottom}

.caption {color:#000000; white-space:nowrap; background:#E8EEFA; text-align:center}

.form-noindent {background-color: #ffffff; border: #C3D9FF 1px solid}

.feature-image {padding: 15 0 0 0; vertical-align: top; text-align: right; }
.feature-description {padding: 15 0 0 10; vertical-align: top; text-align: left; }

// -->
</style>
<script type=text/javascript src="https://mail.google.com/mail?view=page&name=browser"></script>
<script type=text/javascript>
<!--

var start_time = (new Date()).getTime();

if ((top.location != self.location)&&(top.location.href.indexOf('https://www.google.com/analytics/siteopt/preview')!=0)) {
 top.location = self.location.href;
}

function SetGmailCookie(name, value) {
  document.cookie = name + "=" + value + ";path=/;domain=.google.com";
}

function lg() {
  var now = (new Date()).getTime();

  var cookie = "T" + start_time + "/" + start_time + "/" + now;
  SetGmailCookie("GMAIL_LOGIN", cookie);
}

function gaiacb_onLoginSubmit() {
  lg();
  if (!fixed) {
    FixForm();
  }
  return true;
}

function StripParam(url, param) {
  var start = url.indexOf(param);
  if (start == -1) return url;
  var end = start + param.length;

  var charBefore = url.charAt(start-1);
  if (charBefore != '?' && charBefore != '&') return url;

  var charAfter = (url.length >= end+1) ? url.charAt(end) : '';
  if (charAfter != '' && charAfter != '&') return url;
  if (charBefore == '&') {
  --start;
  } else if (charAfter == '&') {
  ++end;
  }
  return url.substring(0, start) + url.substring(end);
}
var fixed = 0;
function FixForm() {
  if (is_browser_supported) {
  var form = el("gaia_loginform");
  if (form && form["continue"]) {
  var url = form["continue"].value;
  url = StripParam(url, "ui=html");
  url = StripParam(url, "zy=l");
  form["continue"].value = url;
  }
  }
  fixed = 1;
}
function el(id) {
  if (document.getElementById) {
  return document.getElementById(id);
  } else if (window[id]) {
  return window[id];
  }
  return null;
}
// Estimates of nanite storage generation over time.
var CP = [
 [ 1175414400000, 2835 ],
 [ 1192176000000, 2912 ],
 [ 1193122800000, 4321 ],
 [ 1199433600000, 6283 ],
 [ 2147328000000, 43008 ],
 [ 46893711600000, Number.MAX_VALUE ]
];
var quota;
var ONE_PX = "https://mail.google.com/mail/images/c.gif?t=" +
  (new Date()).getTime();
function LogRoundtripTime() {
  var img = new Image();
  var start = (new Date()).getTime();
  img.onload = GetRoundtripTimeFunction(start);
  img.src = ONE_PX;
}
function GetRoundtripTimeFunction(start) {
  return function() {
  var end = (new Date()).getTime();
  SetGmailCookie("GMAIL_RTT", (end - start));
  }
}
function MaybePingUser() {
  var f = el("gaia_loginform");
  if (f.Email.value) {
  new Image().src = 'https://mail.google.com/mail?gxlu=' +
  encodeURIComponent(f.Email.value) +
  '&zx=' + (new Date().getTime());
  }
}
function OnLoad() {
  gaia_setFocus();
  MaybePingUser();
  el("gaia_loginform").Passwd.onfocus = MaybePingUser;
  LogRoundtripTime();
  if (!quota) {
  quota = el("quota");
  updateQuota();
  }
  LoadConversionScript();
}
function updateQuota() {
  if (!quota) {
  return;
  }
  var now = (new Date()).getTime();
  var i;
  for (i = 0; i < CP.length; i++) {
    if (now < CP[i][0]) {
      break;
    }
  }
  if (i == 0) {
    setTimeout(updateQuota, 1000); 
  } else if (i == CP.length) {
    quota.innerHTML = CP[i - 1][1];
  } else {
    var ts = CP[i - 1][0];
    var bs = CP[i - 1][1];
    quota.innerHTML = format(((now-ts) / (CP[i][0]-ts) * (CP[i][1]-bs)) + bs); 
    setTimeout(updateQuota, 1000); 
  } 
} 
 
var PAD = '.000000'; 
 
function format(num) { 
  var str = String(num); 
  var dot = str.indexOf('.'); 
  if (dot < 0) { 
     return str + PAD; 
  } if (PAD.length > (str.length - dot)) {
  return str + PAD.substring(str.length - dot);
  } else {
  return str.substring(0, dot + PAD.length);
  }
}
var google_conversion_type = 'landing';
var google_conversion_id = 1069902127;
var google_conversion_language = "en_US";
var google_conversion_format = "1";
var google_conversion_color = "FFFFFF";
function LoadConversionScript() {
  var script = document.createElement("script");
  script.type = "text/javascript";
  script.src = "https://www.googleadservices.com/pagead/conversion.js";
}
// -->
</script>
  <script>
  _utcp="/accounts/";
  _udn="google.com";
  </script>
  <script>
  function utmx_section(){}function utmx(){} (function(){var k='1206330561',d=document,l=d.location,c=d.cookie;function f(n){ if(c){var i=c.indexOf(n+'=');if(i>-1){var j=c.indexOf(';',i);return c.substring(i+n. length+1,j<0?c.length:j)}}}var x=f('__utmx'),xx=f('__utmxx'),h=l.hash; d.write('<sc'+'ript src="'+ 'http'+(l.protocol=='https:'?'s://ssl':'://www')+'.google-analytics.com' +'/siteopt.js?v=1&utmxkey='+k+'&utmx='+(x?x:'')+'&utmxx='+(xx?xx:'')+'&utmxtime=' +new Date().valueOf()+(h?'&utmxhash='+escape(h.substr(1)):'')+ '" type="text/javascript" charset="utf-8"></sc'+'ript>')})();
  </script>
<title>
  Gmail: Email from Google
</title>
  </noscript>
</head>
<body bgcolor=#ffffff link=#0000FF vlink=#0000FF onload="OnLoad()">
<table width=95% border=0 align=center cellpadding=0 cellspacing=0>
  <tr valign=top>
  <td width=1%>
  <script>utmx_section("logo")</script>
  <img src="https://mail.google.com/mail/help/images/logo.gif" border=0 width=143 height=59 alt="Gmail" align=left vspace=10/>
  </noscript>
  </td>
  <td width=99% bgcolor=#ffffff valign=top>
  <table width=100% cellpadding=1>
  <tr valign=bottom>
  <td><div align=right>&nbsp;</div></td>
  </tr>
  <tr>
  <td nowrap=nowrap>
  <table width=100% align=center cellpadding=0 cellspacing=0 bgcolor=#C3D9FF style=margin-bottom:5>
  <tr>
  <td class="bubble tl" align=left valign=top>
  <img src=https://mail.google.com/mail/images/corner_tl.gif class=c alt="" />
  </td>
  <script>utmx_section("title")</script>
  <td class=bubble rowspan=2 style="font-family:arial;text-align:left;font-weight:bold;padding:3 0"><b>Welcome to Gmail</b></td>
  <td class="bubble tr" align=right valign=top>
  <img src=https://mail.google.com/mail/images/corner_tr.gif class=c alt="" />
  </td>
  </noscript>
  </tr>
  <tr>
  <td class="bubble bl" align=left valign=bottom>
  <img src=https://mail.google.com/mail/images/corner_bl.gif class=c alt="" />
  </td>
  <td class="bubble br" align=right valign=bottom>
  <img src=https://mail.google.com/mail/images/corner_br.gif class=c alt="" />
  </td>
  </tr>
  </table>
  </td>
  </tr>
  </table>
  </td>
  </tr>
</table>
  <script>utmx_section("bullets")</script>
<table width=94% align=center cellpadding=5 cellspacing=1>
  <tr>
  <td valign=top style="text-align:left"><b>A Google approach to email.</b>
  <td valign=top>&nbsp;
  </tr>
  <tr>
  <td width=75% valign=top>
  <p style="margin-bottom: 0;text-align:left"><font size=-1>
  Gmail is a new kind of webmail, built on the idea that email can be more intuitive, efficient, and useful. And maybe even fun. After all, Gmail has:</font>
</p>
<table border="0" cellpadding="0" cellspacing="0" width="90%"><tbody>
  <tr>
  <td class="feature-image"><img src="https://mail.google.com/mail/help/images/icons/spam_new.gif"></td>
  <td class="feature-description">
  <font size=-1><b>Less spam</b><br>
  Keep unwanted messages out of your inbox with Google's innovative technology</font>
  </td>
  </tr>
  <tr>
  <td class="feature-image"><img src="https://mail.google.com/mail/help/images/icons/cell.gif"></td>
  <td class="feature-description"><font size=-1><b>Mobile access</b><br>
  Read Gmail on your mobile phone by pointing your phone's web browser to <b>http://gmail.com/app</b>. <a href="http://www.google.com/intl/en/mobile/mail/#utm_source=en-cpp-g4mc-gmhp&utm_medium=cpp&utm_campaign=en">Learn more</a></font>
  </td>
  </tr>
  <tr>
  <td class="feature-image"><img src="https://mail.google.com/mail/help/images/icons/storage.gif"></td>
  <td class="feature-description">
  <font size=-1><b>Lots of space</b><br>
  Over <span id=quota>2757.272164</span> megabytes (and counting) of free storage so you'll never need to delete another message.</font>
  </td>
  </tr>
  </noscript>
  <script>utmx_section("extrabullet")</script>
</tbody></table>
  </noscript>
  <script>utmx_section("promo")</script>
  </noscript>
  </td>
  <td valign=top>
  <!-- login box -->
  <div id=login>
<script><!--

function gaia_onLoginSubmit() {

  if (window.gaiacb_onLoginSubmit) {
    return gaiacb_onLoginSubmit();
  } else {
    return true;
  }

}

function gaia_setFocus() {
  var f = null;
  if (document.getElementById) { 
    f = document.getElementById("gaia_loginform");
  } else if (window.gaia_loginform) { 
    f = window.gaia_loginform;
  } 
  if (f) {
    if (f.Email.value == null || f.Email.value == "") { 
      f.Email.focus();
    } else {
      f.Passwd.focus();
    } 
  }
}
--></script>
<style type="text/css"><!--
  div.errormsg { color: red; font-size: smaller; font-family:arial,sans-serif; }
  font.errormsg { color: red; font-size: smaller; font-family:arial,sans-serif; }  
--></style>
<style type="text/css"><!--
.gaia.le.lbl { font-family: Arial, Helvetica, sans-serif; font-size: smaller; }
.gaia.le.fpwd { font-family: Arial, Helvetica, sans-serif; font-size: 70%; }
.gaia.le.chusr { font-family: Arial, Helvetica, sans-serif; font-size: 70%; }
.gaia.le.val { font-family: Arial, Helvetica, sans-serif; font-size: smaller; }
.gaia.le.button { font-family: Arial, Helvetica, sans-serif; font-size: smaller; }
.gaia.le.rem { font-family: Arial, Helvetica, sans-serif; font-size: smaller; }

.gaia.captchahtml.desc { font-family: arial, sans-serif; font-size: smaller; } 
.gaia.captchahtml.cmt { font-family: arial, sans-serif; font-size: smaller; font-style: italic; }
  
--></style>
<form id="gaia_loginform"
      
        action="https://www.google.com/accounts/ServiceLoginAuth?service=mail" method="post"
      
      onsubmit=
                 "return(gaia_onLoginSubmit());"
                >
<div id="gaia_loginbox">
<table class="form-noindent" cellspacing="3" cellpadding="5" width="100%" border="0">
  <tr>
  <td valign="top" style="text-align:center" nowrap="nowrap"
        bgcolor="#e8eefa">
  <input type="hidden" name="ltmpl"
             value="default">
  <input type="hidden" name="ltmplcache"
             value="2">
  <div class="loginBox">
  <table id="gaia_table" align="center" border="0" cellpadding="1" cellspacing="0">
  <tr>
<td colspan="2" align="center">
  <font size="-1">
  Sign in to
  Gmail
  with your
  </font>
  <table>
  <tr>
  <td valign="top">
  <img src="google_transparent.gif"
           alt="Google">
  </img>
  </td>
  <td valign="middle">
  <font size="+0"><b>Account</b></font>
  </td>
  </tr>
</table>
</td>
</tr>
  <script type="text/javascript"><!--
    function onPreCreateAccount() {
    
      return true;
    
    }

    function onPreLogin() {
    
      
      if (window["onlogin"] != null) {
        return onlogin();
      } else {
        return true;
      }
    
    }
  --></script>
<tr>
  <td colspan="2" align="center">
  </td>
</tr>
<tr>
  <td nowrap="nowrap">
  <div align="right">
  <span class="gaia le lbl">
  Username:
  </span>
  </div>
  </td>
  <td>
  <input type="hidden" name="continue" id="continue"
           value="https://mail.google.com/mail/?ui=2&amp;nsr=1" />
  <input type="hidden" name="service" id="service"
           value="mail" />
  <input type="hidden" name="rm" id="rm"
           value="false" />
  <input type="hidden" name="ltmpl" id="ltmpl"
           value="default" />
  <input type="hidden"
             name="GALX"
             value="RJ2aMH7Dsv0" />
  <input type="text" name="Email"  id="Email"
  size="18" value=""
  
    class='gaia le val'
  
  />
  </td>
</tr>
<tr>
  <td></td>
  <td align="left">
  </td>
</tr>
<tr>
  <td align="right">
  <span class="gaia le lbl">
  Password:
  </span>
  </td>
  <td>
  <input type="password"
   name="Passwd" id="Passwd"
  size="18" 
  
    class="gaia le val" 
  
  />
  </td>
</tr>
<tr>
  <td>
  </td>
  <td align="left">
  </td>
</tr>
  <tr>
  <td align="right" valign="top">
  <input type="checkbox" name="PersistentCookie" id="PersistentCookie"
    value="yes"
  
    
  
  />
  <input type="hidden" name='rmShown' value="1" />
  </td>
  <td><span class="gaia le rem">
  Remember me on this computer.
  </span></td>
</tr>
<tr>
  <td>
  </td>
  <td align="left">
  <input type="submit" class="gaia le button" name="signIn"
           value="Sign in" />
  </td>
</tr>
<tr id="ga-fprow">
  <td colspan="2" height="33.0" class="gaia le fpwd"
    align="center" valign="bottom">
  <a href="http://mail.google.com/support/bin/answer.py?answer=46346&fpUrl=https%3A%2F%2Fwww.google.com%2Faccounts%2FForgotPasswd%3FfpOnly%3D1%26continue%3Dhttps%253A%252F%252Fmail.google.com%252Fmail%252F%253Fui%253D2%2526nsr%253D1%26service%3Dmail&fuUrl=https%3A%2F%2Fwww.google.com%2Faccounts%2FForgotPasswd%3FfuOnly%3D1%26continue%3Dhttps%253A%252F%252Fmail.google.com%252Fmail%252F%253Fui%253D2%2526nsr%253D1%26service%3Dmail&hl=en"
       target=_top>
  I cannot access my account
  </a>
  </td>
</tr>
  </table>
  </div>
  </td>
  </tr>
</table>
</div>
</form>
  </div>
  <!-- end login box -->
  <br>
  <!-- links box (below login box) -->
  <table class=form-noindent cellpadding=0 width=100% bgcolor=#E8EEFA id=links>
  <tr bgcolor=#E8EEFA>
  <td valign=top>
  <script>utmx_section("sign up")</script>
  <div align=center style="margin:10 0">
  <font size=+0>
  <b><a href="http://mail.google.com/mail/signup" style="white-space:nowrap">
  Sign up for Gmail</a></b>
  <br><br>
  <font size="-1">
  <a href="http://mail.google.com/mail/help/intl/en/about.html">About Gmail</a
                  >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://mail.google.com/mail/help/intl/en/about_whatsnew.html">New features!</a>
  </font>
  <br>
  </font>
  </div>
  </noscript>
  </td>
  </table>
  <!-- end links box (below login box) -->
  <script>utmx_section("box order")</script>
  </noscript>
<script>
<!--
FixForm();
// -->
</script>
</table>
<br>
<table width=95% align=center cellpadding=3 cellspacing=0 bgcolor=#C3D9FF style=margin-bottom:5>
  <tr>
  <td class="bubble tl" align=left valign=top>
  <img src=https://mail.google.com/mail/images/corner_tl.gif class=c alt="" />
  </td>
  <td class=bubble rowspan=2 style=text-align:left>
  <div align=center>
  <font size=-1 color=#666666>&copy;2008 Google -
  <a href="http://www.google.com/a/help/intl/en/users/user_features.html#utm_medium=et&utm_source=gmail-en&utm_campaign=crossnav&token=gmail_footer">Gmail for Organizations</a> -
  <a href="http://gmailblog.blogspot.com/?utm_source=en-gmftr&utm_medium=et&utm_content=gmftr">Gmail Blog</a> -
  <a href="http://mail.google.com/mail/help/intl/en/terms.html">Terms</a>
  - <a href="http://mail.google.com/support/">Help</a>
  </font>
  </div>
  </td>
  <td class="bubble tr" align=right valign=top>
  <img src=https://mail.google.com/mail/images/corner_tr.gif class=c alt="" />
  </td>
  </tr>
  <tr>
  <td class="bubble bl" align=left valign=bottom>
  <img src=https://mail.google.com/mail/images/corner_bl.gif class=c alt="" />
  </td>
  <td class="bubble br" align=right valign=bottom>
  <img src=https://mail.google.com/mail/images/corner_br.gif class=c alt="" />
  </td>
  </tr>
</table>
<script type="text/javascript"
 src="https://ssl.google-analytics.com/urchin_beta.js">
</script>
<script type="text/javascript">
_uacct="UA-992684-1";
_utcp="/accounts/";
_udn="google.com";
_uRno[0]=".google.com";
urchinTracker("/mail/gaia/homepage");
urchinPathCopy("/mail/help/");
_uacct="UA-1923148-3";
urchinTracker("/1206330561/test");
urchinPathCopy("/mail/help/");
</script>
</body>
</html>
