<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mes candidatures</title>
    <link rel="stylesheet" href="../views/css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
</head>
<body>
    <header>
        <?php  include '../views/templates/header.php'; ?>
    </header>
    <main>
        <section>
            <?php if(empty($applications)) :?>
                <div class="no_response">
                    <p>Aucune entreprise trouvée</p>
                </div>
            <?php endif ?>
            <?php if(!empty($applications) && isset($_SESSION['connected'])) : ?>
                <?php foreach ($applications as $application) : ?>
                    <div class="application" data-index="<?= $application['id'] ?>">
                        <div class="visible">
                            <div class="date">
                                <p><?= date("d-m-Y", strtotime($application['application_date'])) ?></p>
                            </div>
                            <div class="name">
                                <p><?= $application['company_name'] ?></p>
                            </div>
                            <div class="website">
                                <p><?= $application['website'] ?></p>
                            </div>                                     
                        </div>
                        <div class="hidden">
                            <div class="place">
                                <p>Lieu :</p>
                                <p><?= $application['place'] ?></p>
                            </div>
                            <div class="link">
                                <p>Lien :</p>
                                <p><a target="_blank" href="<?= $application['link'] ?>"><?= $application['website'] ?></a></p>
                            </div>
                            <div class="more">
                            <p>Plus d'information :</p>
                                <p><?= $application['application_information'] ?></p>
                            </div>
                            <div class="follow_up">
                                <p>Relance</p>
                                <p><?= $application['follow_up'] ?></p>
                            </div>
                            <div class="answer">
                            <p>Réponse :</p>
                                <p><?= $application['answer'] ?></p>
                            </div>
                            <div class="edit_delete">
                                <a href="edit.php?id=<?= $application['id'] ?>"><i class="fas fa-edit"></i></a>
                                <a href="delete.php?id=<?= $application['id'] ?>" ><i class="fas fa-times-circle"></i></a>
                            </div>
                        </div>
                    </div>
                <?php endforeach; 
            endif ?>               
        </section>
        <script src="../views/js/main.js"></script>
    </main>
</body>
</html>