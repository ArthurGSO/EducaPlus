<?php
    require '../../../source/Library/pdfparser-2.9.0/alt_autoload.php-dist'; // Carrega biblioteca para processamento de PDF (exemplo: TCPDF)

    use Smalot\PdfParser\Parser;

    if ($_FILES['pdf_file']['error'] == UPLOAD_ERR_OK && isset($_FILES['pdf_file']['tmp_name'])) {

        // Caminho do arquivo PDF
        $file_path = "../../../source/pdfs/Prova1S2024.pdf";

        // Inicializa o parser PDF
        $parser = new Parser();
        $pdf = $parser->parseFile($file_path);

        $text = '';

        // Extrai texto de todas as páginas do PDF
        foreach ($pdf->getPages() as $page) {
            $text .= $page->getText();
        }

        // Aqui você pode prosseguir com o processamento do texto, como montar um formulário ou calcular pontuações
        // Exemplo: Montar um formulário
        echo '<form action="processa_formulario.php" method="post">';
        echo '<textarea name="texto_pdf">' . $text . '</textarea>';
        echo '<input type="submit" value="Enviar">';
        echo '</form>';

    } else {
        echo "Erro ao processar o arquivo PDF.";
    }
?>
