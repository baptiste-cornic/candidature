<?php 

require_once('../models/ApplicationsModel.php');

// verifie que la session est pas deja ouverte
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

if( $_SESSION['connected'] == false )
{
    header('Location: index.php');
}

if(!empty($_POST))
{
    $model = new ApplicationsModel();
    $model->UpdateApplication($_POST['date'], $_POST['name'], $_POST['place'], $_POST['website'], $_POST['link'], $_POST['more'], $_POST['answer']);
    header('Location: index.php');
}
