<?php

require_once('../models/ApplicationsModel.php');

if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

$id = $_GET['id'];

if(isset($_SESSION['connected']))
{
    $model = new ApplicationsModel();
    $model->DeleteApplication($id);
}

header('Location: index.php');