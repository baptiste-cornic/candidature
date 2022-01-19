<?php  

require_once('../Models/ApplicationsModel.php');

// verifie que la session est pas deja ouverte
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

if( $_SESSION['connected'] == false )
{
    header('Location: index.php');
}

// rempli par défaut avec la date du jour 
$today = date('Y-m-d');

if(!empty($_POST) && !empty($_POST['name']) && !empty($_POST['place']) && !empty($_POST['website']) && !empty($_POST['link']) && !empty($_POST['answer']))
{   
    $model = new ApplicationsModel();
    $model->AddApplication($_POST['date'], $_POST['name'], $_POST['place'], $_POST['website'], $_POST['link'],  $_POST['more'], $_POST['follow_up'], $_POST['answer'], $_SESSION['user']);
    header('Location: index.php');
}

require_once('../Views/addApplication.php');