<?php

require('SQLModel.php');

class UserModel
{
    protected $pdo;
    
    public function __construct()
    {
        $model = new SQLModel();
        $this->pdo = $model->getDatabase();
    }

    public function GetUser($email, $password)
    {
        $sql ='SELECT * FROM users WHERE email = ?';
        $query = $this->pdo->prepare($sql);
        $query->execute([ $email ]);        
        $user = $query->fetch();
        
        if($user == null) 
        {
            return null;
        }
        
        $hash = $user['password'];

        if( crypt($password, $hash) == $hash )
        {
            return $user;
        }
        return null;
    }

    private function hashPassword($password) 
    {
        $salt = '$2y$11$'. bin2hex(openssl_random_pseudo_bytes(64));
        return crypt($password, $salt);
    }

    public function InsertUser($firstname, $lastname, $email, $password)
    {
        $sql ="INSERT INTO users (id, firstname, lastname, email, password)
                VALUES (NULL, ?, ?, ?, ?)";

        $hash = $this->hashPassword($password);
        $query = $this->pdo->prepare($sql);
        $query->execute([$firstname, $lastname,$email, $hash]);
    }

    public function GetEmails($email)
    {
        $sql ='SELECT email FROM users WHERE email = ? ';
        $query = $this->pdo->prepare($sql);
        $query->execute([ $email ]);        
        $user = $query->fetch();
        return $user;
    }

}