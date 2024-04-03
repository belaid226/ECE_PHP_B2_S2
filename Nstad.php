<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ajouter un nouveau standardiste</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background: #dfdfdf;
        }

        .login-box {
            display: flex;
            justify-content: center;
            flex-direction: column;
            width: 440px;
            height: 480px;
            padding: 30px;
        }

        .login-header {
            text-align: center;
            margin: 20px 0 40px 0;
        }

        .login-header header {
            color: #333;
            font-size: 30px;
            font-weight: 600;
        }

        .input-box .input-field {
            width: 100%;
            height: 60px;
            font-size: 17px;
            padding: 0 25px;
            margin-bottom: 15px;
            border-radius: 30px;
            border: none;
            box-shadow: 0px 5px 10px 1px rgba(0, 0, 0, 0.05);
            outline: none;
            transition: .3s;
        }

        .input-field::placeholder {
            font-weight: 500;
            color: #222;
        }

        .input-field:focus {
            width: 105%;
        }

        .forgot {
            display: flex;
            justify-content: space-between;
            margin-bottom: 40px;
        }

        section {
            display: flex;
            align-items: center;
            font-size: 14px;
            color: #555;
        }

        #check {
            margin-right: 10px;
        }

        a {
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        section a {
            color: #555;
        }

        .input-submit {
            position: relative;
        }

        .submit-btn {
            color: #fff; t
            width: 100%;
            height: 60px;
            background: #222;
            border: none;
            border-radius: 30px;
            cursor: pointer;
            transition: .3s;
        }

        .input-submit label {
            position: absolute;
            top: 45%;
            left: 50%;
            color: #fff;
            -webkit-transform: translate(-50%, -50%);
            -ms-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
            cursor: pointer;
        }

        .submit-btn:hover {
            background: #000;
            transform: scale(1.05, 1);
        }

        .sign-up-link {
            text-align: center;
            font-size: 15px;
            margin-top: 20px;
        }

        .sign-up-link a {
            color: #000;
            font-weight: 600;
        }
    </style>
</head>
<body>
    <div class="login-box">
        <div class="login-header">
            <header>Ajouter un nouveau standardiste</header>
        </div>
        <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
            <div class="input-box">
                <input type="text" class="input-field" name="nom" placeholder="Nom" required>
                <input type="text" class="input-field" name="prenom" placeholder="Prénom" required>
                <input type="text" class="input-field" name="username" placeholder="Nom d'utilisateur" required>
                <input type="password" class="input-field" name="password" placeholder="Mot de passe" required>
            </div>
            <div class="input-submit">
                <input type="submit" class="submit-btn" value="Ajouter">
            </div>
        </form>
    </div>
</body>
</html>


    <?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $servername = "127.0.0.1";
        $username = "root"; // Changer selon la configuration de votre base de données
        $password = ""; // Changer selon la configuration de votre base de données
        $dbname = "db";

        $conn = new mysqli($servername, $username, $password, $dbname);

        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        $nom = $_POST['nom'];
        $prenom = $_POST['prenom'];
        $username = $_POST['username'];
        $password = $_POST['password'];
        $role = $_POST['role'];

        $sql = "INSERT INTO standardiste (nom_standardiste, prénom_standardiste, user, PASSWORD, role)
        VALUES ('$nom', '$prenom', '$username', '$password', '$role')";

        if ($conn->query($sql) === TRUE) {
            echo "Nouveau standardiste ajouté avec succès";
        } else {
            echo "Erreur: " . $sql . "<br>" . $conn->error;
        }

        $conn->close();
    }
    ?>
</body>
</html>
