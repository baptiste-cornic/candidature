<?php  

// verifie que la session est pas deja ouverte
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

if( isset($_SESSION['connected']) == true )
{
    header('Location: index.php');
}

require_once('../models/UserModel.php');

if(!empty($_POST))
{
    $email = $_POST['email'];
    $password = $_POST['password'];

    $model = new UserModel(); 
    $user = $model->GetUser($email, $password);

    if(!empty($user))
    {
        $_SESSION['connected'] = true;
        $_SESSION['user'] = $user['id'];
    
        header('Location: index.php');
    }
    else{
        $wrongConnection = "Le nom d'utilisateur ou le mot de passe est incorrect.";
    }
}

require_once('../Views/login.php');