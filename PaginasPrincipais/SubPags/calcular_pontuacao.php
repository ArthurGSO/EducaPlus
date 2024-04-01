<?php
require('../../source/includes/connect.php');

// Verifica se a conexão com o banco de dados foi estabelecida com sucesso
if (!$conexao) {
    die("Falha na conexão com o banco de dados: " . mysqli_connect_error());
}

$r_usuario = [];
$ano_prova = $_POST['ano_prova'] ?? null;
$semestre_prova = $_POST['semestre_prova'] ?? null;

// Verifica se o formulário foi submetido via método POST e se foram fornecidos o ano e semestre da prova
if ($_SERVER["REQUEST_METHOD"] == "POST" && $ano_prova !== null && $semestre_prova !== null) {
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

        // Calcula a pontuação do usuário
        while ($row = mysqli_fetch_assoc($result)) {
            $questao_id = 'q' . $row['cod_question'];
            
            if (isset($r_usuario[$questao_id]) && strtolower($r_usuario[$questao_id]) === strtolower($row['correct_option'])) {
                $pontuacao++;
            }
        }

        // Calcula a pontuação em porcentagem e arredonda para uma casa decimal
        $pontuacao_percent = round(($pontuacao / $total_questoes) * 100, 1);

        echo "Pontuação do usuário: $pontuacao de $total_questoes questões corretas. ";
        echo "Isso equivale a $pontuacao_percent% de acertos.";
    } else {
        echo "Nenhuma pergunta encontrada para o ano $ano_prova e semestre $semestre_prova.";
    }
} else {
    echo "Erro: Ano e/ou semestre da prova não foram fornecidos.";
}

// Fecha a conexão com o banco de dados
mysqli_close($conexao);
?>
