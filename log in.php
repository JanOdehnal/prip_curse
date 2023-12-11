<?php

// zahrneme def. konstant
require "const.php";

// zahrnuti navigace
require "nav/nav.php";

?>

<h1>Prihlaseni</h1>

<?php

// pokud form. odeslan, pak zaznam ulozime do DB
if (isset($_POST["email"]))
{
     // isset() vraci true
                              // pokud hodnota je nastavena
    //session_start();
    $_SESSION["logged_in"] = true;
    $_SESSION["email"] = $_POST["email"];


}


?>
<form method="POST"><!-- action="neco.php", method="GET" -->
<input type="hidden" name="action" value="submited"/>
<!-- id -- nutne mit sekvenci -->
<label for="email">*Email:</label>
<input id="email" type="email" name="email" required />
<br/>
<label for="heslo">*Heslo:</label>
<input id="heslo" type="password" name="heslo" required />
<br/>
<label for="heslo">Telefon:</label>
<input type="submit" value="Zaregistrovat">

</form>
</body>
</html>

