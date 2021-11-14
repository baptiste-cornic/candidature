<?php  

require_once('../models/ApplicationsModel.php');

// verifie que la session est pas deja ouverte
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

if(isset($_SESSION['connected']) )
{
    $model = new ApplicationsModel();
    $applications = $model->GetMyApplications($_SESSION['user']);
}


require_once('../views/index.phtml');