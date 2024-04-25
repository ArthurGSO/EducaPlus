<?php
date_default_timezone_set('America/Sao_Paulo'); 
session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Processamento do formulário
    if (isset($_POST['enviar_respostas'])) {

        // Obtém os dados do formulário
        $ano_prova = $_POST['ano_prova'] ?? null;
        $semestre_prova = $_POST['semestre_prova'] ?? null;
        
        // Armazena os dados na sessão
        $_SESSION['ano_prova'] = $ano_prova;
        $_SESSION['semestre_prova'] = $semestre_prova;

        // Aqui você processa as respostas e encaminha para a página de cálculo de pontuação
        header("Location: ../../SubPags/calcular_pontuacao.php");
        exit();
    } elseif (isset($_POST['salvar_progresso'])) {
        // Processamento para salvar o progresso na sessão
        foreach ($_POST as $key => $value) {
            if ($key != 'ano_prova' && $key != 'semestre_prova') {
                $_SESSION[$key] = $value;
            }
        } // Salva os dados do formulário na sessão
        $_SESSION['ano_prova'] = $_POST['ano_prova']; // Armazenando o ano da prova na sessão
        $_SESSION['semestre_prova'] = $_POST['semestre_prova']; // Armazenando o semestre da prova na sessão
        echo "Progresso da prova salvo com sucesso!";
        header("Location: prova1.php");
        exit();
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simulado do Vestibulinho ETEC 2023 - 1° Semestre</title>
    <link rel="stylesheet" href="../prova.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <style>
        .floating-button {
            position: fixed;
            bottom: 20px;
            right: 20px;
            z-index: 1000; /* Garante que o botão fique acima de outros elementos */
            background-color: #0095f7; /* Cor de fundo do botão */
            color: #fff; /* Cor do texto */
            border: none; /* Remove a borda */
            border-radius: 50%; /* Deixa o botão com formato circular */
            padding: 15px; /* Espaçamento interno */
            font-size: 18px; /* Tamanho do texto */
            cursor: pointer; /* Muda o cursor ao passar por cima */
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2); /* Adiciona sombra */
        }

        .floating-button:hover {
            background-color: #007bb5; /* Cor de fundo ao passar por cima */
        }
    </style>
   
</head>
<body>
<aside class="close">
        
        <div class="head">
            <div class="logo">
                <a href="../../../index.php" class="logo">Educa<span>Plus</span><i class='bx bx-pen bx-flip-vertical bx-tada' style='color:#0095f7' ></i></a>
            </div>
            <i class='bx bx-menu hamburger-menu'></i>
        </div>

        <div class="nav">
        <div class="menu">
                <i class='bx bxs-home'></i>
                <span><a href="../../principal.php">Home</a></span>
                </div>
            <div class="menu active">
                <i class="bx bx-task"></i>
                <span>Provas</span>
                <i class="bx bx-chevron-down"></i>
            </div>

            <div class="menu-dropdown">
                <div class="sub-menu">
                    <span class="menu"><a href="prova1.php">ETEC 2015 1° Semestre</span></a>
                    <span class="menu"><a href="prova2.php">ETEC 2015 2° Semestre</span></a>
                    <span class="menu"><a href="../2019/prova1.php">ETEC 2019 1° Semestre</span></a>
                    <span class="menu"><a href="../2019/prova2.php">ETEC 2019 2° Semestre</span></a> 
                    <span class="menu"><a href="../2020/prova1.php">ETEC 2020 1° Semestre</span></a>
                    <span class="menu"><a href="../2022/prova2.php">ETEC 2022 1° Semestre</span></a>
                    <span class="menu"><a href="../2023/prova1.php">ETEC 2023 1° Semestre</span></a>
                    <span class="menu"><a href="../2023/prova2.php">ETEC 2023 2° Semestre</span></a>
                    <span class="menu"><a href="../2024/prova1.php">ETEC 2024 1° Semestre</span></a>
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
                <span><a href="../../desempenho.php">Desempenho</a></span>
            </div>

            <div class="menu">
                <i class="bx bx-cog"></i>
                <span><a href="configuracoes.html">Configurações</a></span>
            </div>
            
            <div class="menu" style="pointer-events: none;"></div>
        </div>

        <div class="foot">
            <div class="profile">
                <img src="../../../source/img/1381432-Solo-Leveling-Sung-Jinwoo.jpg" alt="profile">
                <div class="info">
                    <span class="name">
                    <h1> <?php
                           echo $_SESSION['user'];                      
                        ?>       </h1>               
                    </span>
                </div>
            </div>

            <button id="openPopup" class="opnen"> 
    <div class="menu menu-logout">
    <i class="bx bx-log-out"></i>
    <span>      Sair   </span></button>
    <div id="popup" class="popup"> 
    <div class="popup-content">
    <span class="fecha" id="closePopup">&times;</span>
    <p>Confirmar saída?</p>
    <a href="../source/includes/logout.php"> <button type="submit" class="btnlogout">Sair</button></a>
    <a href="desempenho.php"> <button class="bai" type="submit">Não</button></a>
            </div>
        </div>
