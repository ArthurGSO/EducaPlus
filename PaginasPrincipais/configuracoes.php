<?php
 
    session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Configurações</title>
    <link rel="stylesheet" href="../style.css">
    <!-- IMPORT BOXICONS -->
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />

   
</head>
<body>
  <?php if(isset($_SESSION['logstatus']))  ?>
    <aside class="close">
        
      <div class="head">
        <div class="logo">
          <a href="../index.php" class="logo">Educa<span>Plus</span><i class='bx bx-pen bx-flip-vertical bx-tada' style='color:#0095f7' ></i></a>
        </div>
        <i class='bx bx-menu hamburger-menu'></i>
      </div> <!-- HEADER -->

      <div class="nav">
        <div class="menu">
          <i class='bx bxs-home'></i>
          <span><a href="principal.php">Home</a></span>
        </div> <!-- BOTÃO HOME -->

        <div class="menu">
          <i class="bx bx-task"></i>
          <span>Provas</span>
          <i class="bx bx-chevron-down"></i>
        </div> <!-- SPAN PROVAS -->

        <div class="menu-dropdown">
          <div class="sub-menu">
            <span class="menu"><a href="provas/2015/prova1.php">ETEC 2015 1° Semestre</span></a>
            <span class="menu"><a href="provas/2015/prova2.php">ETEC 2015 2° Semestre</span></a>
            <span class="menu"><a href="provas/2019/prova1.php">ETEC 2019 1° Semestre</span></a>
            <span class="menu"><a href="provas/2019/prova2.php">ETEC 2019 2° Semestre</span></a> 
            <span class="menu"><a href="provas/2020/prova1.php">ETEC 2020 1° Semestre</span></a>
            <span class="menu"><a href="provas/2022/prova2.php">ETEC 2022 1° Semestre</span></a>
            <span class="menu"><a href="provas/2023/prova1.php">ETEC 2023 1° Semestre</span></a>
            <span class="menu"><a href="provas/2023/prova2.php">ETEC 2023 2° Semestre</span></a>
            <span class="menu"><a href="provas/2024/prova1.php">ETEC 2024 1° Semestre</span></a>
          </div>
        </div> <!-- PROVAS -->

       <div class="menu">
            <i class='bx bx-question-mark'></i>
            <span>Questões</span>
            <i class="bx bx-chevron-down"></i>
        </div>   <!-- MENU QUESTÕES -->
                                  
       <div class="menu-dropdown">
          <div class="sub-menu">
            <a href="#"> <span class="menu">MATEMÁTICA</span></a>
            <a href="#"> <span class="menu">PORTUGUÊS</span></a>
            <a href="#"> <span class="menu">CIÊNCIA</span></a>
            <a href="#"> <span class="menu">HISTÓRIA</span></a>
            <a href="#"> <span class="menu">GEOGRAFIA</span></a>
          </div>
        </div>  <!-- MENU QUESTÕES MATÉRIA --> 

        <div class="menu">
          <i class='bx bx-bar-chart-alt'></i>
          <span><a href="desempenho.php">Desempenho</a></span>
        </div> <!-- MENU DESEMPENHO -->

        <div class="menu active">
          <i class="bx bx-cog"></i>
          <span> <a href="configuracoes.php">Configurações </a></span>
        </div> <!-- MENU CONFIGURAÇÕES -->
            
        <div class="menu" style="pointer-events: none;"></div>
      </div> <!-- LEFT MENU -->

      <div class="foot">
        <div class="profile">
          <img src="../source/img/1381432-Solo-Leveling-Sung-Jinwoo.jpg" alt="profile">
          <div class="info">
            <span class="name">Usuário:
              <?php
                  echo $_SESSION['user'];                          
              ?>                      
            </span>
           
          </div>
        </div> <!-- LEFT PROFILE INFOS -->
        <button id="dark-mode-toggle">Toggle Dark Mode</button>
        <button id="openPopup" class="opnen"> 
            <div class="menu menu-logout">
              <i class="bx bx-log-out"></i>
              <span>Sair</span>
        </button> <!-- BOTÃO DE POPUP DO BOTÃO DE SAIR -->

        <div id="popup" class="popup"> 
          <div class="popup-content">
            <span class="fecha" id="closePopup">&times;</span>
            <p>Confirmar saída?</p>
            <a href="../source/includes/logout.php"> <button type="submit" class="btnlogout">Sim</button></a>
            <a href="principal.php"> <button class="bai" type="submit">Não</button></a>
          </div>
        </div> <!-- BOTÃO DE SAIR EM POPUP -->
      </div> <!-- LEFT MENU FOOTER -->

    </aside> <!-- LEFT MENU -->


        <section class="dese">
            <div class="princi">
                <h1>Configurações</h1>
            
            <div class="config-container">
                <div class="config-box">
                    
                    <h4>Avatar</h4>
                    <h2></h2>
                     
                        
                            <img src="img/" alt="img">
                        
    
                   
                        <button class="button-27">Alterar imagem</button>
                </div>
                <div class="config-box">
                    <h4>Dados Pessoais</h4>
                    <h2></h2>


                    <button class="button-27">Alterar senha</button>
                    <button class="button-29">Salvar Alterações</button>
</div>
                </div>
            </div>
        </section>

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
<script src="java.js"></script>

</body>
</html>