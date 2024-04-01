<?php

	$r_corretas = [
    'q1' => 'b', 'q2' => 'c', 'q3' => 'b', 'q4' => 'd', 'q5' => 'd', 'q6' => 'b', 'q7' => 'c', 'q8' => 'c', 'q9' => 'd', 'q10' => 'd', 'q11' => 'e', 'q12' => 'c', 'q13' => 'b', 'q14' => 'd', 'q15' => 'd', 'q16' => 'c', 'q17' => 'd', 'q18' => 'b', 'q19' => 'e', 'q20' => 'c', 'q21' => 'd', 'q22' => 'd', 'q23' => 'b', 'q24' => 'a', 'q25' => 'd', 'q26' => 'e', 'q27' => 'b', 'q28' => 'e', 'q29' => 'b', 'q30' => 'e', 'q31' => 'e', 'q32' => 'c', 'q33' => 'e', 'q34' => 'b', 'q35' => 'c', 'q36' => 'e', 'q37' => 'd', 'q38' => 'a', 'q39' => 'c', 'q40' => 'b', 'q41' => 'c', 'q42' => 'a', 'q43' => 'd', 'q44' => 'b', 'q45' => 'd', 'q46' => 'b', 'q47' => 'b', 'q48' => 'c', 'q49' => 'c', 'q50' => 'a'
	];

	$r_usuario = [];

	$i = 1;

	if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Enquanto houver questões no formulário (até a q50), verifique e armazene as respostas

	    while ($i <= 100) {
	        $questao = 'q' . $i; // Determina o nome da questão
	        // Verifica se a questão foi respondida e adiciona a resposta ao array $respostas_usuario
	        if (isset($_POST[$questao])) {
	            $r_usuario[$questao] = $_POST[$questao];
	        }
	        $i++; // Incrementa o contador para passar para a próxima questão
	    }
	}
	// Verifica se a respota do formulário foi recebida corretamente
	foreach ($r_usuario as $questao => $resposta) {
    echo "Questão: $questao - Resposta: $resposta<br>";
	}

	$total_questoes = count($r_corretas);
	$pontuacao = 0;

	// Calcula a pontução do usuário
	foreach ($r_corretas as $questao => $r_corretas) {
		// Verifica se o usuário respondeu a questão e se está correta
		if (isset($r_usuario[$questao]) && $r_usuario[$questao] === $r_corretas) {
			$pontuacao++;
		}
	}

	// Calcula a pontuação em porcentagem
	$pontuacao_percent = ($pontuacao / $total_questoes) * 100;

	echo "Pontução do usuário: $pontuacao de $total_questoes questões corretas. ";
	echo "isso equivale a $pontuacao_percent% de acertos.";
?> 
