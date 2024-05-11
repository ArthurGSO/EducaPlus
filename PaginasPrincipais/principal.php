<?php
  require('../source/includes/connect.php');
  date_default_timezone_set('America/Sao_Paulo'); 
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />

   
</head>
<body>
  <?php if(isset($_SESSION['logstatus'])) { ?>
    <aside class="close">
        
      <div class="head">
        <div class="logo">
          <a href="../index.php" class="logo">Educa<span>Plus</span><i class='bx bx-pen bx-flip-vertical bx-tada' style='color:#0095f7' ></i></a>
        </div>
        <i class='bx bx-menu hamburger-menu'></i>
      </div> <!-- HEADER -->

      <div class="nav">
        <div class="menu active">
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
            <span class="menu"><a href="provas/2015/prova1.php">2015 1° Semestre</span></a>
            <span class="menu"><a href="provas/2015/prova2.php">2015 2° Semestre</span></a>
            <span class="menu"><a href="provas/2019/prova1.php">2019 1° Semestre</span></a>
            <span class="menu"><a href="provas/2019/prova2.php">2019 2° Semestre</span></a> 
            <span class="menu"><a href="provas/2020/prova1.php">2020 1° Semestre</span></a>
            <span class="menu"><a href="provas/2022/prova2.php">2022 1° Semestre</span></a>
            <span class="menu"><a href="provas/2023/prova1.php">2023 1° Semestre</span></a>
            <span class="menu"><a href="provas/2023/prova2.php">2023 2° Semestre</span></a>
            <span class="menu"><a href="provas/2024/prova1.php">2024 1° Semestre</span></a>
          </div>
        </div> <!-- PROVAS -->

        <!-- <div class="menu">
            <i class='bx bx-question-mark'></i>
            <span>Questões</span>
            <i class="bx bx-chevron-down"></i>
        </div>  --> <!-- MENU QUESTÕES -->
                                  
        <!-- <div class="menu-dropdown">
          <div class="sub-menu">
            <a href="#"> <span class="menu">MATEMÁTICA</span></a>
            <a href="#"> <span class="menu">PORTUGUÊS</span></a>
            <a href="#"> <span class="menu">CIÊNCIA</span></a>
            <a href="#"> <span class="menu">HISTÓRIA</span></a>
            <a href="#"> <span class="menu">GEOGRAFIA</span></a>
          </div>
        </div>  --> <!-- MENU QUESTÕES MATÉRIA s-->

        <div class="menu">
          <i class='bx bx-bar-chart-alt'></i>
          <span><a href="desempenho.php">Desempenho</a></span>
        </div> <!-- MENU DESEMPENHO -->

        <div class="menu">
          <i class="bx bx-cog"></i>
          <span> <a href="configuracoes.php">Configurações </a></span>
        </div> <!-- MENU CONFIGURAÇÕES -->
            
        <div class="menu" style="pointer-events: none;"></div>
      </div> <!-- LEFT MENU -->

      <div class="foot">
        <div class="profile">
          <?php
            // Recupera a imagem de perfil do usuário
            $cod_usuario = $_SESSION['id'];
            $sql = "SELECT image_data FROM tbImagensPerfil WHERE cod_usuario = $cod_usuario";
            $result = $conexao->query($sql);

            if ($result->num_rows > 0) {
                // Exibe a imagem de perfil
                $row = $result->fetch_assoc();
                echo '<img src="data:image/jpeg;base64,'.base64_encode($row['image_data']).'" alt="profile">';
            } else {
                // Se o usuário não tiver uma imagem de perfil, exibe uma imagem padrão
                echo '<img src="../source/img/perfil-padrao.png" alt="profile">';
            }
          ?>
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
        </div> <!-- LEFT PROFILE INFOS -->

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

    <div class="banner-container">
      <div class="banner">
        <img src="../source/img/undraw_join_re_w1lh.svg" alt="">
        <div>
          <h1>Bem vindo, <span><?php echo $_SESSION['user']; ?></h1></span>
        <div class="details-text">Bem vindo ao nosso site de educação! Estamos muito felizes por ter você conosco. Aqui, você encontrará uma variedade de recursos e materiais de aprendizado para ajudá-lo em sua jornada educacional. Explore, aprenda e cresça conosco. Desejamos a você uma experiência de aprendizado incrível e produtiva!</div>
      </div>
    </div> <!-- SPAN BEM-VINDO -->

    <h1 class="center">Comece agora:</h1> 
      <div class="container-provas">

        <div class="prova">
          <div class="titulo"> <span> ETEC 2023 </span></div>
          <div class="texto">A prova ETEC 2023 foi desafiadora, mas os estudantes se prepararam bem. As questões abordaram uma variedade de tópicos, exigindo um conhecimento sólido em todas as disciplinas.</div>
          <a href="provas/2023/prova1.php"><button class="button-29" role="button">Iniciar</button></a>
        </div> <!-- PROVA 2023 -->

        <div class="prova">
          <div class="titulo"><span> ETEC 2022 </span></div>
          <div class="texto">A prova ETEC 2022 foi marcada por questões complexas de matemática e ciências. Os estudantes que dominavam esses assuntos tiveram um bom desempenho.</div>
          <a href="provas/2022/prova1.php"><button class="button-29" role="button">Iniciar</button></a>

        </div> <!-- PROVA 2022 -->

        <div class="prova">
          <div class="titulo"><span> ETEC 2021 </span></div>
          <div class="texto">A prova ETEC 2021 destacou-se pelas questões de interpretação de texto. Os estudantes que leram atentamente e entenderam os textos se saíram bem.</div>
          <a href="provas/2021/prova1.php"><button class="button-29" role="button">Iniciar</button></a>
        </div> <!-- PROVA 2021 -->

        <div class="prova">
          <div class="titulo"><span> ETEC 2020 </span></div>
          <div class="texto">A prova ETEC 2020 foi bem equilibrada, com questões de todas as disciplinas. Os estudantes que tiveram um estudo consistente ao longo do ano tiveram sucesso.</div>
          <a href="provas/2020/prova1.php"><button class="button-29" role="button">Iniciar</button></a>
        </div> <!-- PR0VA 2020 --> 

        <div class="prova">
          <div class="titulo"><span> ETEC 2019 </span></div>
          <div class="texto">A prova ETEC 2019 foi bem equilibrada, com questões de todas as disciplinas. Os estudantes que tiveram um estudo consistente ao longo do ano tiveram sucesso.</div>
          <a href="provas/2019/prova1.php"><button class="button-29" role="button">Iniciar</button></a>
        </div> <!-- PROVA 2019 -->

      </div> <!-- "CARROSEL" RESUMO PROVAS -->

    <!-- <h1 class="center">Faça questões por matéria: </h1>  -->

      <!-- <div class="secao azul">
        <h2> <i class="fa-solid fa-book"></i> Português</h2>
          <div class="topicos">
            <a href="#"><button class="button-28" role="button">Começar</button></a>
          </div>
      </div> PORTUGUÊS -->

      <!-- <div class="secao vermelho">
        <h2> <i class="fa-solid fa-calculator"></i> Matemática</h2>
          <div class="topicos">
            <a href="#"><button class="button-28" role="button">Começar</button></a>
          </div>
      </div> MATEMÁTICA -->

      <!-- <div class="secao verde">
        <h2>  <i class="fa-solid fa-earth-americas"></i> Geografia</h2>
          <div class="topicos">
            <a href="#"><button class="button-28" role="button">Começar</button></a>
          </div>
      </div> GEOGRAFIA -->

      <!-- <div class="secao laranja">
        <h2><i class="fa-solid fa-flask"></i> Ciências</h2>
          <div class="topicos">
            <a href="#"><button class="button-28" role="button">Começar</button></a>    
          </div>
      </div> CIÊNCIAS -->

      <!-- <div class="secao amarelo">
        <h2><i class="fa-solid fa-landmark"></i> História</h2>
          <div class="topicos">
            <a href="#"><button class="button-28" role="button">Começar</button></a>
          </div>
      </div> HISTÓRIA  -->

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
  
  <script src="java.js"></script>

</body>
</html>