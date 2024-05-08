<?php
    require('../source/includes/connect.php');
    date_default_timezone_set('America/Sao_Paulo'); 

    $cod_usuario = $_SESSION['id'];

    $sql = "SELECT questoes_corretas, questoes_erradas, pontuacao_percent FROM tbResults WHERE cod_usuario = $cod_usuario";
    $result = $conexao->query($sql);

    $total_corretas = 0;
    $total_incorretas = 0;
    $media_percentual = 0;
    $total_simulados = 0;
    $taxa_acerto = 0;

    if ($result->num_rows > 0) {
        // Loop através de cada entrada do usuário
        while ($row = $result->fetch_assoc()) {
            // Obter os dados de desempenho de cada entrada
            $questoes_corretas = $row["questoes_corretas"];
            $questoes_erradas = $row["questoes_erradas"];
            $pontuacao_percent = $row["pontuacao_percent"];
            
            // Somar as questões corretas e incorretas
            $total_corretas += $questoes_corretas;
            $total_incorretas += $questoes_erradas;
            
            // Calcular a média do percentual de acerto
            $media_percentual += $pontuacao_percent;

            // Incrementar o número total de simulados
            $total_simulados++;
        }
        
        // Calcular a média do percentual de acerto
        $media_percentual /= $result->num_rows;
        // Formatar o percentual para 2 dígitos após a vírgula
        $media_percentual = number_format($media_percentual, 2)."%";

        // Calcular a taxa de acerto
        $total_questoes = $total_corretas + $total_incorretas;
        $taxa_acerto = ($total_corretas / $total_questoes) * 100;
        $taxa_acerto = number_format($taxa_acerto, 2)."%";
        
    }
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

<aside class="close">
        
        <div class="head">
            <div class="logo">
                <a href="#" class="logo">Educa<span>Plus</span><i class='bx bx-pen bx-flip-vertical bx-tada' style='color:#0095f7' ></i></a>
            </div>
            <i class='bx bx-menu hamburger-menu'></i>
        </div>

        <div class="nav">
            <div class="menu">
                <i class='bx bxs-home'></i>
                <span><a href="principal.php">Home</a></span>
                </div>
            <div class="menu">
                <i class="bx bx-task"></i>
                <span>Provas</span>
                <i class="bx bx-chevron-down"></i>
            </div>

            <div class="menu-dropdown">
                <div class="sub-menu">
                <span class="menu"><a href="../PaginasPrincipais/Provas/2015/prova1.php">ETEC 2015 1° Semestre</span></a>
                    <span class="menu"><a href="../PaginasPrincipais/Provas/2015/prova2.php">ETEC 2015 2° Semestre</span></a>
                    <span class="menu"><a href="../PaginasPrincipais/Provas/2019/prova1.php">ETEC 2019 1° Semestre</span></a>
                    <!-- <span class="menu"><a href="../PaginasPrincipais/Provas/2019/prova2.php">ETEC 2019 2° Semestre</span></a> SEM QUESTOES -->
                    <span class="menu"><a href="../PaginasPrincipais/Provas/2020/prova1.php">ETEC 2020 1° Semestre</span></a>
                    <span class="menu"><a href="../PaginasPrincipais/Provas/2022/prova2.php">ETEC 2022 1° Semestre</span></a>
                    <span class="menu"><a href="../PaginasPrincipais/Provas/2023/prova1.php">ETEC 2023 1° Semestre</span></a>
                    <span class="menu"><a href="../PaginasPrincipais/Provas/2023/prova2.php">ETEC 2023 2° Semestre</span></a>
                    <span class="menu"><a href="../PaginasPrincipais/Provas/2024/prova1.php">ETEC 2024 1° Semestre</span></a>
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

            <div class="menu active">
                <i class='bx bx-bar-chart-alt'></i>
                <span><a href="desempenho.php">Desempenho</a></span>
            </div>

            <div class="menu">
            
                <i class="bx bx-cog"></i>
                <span> <a href="configuracoes.php">Configurações </a></span>
            </div>
            
            <div class="menu" style="pointer-events: none;"></div>
        </div>

        <div class="foot">
            <div class="profile">
                <img src="../source/img/1381432-Solo-Leveling-Sung-Jinwoo.jpg" alt="profile">
                <div class="info">
                    <span class="name">
                      <h1>
                      <span><?php echo ucwords($_SESSION['user']); ?></span></h1>
                                      
                    </span>
                  
                </div>
            </div>
<!-- pop up de sair -->
<button id="dark-mode-toggle">DarkMode</button>
<button id="openPopup" class="opnen"> 
    <div class="menu menu-logout">
                <i class="bx bx-log-out"></i>
                <span>      Sair   </span></button>

                <div id="popup" class="popup"> 
                <div class="popup-content">
                <span class="fecha" id="closePopup"><i class='bx bx-x'></i></span>
    <p>Confirmar saída?</p>
    <a href="../source/includes/logout.php"> <button type="submit" class="btnlogout">Sair</button></a>
    <a href="principal.php"> <button class="bai" type="submit">Não</button></a>

    </div>
    </div>

        </div>


        </div>
        </div>
        </div>

    </aside> <!-- LEFT MENU -->

    <section class="dese">
        <div class="princi">
            <h1>Desempenho</h1>

            <div class="config-container">
                <div class="config-box">
                    <h4>Médias percentual dos simulados: </h4>
                        <h1>
                            <?php echo $media_percentual;?>
                        </h1>
                </div> <!-- PERCENTUAL --> 

                <div class="acerto">
                    <p>Questões que acertei: 
                        <?php echo $total_corretas;?>
                    </p>                   
                </div> <!-- QUESTÕES ACERTADAS -->

                <div class="erro">
                    <p>Questões que errei: 
                        <?php echo $total_incorretas;?>
                    </p>
                </div> <!-- QUESTÕES ERRADAS -->

                <!-- <div class="matuniversal">
                    <p>Matéria com a maior taxa de acerto: Português

                    </p>
                </div> --> <!-- MATÉRIA > TAXA ACERTO -->

                <!-- <div class="matuniversal">
                    <p>Matéria com a menor taxa de acerto: Geografia

                    </p>
                </div> --> <!-- MATÉRIA < TAXA ACERTO -->

                <div class="matuniversal">
                    <p>Simulados feitos:
                        <?php echo $total_simulados; ?>
                    </p>
                </div> <!-- SIMULADOS FEITOS -->

                <div class="matuniversal">
                    <p>Taxa de acertos geral: 
                        <?php echo $taxa_acerto; ?>
                    </p>                    
                </div> <!-- TAXA DE ACERTO GERAL SIMLULADOS -->

                <!-- <div class="matuniversal">
                    <p>Matérias que você precisa revisar</p>
                    <h2></h2>
                    <table>
                        <thead>
                            <tr>
                                <th>Disciplina</th>
                                <th>Conteúdo</th> 
                                <th>Qtd. de questões</th>
                                <th>% de erro</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Matemática</td>
                                <td>Trigonometria</td>
                                <td>25</td>
                                <td>65%</td>
                            </tr>
                        --><!-- Adicione mais linhas conforme necessário --> <!--
                        </tbody>
                    </table>
                </div> --> <!-- MATÉRIAS P/ REVISAR -->
                
            </div> <!-- TABELA DESEMPENHO -->
        </div> 
    </section> <!-- SEÇÃO DE DESEMPENHHO -->

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