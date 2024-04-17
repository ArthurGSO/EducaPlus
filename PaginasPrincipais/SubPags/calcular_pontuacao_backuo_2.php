<?php
require('../../source/includes/connect.php');

// Verifica se a conexão com o banco de dados foi estabelecida com sucesso
if (!$conexao) {
    die("Falha na conexão com o banco de dados: " . mysqli_connect_error());
}

$r_usuario = [];
$ano_prova = $_POST['ano_prova'] ?? null;
$semestre_prova = $_POST['semestre_prova'] ?? null;
$user_id = $_SESSION['id'] ?? null; 

// Verifica se o formulário foi submetido via método POST e se foram fornecidos o ano e semestre da prova
if ($_SERVER["REQUEST_METHOD"] == "POST" && $ano_prova !== null && $semestre_prova !== null && $user_id !== null) {
    // Processamento do formulário
    foreach ($_POST as $questao => $resposta) {
        // Verifica se a resposta é uma questão válida (começa com 'q')
        if (substr($questao, 0, 1) == 'q') {
            $r_usuario[$questao] = $resposta;
        }
    }

    // Seleciona as perguntas correspondentes ao ano e semestre da prova
    $sql = "SELECT * FROM tbQuestions WHERE exam_year = $ano_prova AND semestre = '$semestre_prova'";
    $result = mysqli_query($conexao, $sql);

    if ($result && mysqli_num_rows($result) > 0) {
        $pontuacao = 0;
        $total_questoes = mysqli_num_rows($result);
        $acertos = 0;
        $erros = 0;
        $nao_respondidas = 0;
        $questoes_erradas = []; // Armazena as questões respondidas incorretamente

        // Calcula a pontuação do usuário e contabiliza as respostas corretas, incorretas e não respondidas
        while ($row = mysqli_fetch_assoc($result)) {
            $questao_id = 'q' . $row['cod_question'];
            
            if (isset($r_usuario[$questao_id])) {
                if (strtolower($r_usuario[$questao_id]) === strtolower($row['correct_option'])) {
                    $pontuacao++;
                    $acertos++;
                } else {
                    $erros++;
                    // Armazena a questão respondida incorretamente e sua resposta correta
                    $questoes_erradas[] = [
                        'questao' => $questao_id,
                        'resposta_correta' => $row['correct_option']
                    ];
                }
            } else {
                $nao_respondidas++;
            }
        }

        // Calcula a pontuação em porcentagem e arredonda para uma casa decimal
        $pontuacao_percent = round(($pontuacao / $total_questoes) * 100, 1);
        
        // Insere os resultados na tabela tbResults
        $sql_insert = "INSERT INTO tbResults (cod_usuario, exam_year, semestre, total_questoes, pontuacao_percent, questoes_corretas, questoes_erradas) 
                VALUES ('$user_id', '$ano_prova', '$semestre_prova', '$total_questoes', '$pontuacao_percent', '$acertos', '$erros')";
        $result_insert = mysqli_query($conexao, $sql_insert);

        if (!$result_insert) {
            echo "Erro ao inserir resultados na tabela tbResults: " . mysqli_error($conexao);
        }
        
        // Exibe resultados
        echo "Pontuação do usuário: $pontuacao de $total_questoes questões corretas. ";
        echo "Isso equivale a $pontuacao_percent% de acertos.";

        echo "<br><br>";
        echo "Número de questões corretas: $acertos<br>";
        echo "Número de questões erradas: $erros<br>";
        echo "Número de questões não respondidas: $nao_respondidas";

        // Armazena as questões respondidas incorretamente em uma variável de sessão para reutilização posterior
        $_SESSION['questoes_erradas'] = $questoes_erradas;

        // // Exibe as questões respondidas incorretamente e suas respostas corretas
        // if (!empty($questoes_erradas)) {
        //     echo "<br><br>";
        //     echo "Questões Respondidas Incorretamente:";
        //     echo "<br>";
        //     foreach ($questoes_erradas as $questao_errada) {
        //         echo "<br>";
        //         echo "Questão: " . $questao_errada['questao'];
        //         echo "<br>";
        //         echo "Resposta Correta: " . $questao_errada['resposta_correta'];
        //         echo "<br>";
        //     }
        // }

        // PROVA COM ERROS EXIBIDOS

        if(!$conexao) {
            die("Falha na conexão com o banco de dados: " . mysqli_connect_error());
        }
    
        // Seleciona as questões do banco de dados
        $start_question = 141; // Começa da primeira questão
        $end_question = 190; // Exibe até a quinta questão
        $sql = "SELECT * FROM tbQuestions WHERE cod_question BETWEEN $start_question AND $end_question";
        $result = $conexao->query($sql);
    
        // Inicializa o contador de questões
        $contador_questao = 1;
    
        // Verifica se há questões
        if ($result->num_rows > 0) {
            echo "<form method='post' action='../../SubPags/calcular_pontuacao.php'>"; // Corrigindo o caminho do action
            // Exibe a imagem de apresentação
            $img = 'imgs/apresentacao.PNG';
                if ( file_exists($img)) {
                    echo "<img src='imgs/apresentacao.PNG' alt='Imagem de apresentação da prova'>";
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
            echo "<input type='hidden' name='ano_prova' value='2022'>";
            echo "<input type='hidden' name='semestre_prova' value='2'>";
            echo "<input type='submit' value='Ver desempenho da prova'>";
            echo "</form>";
        } else {
            echo "Nenhuma questão encontrada no banco de dados.";
        }


        echo "<br><br>";
        echo "<button><a href='../Provas/$ano_prova/prova$semestre_prova.php'>Voltar</a></button>";
        } else {
        echo "Nenhuma pergunta encontrada para o ano $ano_prova e semestre $semestre_prova.";
    }
} else {
    echo "Erro: Ano e/ou semestre da prova e/ou ID do usuário não foram fornecidos.";
}

// Fecha a conexão com o banco de dados
mysqli_close($conexao);
?>