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
        <h2>Inscritpion</h2>
        
        <form method="POST" id="registration">
            <div class="firstname">
                <label for="firstname">Prénom</label>
                <input type="text" name="firstname"  id="firstname" />
            </div>
            <div class="lastname">
                <label for="lastname">Nom de famille</label>
                <input type="text" name="lastname"  id="lastname" />
            </div>
            <div class="email">
                <label for="email">Email</label>
                <input type="text" name="email"  id="email" />
            </div>
            <div class="password">
                <label for="password">Mot de passe</label>
                <input type="password" name="password"  id="password" />
            </div>      
            <div class="btn">
                <button>Valider</button>
            </div>      
        </form>

        <div class="form_error">
            <?php if($mistake_form == true): ?>
                <p>Erreur de remplissage du formulaire</p>
            <?php endif; 
            if($unavailable_email == true): ?>
                <p>Email déjà pris</p>
            <?php endif; ?>
        </div>
    </main>
    <script src="../views/js/registration.js"></script>
</body>
</html>