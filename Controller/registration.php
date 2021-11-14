<?php  

// verifie que la session est pas deja ouverte
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

if( isset($_SESSION['connected']) == true )
{
    header('Location: index.php');
}

$mistake_form = false;
$unavailable_email = false;

require_once('../Models/UserModel.php');

if(!empty($_POST))
{
    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $email = $_POST['email'];
    $password = $_POST['password'];

    if(empty($firstname) || empty($lastname) || empty($email) || empty($password))
    {
        $mistake_form = true;
    }
    $model = new UserModel(); 

// vérifie que l'email n'existe pas deja 
    $user = $model->GetEmails($email);
    if(!empty($user))
    {
        $unavailable_email = true;
    }

    if($mistake_form == false && $unavailable_email == false )
    {
        $model->InsertUser($firstname, $lastname, $email, $password);
        header('Location: index.php');
    }
    
}

require_once('../Views/registration.php');