<?php
include('../../source/includes/connect.php');
#Cadastrando User no BD

    if (isset($_POST['name']) || isset($_POST['email']) || isset($_POST['number']) || isset($_POST['password'])) {

        $nome = $_POST['name'];
        $email = $_POST['email'];
        $telefone = $_POST['number'];
        $senha = $_POST['password'];
        $cadastro = date("Y-m-d H:i:s");
        $senhacry = password_hash($senha, PASSWORD_DEFAULT);
        $sql = "INSERT INTO tbUsuarios(nome_usuario, email_usuario, celular, senha, data_cadastro)VALUES(?, ?, ?, ?, '$cadastro')";
        $stmt = $conexao->prepare($sql);
        if (!$stmt) {
            die("Erro na preparação stmt".$conexao->error);
        }
        $stmt->bind_param("ssss", $_POST['name'], $_POST['email'], $_POST['number'], password_hash($_POST['password'], PASSWORD_DEFAULT));
        if ($stmt->execute()) {
            $cadastro = 1;
        } else {
            // Erro ao executar a declaração
            echo "Erro ao cadastrar os dados: " . $stmt->error;
        }
        
            
    } else {

            echo "problema no cadastramento dos dados";
        }
?>
<!DOCTYPE html>
<html lang="pt-br">
    <script src="https://unpkg.com/boxicons@2.1.4/dist/boxicons.js"></script>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel='stylesheet' type='text/css' media='screen' href='../../style.css'>
    <script src="https://unpkg.com/boxicons@2.1.4/dist/boxicons.js"></script>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro</title>
</head>

<body>
    <div class="circle"></div>
    <div class="circle2"></div>
   
    <section class="cadastro">
    <header class="header">
        <a href="../../index.php" class="logo">Educa<span>Plus</span><i class='bx bx-pen bx-flip-vertical bx-tada' style='color:#352eab' ></i></a>
       
       
        
    </header>
    <div class="container">
        <div class="form-image">
            <img src="../../source/img/4871d9279dcf1c108c0dd3c325844b6a.png" alt="img">
        </div>
        <div class="form">
            <form onsubmit="return verificarSenhas()" action="cadastro.php" method="post">
                <div class="form-header">
                    <div class="title">
                        <h1>Cadastre-se</h1>
                    </div>
                </div>

                <div class="input-group">
                    <div class="input-box">
                        <label for="name">Nome</label>
                        <input id="name" type="text" name="name" placeholder="Digite seu nome" required maxlength="30">
                    </div>
                    
                    <div class="input-box">
                        <label for="email">E-mail</label>
                        <input id="email" type="email" name="email" placeholder="Digite seu e-mail" required maxlength="50">
                    </div>

                    <div class="input-box">
                        <label for="number">Celular</label>
                        <input id="number" type="tel" name="number" placeholder="(xx) xxxx-xxxx" required maxlength="11">
                    </div>

                    <div class="input-box">
                        <label for="password">Senha</label>
                        <input id="password" type="password" name="password" placeholder="Digite sua senha" required>
                    </div>

                    <div class="input-box">
                        <label for="confirmPassword">Confirme sua Senha</label>
                        <input id="confirmPassword" type="password" name="confirmPassword" placeholder="Digite a senha novamente" required>
                    </div>

                </div>

                <div class="continue-button">
                    <button><a href="#">Cadastrar</a> </button>
                </div>
            </form>
        </div>
    </div>
    </section>
<?php
    if (isset($cadastro) == 1) {

        echo "<p><br><br><br><br><br><br><br><br>Cadastro efetuado!!<br>Verifique o seu email!!!</p>";
        sleep(2);
        loginRedirect();
        
    }
?>

<script>
    function verificarSenhas() {
        var senha = document.getElementById("password").value;
        var confirmarSenha = document.getElementById("confirmPassword").value;

        if (senha !== confirmarSenha) {
            alert("As senhas não são iguais. Por favor, digite novamente.");
            return false;
        }
        return true;
    }
</script>

</body>
</html>