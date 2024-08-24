<?php
session_start();
?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../styl/styl2.css">
    <link rel="stylesheet" href="../zdjecia/fontello-d8586a9b/css/fontello.css">
</head>
<body>
    <div class="wrapper">
        <div class="menu">
            <?php
               echo '<button><a href="../skrypt/logout.php">Wyloguj sie</a></button>'.$_SESSION['nazwa'];
            ?>
        </div>
        <div class="taktak">
            <p><h1>WIADOMOŚCI</h1></p>
        </div>
        <div class="wiadomosc">
            <form method="POST">
                <select name="select" id="select">
            <?php
            $host = "localhost";
            $db_user = "root";
            $db_password = "";
            $db_name = "dziennik";
                         
            $conn = @new mysqli($host, $db_user, $db_password, $db_name);

            $log1 = $_SESSION['log'];

            $kw1 = mysqli_query($conn,"SELECT * FROM logowanie WHERE rodzaj = 'uczeń';");
            while($a = mysqli_fetch_array($kw1))
            {   
                echo '<option value='.$a['id'].'>'.$a['nazwa'].'</option>';
            }
            ?>
                </select>
                <textarea name="txt" id="txt" cols="30" rows="10"></textarea><br>
                <input type="submit" name="sub" value="Wyślij" cols="30" rows="10">
            </form>
            <?php
            if(isset($_POST['sub'])){
                $txt = $_POST['txt'];
                $selected = $_POST['select'];

                $date = date("Y-m-d");
                
                $kw2 = mysqli_query($conn, "INSERT INTO wiadomosc(data_dodania, tresc, logowanie_id) VALUES('$date','$txt','$selected');");
            }
            ?>
        </div>
        <div class="taktak">
            <p><h1>OCENY</h1></p>
        </div>
        <div class="oceny">
            <form action="" method="post">
                <select name="select" id="select">
                <?php
                $kw1 = mysqli_query($conn,"SELECT * FROM logowanie WHERE rodzaj = 'uczeń';");
                while($a = mysqli_fetch_array($kw1))
                {   
                    echo '<option value='.$a['id'].'>'.$a['nazwa'].'</option>';
                }
                ?>
                </select>
                <select name="select1" id="select1">
                    <?php
                    $kw3 = mysqli_query($conn, "SELECT * FROM oceny");
                    while($c = mysqli_fetch_array($kw3))
                    {
                        echo '<option value='.$c['przedmiot'].'>';
                        echo $c['przedmiot'].'</option>';
                    }
                    ?>
                </select>
                <input type="number" name="num" id="num" placeholder="Podaj ocene: ">
                <input type="submit" value="Wpisz" name="wp">
            </form>
            <?php
            if(isset($_POST['wp']))
            {
                $num = $_POST['num'];
                $selected = $_POST['select'];
                $selected1 = $_POST['select1'];

                $kw4 = mysqli_query($conn, "INSERT INTO oceny(przedmiot, ocena, logowanie_id) VALUES('$selected1','$num','$selected');");
            }
            ?>
        </div>
        <div class="taktak">
            <p><h1>PLAN ZAJĘĆ</h1></p>
        </div>
        <div class="plan"></div>
        <div class="taktak">
            <p><h1>UWAGI</h1></p>
        </div>
        <div class="uwagi">
            <form action="" method="post">
                <select name="select" id="select">
            <?php
            $kw5 = mysqli_query($conn,"SELECT * FROM logowanie WHERE rodzaj = 'uczeń';");
            while($a = mysqli_fetch_array($kw5))
            {   
                echo '<option value='.$a['id'].'>'.$a['nazwa'].'</option>';
            }
            ?>
                </select>
                <textarea name="txt" id="txt" cols="30" rows="10"></textarea><br>
                <input type="number" name="num" id="num" value="ilość punktów"><br>
                <input type="submit" name="sub" value="Wyślij" cols="30" rows="10">
            </form>
            <?php
            if(isset($_POST['sub'])){
                $txt = $_POST['txt'];
                $selected = $_POST['select'];
                $num = $_POST['num'];

                $date = date("Y-m-d");
                
                $kw2 = mysqli_query($conn, "INSERT INTO uwagi(data, tresc, logowanie_id, punkty) VALUES('$date','$txt','$selected','$num');");
            }
            ?>
            </form>
        </div>
    </div>
</body>
</html>