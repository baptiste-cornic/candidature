<?php

if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

require_once('../Models/ApplicationsModel.php');

if( !is_numeric($_GET['id']))
{
    header('Location: index.php');
}
$id = $_GET['id'];

if(isset($_SESSION['connected']) )
{
    $model = new ApplicationsModel();
    $application = $model->GetOneApplication($id);   
}

if(!empty($_POST))
{
    $model->UpdateApplication($_POST['date'], $_POST['name'], $_POST['place'], $_POST['website'], $_POST['link'], $_POST['more'], $_POST['follow_up'], $_POST['answer'], $id);
    header('Location: index.php');
}

require_once('../Views/edit.php');