</div>
</div>
</div>
    </aside>
<body>
    <?php
    require('../../../source/includes/connect.php'); 
    if(!$conexao) {
        die("Falha na conexão com o banco de dados: " . mysqli_connect_error());
    }

    // Seleciona as questões do banco de dados
    $start_question = 641; // Começa da primeira questão
    $end_question = 690; // Exibe até a quinta questão
    $sql = "SELECT * FROM tbQuestions WHERE cod_question BETWEEN $start_question AND $end_question";
    $result = $conexao->query($sql);

    // Inicializa o contador de questões
    $contador_questao = 1;

    // Verifica se há questões
    if ($result->num_rows > 0) {
        echo "<form method='post' action='../../SubPags/calcular_pontuacao.php'>"; // Corrigindo o caminho do action
        // Exibe as questões com o formulário para seleção de respostas
        while ($row = $result->fetch_assoc()) {
            echo "<div class='container'>";
            echo "<h2 class='questao'>Questão $contador_questao:</h2>";// Exibe o número da questão
            // Recupera e exibe as imagens associadas à pergunta
            $cod_question = $row['cod_question'];
            $sql_imagens = "SELECT image_data FROM tbImagens WHERE cod_question = $cod_question";
            $result_imagens = $conexao->query($sql_imagens);
            while ($row_imagem = $result_imagens->fetch_assoc()) {
                echo "<img src='{$row_imagem['image_data']}' alt='Imagem da pergunta'>";
            }
            echo "<p class='questao'>" . $row['text_question'] . "</p>";
            echo "<ul>";
            // Verifica se há uma resposta armazenada na sessão e a marca como selecionada
            $resposta_sessao = isset($_SESSION["q{$row['cod_question']}"]) ? $_SESSION["q{$row['cod_question']}"] : '';
            echo "<li class='opcao'><input type='radio' name='q{$row['cod_question']}' value='A' " . ($resposta_sessao == 'A' ? 'checked' : '') . ">" . $row['option_a'] . "</li>";
            echo "<li class='opcao'><input type='radio' name='q{$row['cod_question']}' value='B' " . ($resposta_sessao == 'B' ? 'checked' : '') . ">" . $row['option_b'] . "</li>";
            echo "<li class='opcao'><input type='radio' name='q{$row['cod_question']}' value='C' " . ($resposta_sessao == 'C' ? 'checked' : '') . ">" . $row['option_c'] . "</li>";
            echo "<li class='opcao'><input type='radio' name='q{$row['cod_question']}' value='D' " . ($resposta_sessao == 'D' ? 'checked' : '') . ">" . $row['option_d'] . "</li>";
            echo "<li class='opcao'><input type='radio' name='q{$row['cod_question']}' value='E' " . ($resposta_sessao == 'E' ? 'checked' : '') . ">" . $row['option_e'] . "</li>";
            echo "</ul>";
            echo "</div>";
            
            // Incrementa o contador de questões
            $contador_questao++;
        }
        echo "<input type='hidden' name='ano_prova' value='2015'>";
        echo "<input type='hidden' name='semestre_prova' value='1'>";
        echo "<input type='submit' name='enviar_respostas' value='Enviar Respostas'>";
        // Botão flutuante -->
        echo "<div class='form-group'>";
        echo "<input type='hidden' name='ano_prova' value='2015'>";
        echo "<input type='hidden' name='semestre_prova' value='1'>";
        echo "<button type='submit' name='salvar_progresso' class='floating-button'>Salvar Progresso</button>";
        echo "</div>";
        echo "</form>";
    } else {
        echo "Nenhuma questão encontrada no banco de dados.";
    }

    mysqli_close($conexao);
    ?>
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
  
        document.getElementById('openPopup').addEventListener('click', function() {
            document.getElementById('popup').style.display = 'block';
        });
 
        document.getElementById('closePopup').addEventListener('click', function() {
            document.getElementById('popup').style.display = 'none';
        });
    </script>

    <script>
        $(document).ready(function(){
            $(window).scroll(function(){
                if ($(this).scrollTop() > 100) {
                    $('.floating-button').fadeIn();
                } else {
                    $('.floating-button').fadeOut();
                }
            });
        });
    </script>

</body>
    
</html>
