<?php
session_start();

$host = "localhost";
$db_user = "root";
$db_password = "";
$db_name = "dziennik";
             
$conn = @new mysqli($host, $db_user, $db_password, $db_name);



if(isset($_POST['sub']))
{
    $log = $_POST['log'];
    $pass = $_POST['pass'];

    $kw = "SELECT * FROM logowanie WHERE login = '$log' AND haslo = '$pass'";
    $wynik = $conn->query($kw);

    if($wynik){
        $ilosc = $wynik->num_rows;
        if($ilosc == 1){
            $tak = $wynik->fetch_assoc();
            $_SESSION['nazwa'] = $tak['nazwa'];

            $_SESSION['log'] = $log;

            unset($_SESSION['blad']);
            $wynik->close();
            if($tak['rodzaj'] == 'uczeń')
            {
                header('Location: ../html/indexU.php');
            }else if($tak['rodzaj'] == 'nauczyciel')
            {
                header('Location: ../html/indexN.php');
            }
            
        }else{
            $_SESSION['blad'] = '<span style="color:white;">Nieprawidłowy login lub hasło!</span>';
            header('Location: ../html/indexL.html');
        }
    }
}

$conn->close();
?>