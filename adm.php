<?php

// zahrneme def. konstant
require "const.php";

// zahrnuti navigace
require "nav/nav.php";

?>

<h1>Administrace</h1>

<pre>
TODO - jen pro prihlaseneho admina
TODO - administrace uzivatelu, uchazecu, ...
</pre>

Pouzit service/get_users.php (JSON), tj. zavolat ho pres <br>
XMLHttpRequest a data pak dat do HTML tabulky



<body>

<h2>Using the XMLHttpRequest Object</h2>

<div id="demo">
<button type="button" onclick="loadXMLDoc()">Change Content</button>
</div>

<script>
function loadXMLDoc() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("demo").innerHTML =
      this.responseText;
    }
  };
  xhttp.open("GET", "http://localhost/p4/prip_kurz_my/service/get_users.php", true);
  console.log(xhttp)
  xhttp.send();

  //console.log(xhttp.responseText);
  //let info = document.getElementById("demo").innerText;
  //console.log(xhttp.responseText;);
}
</script>

</body>
