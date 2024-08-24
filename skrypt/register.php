<?php
$host = "localhost";
$db_user = "root";
$db_password = "";
$db_name = "dziennik";
             
$conn = @new mysqli($host, $db_user, $db_password, $db_name);

if(isset($_POST['reg']))
{
    $name = $_POST['nazwa'];
    $log = $_POST['log'];
    $pass = $_POST['pass'];
    $select = $_POST['select'];

    $kw = "INSERT INTO logowanie (nazwa, rodzaj , login , haslo) VALUES ('$name','$select','$log','$pass')";
    if($conn->query($kw))
    {
        echo "Pomyślnie zarejestrowano";
        header('Location: ../html/indexL.html');
    }

}
$conn->close();
?>