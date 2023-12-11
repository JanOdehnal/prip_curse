<?php
/*
    nav.php
    Navigace pro aplikaci Pripravny kurz.
    changelog:
    2023-11-13 - jmarianek - v1;

*/
    session_start();

?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Přípravný kurz</title>
<link rel="stylesheet" href="css/styles.css"/>
</head>
<body>

<span class="menuItem">
<a href="index.php">Domů</a>
</span>

<span class="menuItem">
<a href="cand.php">Přihláška</a>
</span>

<span class="menuItem">
<a href="adm.php">Administrace</a>
</span>

<span class="menuItem">
<a href="reg.php">Registrace</a>
</span>

<span class="menuItem">
<?php
    if (isset($_SESSION["logged_in"]) && $_SESSION["logged_in"])
    {
        echo $_SESSION["email"];
    }
    else
    {
        echo ("<a href='log in.php'>přihlašemí</a>");
    }
    
?>

</span>


