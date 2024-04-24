<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="style.css">

    <!-- IMPORT BOXICONS -->
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>

    <aside class="close">
        
        <div class="head">
            <div class="logo">
                
                <a href="index.html" class="logo">Educa<span>Plus</span><i class='bx bx-pen bx-flip-vertical bx-tada' style='color:#0095f7' ></i></a>
            </div>
            <i class='bx bx-menu hamburger-menu'></i>
        </div>

        <div class="nav">
            <div class="menu">
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
                    <span class="menu">ETEC 2023</span>


                </div>
            </div>
            <div class="menu">
          
                <i class='bx bx-question-mark'></i>
                <span>Questões</span>
                <i class="bx bx-chevron-down"></i>
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

            

            <div class="menu active">
                <i class="bx bx-cog"></i>
                <span><a href="configuracoes.html">
                    Configurações
        </a></span>
            </div>

            <div class="menu" style="pointer-events: none;"></div>
        </div>

        <div class="foot">
            <div class="profile">
                <img src="img/1381432-Solo-Leveling-Sung-Jinwoo.jpg" alt="profile">
                <div class="info">
                    <span class="name">Pablo Marques</span>
                   
                </div>
            </div>

            <div class="menu menu-logout">
                <i class="bx bx-log-out"></i>
                <span>Sair</span>
            </div>
        </div>

    </aside>


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

</body>
</html>