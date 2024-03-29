<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="wcod_questionth=device-wcod_questionth, initial-scale=1.0">
    <title>Simulado do Vestibulinho ETEC 2024 - 1° Semestre</title>
</head>
<body>
    <?php
    require('../../../source/includes/connect.php'); 
    if(!$conexao) {
        die("Falha na conexão com o banco de dados: " . mysqli_connect_error());
    }

    // Seleciona as questões do banco de dados
    $start_question = 1; // Começa da primeira questão
    $end_question = 16; // Exibe até a quinta questão
    $sql = "SELECT * FROM tbQuestions WHERE cod_question BETWEEN $start_question AND $end_question";
    $result = $conexao->query($sql);

    // Verifica se há questões
    if ($result->num_rows > 0) {
        echo "<form method='post' action='../../SubPags/calcular_pontuacao.php'>"; // Corrigcod_questiono o caminho do action
        // Exibe as questões com o formulário para seleção de respostas
        while ($row = $result->fetch_assoc()) {
            echo "<h2>Pergunta:</h2>";
            // imagem/imagens aqui
            echo "<p>" . $row['text_question'] . "</p>";
            echo "<ul>";
            echo "<li><input type='radio' name='q{$row['cod_question']}' value='A'>" . $row['option_a'] . "</li>";
            echo "<li><input type='radio' name='q{$row['cod_question']}' value='B'>" . $row['option_b'] . "</li>";
            echo "<li><input type='radio' name='q{$row['cod_question']}' value='C'>" . $row['option_c'] . "</li>";
            echo "<li><input type='radio' name='q{$row['cod_question']}' value='D'>" . $row['option_d'] . "</li>";
            echo "<li><input type='radio' name='q{$row['cod_question']}' value='E'>" . $row['option_e'] . "</li>";
            echo "</ul>";
        }
        echo "<input type='submit' value='Enviar Respostas'>";
        echo "</form>";
    } else {
        echo "Nenhuma questão encontrada no banco de dados.";
    }

    mysqli_close($conexao);
    ?>
    <h2>Simulado do Vestibulinho ETEC 2024 - 1° Semestre</h2>
    
</body>
</html>
