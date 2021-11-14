<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mes candidatures</title>
    <link rel="stylesheet" href="../views/css/style.css">
</head>
<body>
    <header>
        <?php  include '../views/templates/header.php'; ?>
    </header>
    <main>
        <h2>Connexion</h2>
        <form id="login_form" method="POST">
            <div class="email">
                <label for="email">Email</label>
                <input type="text" name="email"  id="email" />
            </div>
            <div class="password">
                <label for="password">Mot de passe</label>
                <input type="password" name="password"  id="password" />
            </div>
            <?php if(isset($wrongConnection)): ?>
                <div class="wrong_connection">
                    <p>Le nom d'utilisateur ou le mot de passe est incorrect</p>
                </div>
            <?php endif;  ?>
            <div class="btn">
                <button>Valider</button>
            </div> 
        </form>
    </main>
    <script src="views/js/login.js"></script>
</body>
</html>