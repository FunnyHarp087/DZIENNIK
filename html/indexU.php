<?php
session_start();
?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../styl/styl1.css">
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
        <div class="wiadomosci">
            
            <?php
            $host = "localhost";
            $db_user = "root";
            $db_password = "";
            $db_name = "dziennik";
                         
            $conn = @new mysqli($host, $db_user, $db_password, $db_name);

            $log1 = $_SESSION['log'];

            $kw1 = mysqli_query($conn, "SELECT * FROM wiadomosc INNER JOIN logowanie ON wiadomosc.logowanie_id = logowanie.id WHERE login = '$log1';");
            while($a = mysqli_fetch_array($kw1))
            {
                echo '<div class="messege">';
                echo '<p>'.$a['data_dodania'].'</p>';
                echo '<hr>';
                echo $a['tresc'];
                echo '</div>';
            }

            
            ?>
        </div>
        <div class="taktak">
            <p><h1>OCENY</h1></p>
        </div>
        <div class="ocen">
            <div id="table-ocen">
                <table>
                    <tr>
                        <td><b>Nazwa przedmiotu:</b></td>
                        <td><b>Oceny:</b></td>
                    </tr>
                <?php
                $kw2 = mysqli_query($conn, "SELECT * FROM oceny INNER JOIN logowanie ON oceny.logowanie_id = logowanie.id WHERE login = '$log1';");
                while($b = mysqli_fetch_array($kw2))
                {
                    echo '<tr>';
                    echo '<td>'.$b['przedmiot'].'</td>';
                    echo '<td>'.$b['ocena'].'</td>';
                    echo '</tr>';
                }


                
                ?>
                </table>
            </div>
        </div>
        <div class="taktak">
            <p><h1>PLAN LEKCJI</h1></p>
        </div>
        <div class="plan">
            <div id="table-plan">
                <table>
                    <tr>
                        <td></td>
                        <td><b>Poniedziałek</b></td>
                        <td><b>Wtorek</b></td>
                        <td><b>Środa</b></td>
                        <td><b>Czwartek</b></td>
                        <td><b>Piątek</b></td>
                    </tr>
                    <?php
                    $kw3 = mysqli_query($conn, "SELECT * FROM plan INNER JOIN logowanie ON plan.logowanie_id = logowanie.id WHERE login = '$log1';");
                    while($c = mysqli_fetch_array($kw3))
                    {
                    echo '<tr>';
                    echo '<td>'.$c['godzina'].'</td>';
                    echo '<td>'.$c['a0'].'</td>';
                    echo '<td>'.$c['a1'].'</td>';
                    echo '<td>'.$c['a2'].'</td>';
                    echo '<td>'.$c['a3'].'</td>';
                    echo '<td>'.$c['a4'].'</td>';
                    echo '</tr>';
                    }


                    
                    ?>
                </table>
            </div>
        </div>
        <div class="taktak">
            <p><h1>UWAGI</h1></p>
        </div>
        <div class="uwagi">
            <?php
            $kw4 = mysqli_query($conn, "SELECT * FROM uwagi INNER JOIN logowanie ON uwagi.logowanie_id = logowanie.id WHERE login = '$log1';");
            while($d = mysqli_fetch_array($kw4))
            {
                echo '<div class="messege">';
                echo '<p>'.$d['data'].", ".$d['punkty']." pkt.".'</p>';
                echo '<hr>';
                echo $d['tresc'];
                echo '</div>';
            }

            $conn->close();
            ?>
        </div>
        <div class="stopka">
            <div id="fb">
                <i class="icon-facebook-rect"></i>
            </div>
            <div id="yt">
                <i class="icon-youtube"></i>
            </div>
            <div id="git">
                <i class="icon-github"></i>
            </div>
        </div>
    </div>
</body>
</html>