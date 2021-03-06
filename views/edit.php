<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mes candidatures - Modification</title>
    <link rel="stylesheet" href="../views/css/style.css">
</head>
<body>
    <header>
        <?php  include '../views/templates/header.php'; ?>
    </header>
    <main>
        <h2>Modification d'une candidature</h2>
        <form  method="POST" id="add_application">
            <div class="date">
                <label for="date">Date de candidature</label>
                <input type="date" value="<?= $application['application_date'] ?>" name="date"  id="date" />
            </div>
            <div class="name">
                <label for="name">Nom de l'entreprise</label>
                <input type="text" value="<?= $application['company_name'] ?>" name="name" id="name">
            </div>
            <div class="place">
                <label for="place">Lieu</label>
                <input type="text" value="<?= $application['place'] ?>"  name="place" id="place">  
            </div>
            <div class="website">
                <label for="website">Site Internet</label>
                <input type="text" value="<?= $application['website'] ?>" name="website" id="website">
            </div>
            <div class="link">
                <label for="link">Lien de l'annonce</label>
                <input type="text" value="<?= $application['link'] ?>" name="link" id="link">
            </div>
            <div class="more">
                <label for="more">Informations supplémentaires</label>
                <textarea name="more" id="more" ><?= $application['application_information'] ?></textarea>
            </div>
            <div class="follow_up">
                <label for="follow_up">Relance</label>
                <textarea name="follow_up" id="follow_up" ><?= $application['follow_up'] ?></textarea>
            </div>
            <div class="answer">
                <label for="answer">Réponse</label>
                <select name="answer" id="answer">
                    <option value="non">Non</option>
                    <option value="refus">Refus</option>
                </select>
            </div>
            <div class="btn">
                <button>Valider</button>
            </div>
        </form>
    </main>
</body>
</html>