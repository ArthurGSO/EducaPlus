<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>EducaPlus</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='style.css'>
    <script src="https://unpkg.com/boxicons@2.1.4/dist/boxicons.js"></script>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <script src="https://unpkg.com/scrollreveal"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
</head>
<body>
    <header class="header">
        <div id="menu-btn" class="fas fa-bars"></div>
        
        <a href="#" class="logo">Educa<span>Plus</span><i class='bx bx-pen bx-flip-vertical bx-tada' style='color:#352eab' ></i></a>
        <?php
            if(isset($_GET['deluser'])) { echo "<h2><span>Conta apagada com sucesso!!</span></h2>"; }  
        ?>
        <nav class="navegation">
            <a href="#home" class="active">Home</a>
            <a href="">Sobre nós</a>
            <a href="principal.html">Sobre</a>
            <a href="#services">Contato</a>
        </nav>

        <div class="button">
            <a href="PaginasPrincipais/SubPags/cadastro.php"><button class="button-29" role="button">Cadastre-se</button></a>
            <a href="PaginasPrincipais/SubPags/login.php"><button class="button-28" role="button">Login</button></a>

        </div>
    </header>
    <main>
        <section class="home" id="home">
            
            <div class="content">
                <h2>
                    Bem-vindo ao Educa<span>Plus</span> - Moldando mentes brilhantes para um futuro brilhante!</h2>
                <p>No EducaPlus, nós oferecemos uma plataforma de simulados online que visa preparar os alunos para os desafios acadêmicos. Nossa plataforma é projetada para ajudar os alunos a se familiarizarem com o formato dos exames, aprimorar suas habilidades de resolução de problemas e aumentar sua confiança.</p>
                <button class="button-27">Saber Mais</button>
            </div>
          
            <div class="img">
                <!-- lembrar de por imagem aqui -->
                <img src="source/img/undraw_learning_re_32qv.svg" alt="homeimg">
            </div>
        </section>

        <section id="testimonials" class="show animate">
            <img src="source/img/undraw_publish_article_re_3x8h.svg" id="testimonial_chef" alt="">

            <div id="testimonials_content">
                <h2 class="section-title">
                    Depoimentos
                </h2>
                <h3 class="section-subtitle">
                    O que os clientes falam sobre nós
                </h3>

                <div id="feedbacks">
                    <div class="feedback">
                        <img src="source/img/avatar.png" class="feedback-avatar" alt="">

                        <div class="feedback-content">
                            <p>
                                Fulana de Tal
                                <span>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                </span>
                            </p>
                            <p>
                                "Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                Repellat voluptatibus cumque dolor ea est quae alias necessitatibus"
                            </p>
                        </div>
                    </div>

                    <div class="feedback">
                        <img src="source/img/avatar.png" class="feedback-avatar" alt="">

                        <div class="feedback-content">
                            <p>
                                Fulana de Tal
                                <span>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                </span>
                            </p>
                            <p>
                                "Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                Repellat voluptatibus cumque dolor ea est quae alias necessitatibus"
                            </p>
                        </div>
                    </div>

                    <div class="feedback">
                        <img src="source/img/avatar.png" class="feedback-avatar" alt="">

                        <div class="feedback-content">
                            <p>
                                Julhinha do grau
                                <span>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                </span>
                            </p>
                            <p>
                                "Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                Repellat voluptatibus cumque dolor ea est quae alias necessitatibus"
                            </p>
                        </div>
                    </div>
                </div>

                <button class="button-29">
                    Ver mais avaliações
                </button>
            </div>
        </section>
        
    </main>
    <footer>
        <div class="footer">
        <div class="row">
       
        <a href="https://www.instagram.com/tech_solutions_plus?igsh=dmV3empnZ3NsbXR2"><i class="fa-brands fa-instagram"></i></a>
        <a href="#"><i class="fa-brands fa-youtube"></i></a>
        <a href="https://www.tiktok.com/@tech.solutions62?_t=8kXj6z3Oscg&_r=1"><i class="fa-brands fa-tiktok"></i></a>
      
        </div>
        
        <div class="row">
       <p> TechSolutions Copyright © 2024 - Todos direitos reservados </p> 
        </div>
        </div>
        </footer>

    <!-- javascript -->
    <script src="source/javascript/main.js"></script>
</body>
</html>