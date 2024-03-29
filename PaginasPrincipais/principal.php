<?php
    date_default_timezone_set('America/Sao_Paulo'); 

    session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="../style.css">
    <!-- IMPORT BOXICONS -->
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
    <?php if(isset($_SESSION['logstatus'])) { ?>
    <aside class="close">
        
        <div class="head">
            <div class="logo">
                
                <a href="../index.php" class="logo">Educa<span>Plus</span><i class='bx bx-pen bx-flip-vertical bx-tada' style='color:#352eab' ></i></a>
            </div>
            <i class='bx bx-menu hamburger-menu'></i>
        </div>

       
        <div class="nav">
            <div class="menu active">
                <i class="bx bx-task"></i>
                <span>Provas</span>
                <i class="bx bx-chevron-down"></i>
            </div>
            <div class="menu-dropdown">
                <div class="sub-menu">
                    <span class="menu">ETEC 2019</span>
                    <span class="menu">ETEC 2020</span>
                    <span class="menu">ETEC 2021</span>
                    <span class="menu">ETEC 2022</span>
                    <span class="menu"><a href="../PaginasPrincipais/Provas/2023/prova1.php">ETEC 2023 1° Semestre</span>
                    
                    <span class="menu"><a href="../PaginasPrincipais/Provas/2024/prova1.php">ETEC 2024 1° Semestre</span>


                </div>
            </div>
            <div class="menu">
                <i class='bx bx-question-mark'></i>
                <span>Questões</span>
            </div>
            <div class="menu-dropdown">
                <div class="sub-menu">
                    <a href="#"> <span class="menu">MATEMÁTICA</span></a>
                    <a href="#"> <span class="menu">PORTUGUÊS</span></a>
                    <a href="#"> <span class="menu">CIÊNCIA</span></a>
                    <a href="#"> <span class="menu">HISTÓRIA</span></a>
                    <a href="#"> <span class="menu">GEOGRAFIA</span></a>




                </div>
            </div>
            <div class="menu">
                <i class='bx bx-bar-chart-alt'></i>
                <span><a href="desempenho.html">
                    Desempenho
        </a></span>
            </div>

            <div class="menu">
                <i class="bx bx-cog"></i>
                <span><a href="configuracoes.html">
                    Configurações
        </a></span>
            </div>
            <div class="menu" style="pointer-events: none;"></div>
        </div>

        <div class="foot">
            <div class="profile">
                <img src="../source/img/1381432-Solo-Leveling-Sung-Jinwoo.jpg" alt="profile">
                <div class="info">
                    <span class="name">Usuário:
                        <?php
                            echo $_SESSION['user'];                          
                        ?>                      
                    </span>
                   <span class="name">Data de Login:
                        <?php
                           echo $_SESSION['dt_login'];                         
                        ?>                      
                    </span>
                    <span class="name">Data de Cadastro:
                        <?php
                            echo $_SESSION['dt_cadastro'];                          
                        ?>                      
                    </span>
                </div>
            </div>

            <div class="menu menu-logout">
                <i class="bx bx-log-out"></i>
                <span><button name="btnSair"><a href="../source/includes/logout.php">Sair</a></button></span>
            </div>
        </div>

    </aside>

    <!-- IMPORT CDNJS JQUERY -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script>
        $('.hamburger-menu').click(function() {
            $('aside').toggleClass('close')
        })

        $('.menu').click(function() {
            $(this).siblings('.menu').removeClass('active')
            $(this).addClass('active')

            $(this).next().siblings('.menu-dropdown').children('.sub-menu').slideUp()
            $(this).next('.menu-dropdown').children('.sub-menu').slideToggle()

            $(this).next().siblings('.menu-dropdown').children('.sub-menu').children('.menu').removeClass('active')
        })
    </script>
<?php } else {
    include '../source/includes/connect.php';
    loginRedirectError();
} ?>
</body>
</html>