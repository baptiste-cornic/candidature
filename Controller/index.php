<?php  

require_once('../Models/ApplicationsModel.php');

// verifie que la session est pas deja ouverte
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

if(isset($_SESSION['connected']) )
{
    $model = new ApplicationsModel();
    $applications = $model->GetInProgressApplications($_SESSION['user']);
}


require_once('../Views/index.php');