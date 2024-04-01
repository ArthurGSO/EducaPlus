<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="wcod_questionth=device-wcod_questionth, initial-scale=1.0">
    <title>Simulado do Vestibulinho ETEC 2024 - 1° Semestre</title>
</head>
<body>
    <h2>Simulado do Vestibulinho ETEC 2024 - 1° Semestre</h2>
    <?php
        require('../../../source/includes/connect.php'); 
        if(!$conexao) {
            die("Falha na conexão com o banco de dados: " . mysqli_connect_error());
        }

        // Seleciona as questões do banco de dados
        $start_question = 1; // Começa da primeira questão
        $end_question = 50; // Exibe até a quinta questão
        $sql = "SELECT * FROM tbQuestions WHERE cod_question BETWEEN $start_question AND $end_question";
        $result = $conexao->query($sql);

        // Verifica se há questões
        if ($result->num_rows > 0) {
            echo "<form method='post' action='../../SubPags/calcular_pontuacao.php'>"; 
            // Exibe as questões com o formulário para seleção de respostas
            while ($row = $result->fetch_assoc()) {
                echo "<h2>Pergunta:</h2>";
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
            }
            
            echo "<input type='submit' value='Enviar Respostas'>";
            echo "</form>";
        } else {
            echo "Nenhuma questão encontrada no banco de dados.";
        }

        mysqli_close($conexao);
    ?>
</body>
</html>
