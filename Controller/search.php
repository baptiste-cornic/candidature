<?php  

require_once('../Models/ApplicationsModel.php');

// verifie que la session est pas deja ouverte
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

$search = $_GET['search'];

// modifie la requete en fonciton du get
if(isset($_SESSION['connected']) )
{
    $model = new ApplicationsModel();
    $applications = $model->SearchApplication($search);
}

require_once('../Views/search.php');