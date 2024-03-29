<?php
require('../../source/includes/connect.php');

if (!$conexao) {
    die("Falha na conexão com o banco de dados: " . mysqli_connect_error());
}

$r_usuario = [];

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Processamento do formulário (após o envio)
    foreach ($_POST as $questao => $resposta) {
        // Verifica se a resposta é uma questão válida (começa com 'q')
        if (substr($questao, 0, 1) == 'q') {
            $r_usuario[$questao] = $resposta;
        }
    }
}

// Seleciona as respostas corretas do banco de dados
$sql = "SELECT correct_option FROM etec_questions";
$result = mysqli_query($conexao, $sql);

if (mysqli_num_rows($result) > 0) {
    $pontuacao = 0;
    $total_questoes = mysqli_num_rows($result);

    // Calcula a pontuação do usuário
    while ($row = mysqli_fetch_assoc($result)) {
        $questao_id = 'q' . ($total_questoes - mysqli_num_rows($result) + 1);
        
        if (isset($r_usuario[$questao_id]) && strtolower($r_usuario[$questao_id]) === strtolower($row['correct_option'])) {
            $pontuacao++;
        }
    }

    // Calcula a pontuação em porcentagem e arredonda para uma casa decimal
    $pontuacao_percent = round(($pontuacao / $total_questoes) * 100, 1);

    echo "Pontuação do usuário: $pontuacao de $total_questoes questões corretas. ";
    echo "Isso equivale a $pontuacao_percent% de acertos.";
} else {
    echo "Nenhuma resposta correta encontrada no banco de dados.";
}

mysqli_close($conexao);
?>
