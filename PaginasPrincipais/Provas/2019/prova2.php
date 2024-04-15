<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="wcod_questionth=device-wcod_questionth, initial-scale=1.0">
    <title>Simulado do Vestibulinho ETEC 2019 - 2° Semestre</title>
</head>
<body>
    <h2>Simulado do Vestibulinho ETEC 2019 - 2° Semestre</h2>
    <?php
    require('../../../source/includes/connect.php'); 
    if(!$conexao) {
        die("Falha na conexão com o banco de dados: " . mysqli_connect_error());
    }

    // Seleciona as questões do banco de dados
    $start_question = 291; // Começa da primeira questão
    $end_question = 340; // Exibe até a quinta questão
    $sql = "SELECT * FROM tbQuestions WHERE cod_question BETWEEN $start_question AND $end_question";
    $result = $conexao->query($sql);

    // Inicializa o contador de questões
    $contador_questao = 1;

    // Verifica se há questões
    if ($result->num_rows > 0) {
        echo "<form method='post' action='../../SubPags/calcular_pontuacao.php'>"; // Corrigindo o caminho do action
        // Exibe a imagem de apresentação
        $img = 'imgs2/apresentacao.PNG';
            if ( file_exists($img)) {
                echo "<img src='imgs2/apresentacao.PNG' alt='Imagem de apresentação da prova'>";
            }
        // Exibe as questões com o formulário para seleção de respostas
        while ($row = $result->fetch_assoc()) {
            echo "<h2>Questão $contador_questao:</h2>"; // Exibe o número da questão
            // Recupera e exibe as imagens associadas à pergunta
            $cod_question = $row['cod_question'];
            $sql_imagens = "SELECT image_data FROM tbImagens WHERE cod_question = $cod_question";
            $result_imagens = $conexao->query($sql_imagens);
            while ($row_imagem = $result_imagens->fetch_assoc()) {
                echo "<img src='{$row_imagem['image_data']}' alt='Imagem da pergunta'>";
            }
            echo "<p>" . $row['text_question'] . "</p>";
            echo "<ul>";
            echo "<li><input type='radio' name='q{$row['cod_question']}' value='A'>" . $row['option_a'] . "</li>";
            echo "<li><input type='radio' name='q{$row['cod_question']}' value='B'>" . $row['option_b'] . "</li>";
            echo "<li><input type='radio' name='q{$row['cod_question']}' value='C'>" . $row['option_c'] . "</li>";
            echo "<li><input type='radio' name='q{$row['cod_question']}' value='D'>" . $row['option_d'] . "</li>";
            echo "<li><input type='radio' name='q{$row['cod_question']}' value='E'>" . $row['option_e'] . "</li>";
            echo "</ul>";
            
            // Incrementa o contador de questões
            $contador_questao++;
        }
        echo "<input type='hidden' name='ano_prova' value='2019'>";
        echo "<input type='hidden' name='semestre_prova' value='2'>";
        echo "<input type='submit' value='Enviar Respostas'>";
        echo "</form>";
    } else {
        echo "Nenhuma questão encontrada no banco de dados.";
    }

    mysqli_close($conexao);
    ?>
    
    
</body>
</html>
