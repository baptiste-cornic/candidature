<?php

require('SQLModel.php');

class ApplicationsModel
{

    protected $pdo;
    
    public function __construct()
    {
        $model = new SQLModel();
        $this->pdo = $model->getDatabase();
    }

    public function GetMyApplications($user_id)
    {
        $sql = " SELECT * FROM candidatures WHERE user_id = ? ORDER BY id DESC";
        $query = $this->pdo->prepare($sql);
        $query->execute([$user_id]);
        $applications = $query->fetchAll(PDO::FETCH_ASSOC);
        return $applications;
    }

    public function AddApplication($date, $name, $place, $website, $link, $more, $answer, $user_id)
    {
        $sql = "INSERT INTO candidatures (id, application_date, company_name, place, website, link, more_information, answer, user_id )
                VALUES (NULL, ?, ?, ?, ?, ?, ?, ?, ?) ";
                var_dump($sql);
        $query = $this->pdo->prepare($sql);
        $query->execute([$date, $name, $place, $website, $link, $more, $answer, $user_id ]);
    }

    public function SearchApplication($search)
    {
        $sql = " SELECT * FROM candidatures WHERE company_name LIKE CONCAT('%', ?, '%') ORDER BY id DESC";
        $query = $this->pdo->prepare($sql);
        $query->execute([$search]);
        $applications = $query->fetchAll(PDO::FETCH_ASSOC);
        return $applications;
    }

    public function GetOneApplication($id)
    {
        $sql = " SELECT * FROM candidatures WHERE id = ? ";
        $query = $this->pdo->prepare($sql);
        $query->execute([$id]);
        $application = $query->fetch(PDO::FETCH_ASSOC);
        return $application;
    }

    public function UpdateApplication($date, $name, $place, $website, $link, $more, $answer, $id)
    {
        $sql = "UPDATE candidatures SET application_date = ?, company_name = ?, place = ?, website = ?, link = ?, more_information = ?, answer = ? WHERE id = ?";
        $query = $this->pdo->prepare($sql);
        $query->execute([$date, $name, $place, $website, $link, $more, $answer, $id]);
    }

    public function DeleteApplication($id)
    {
        $sql = 'DELETE FROM candidatures WHERE id = ?';
        $query = $this->pdo->prepare($sql);
        $query->execute([$id]);
    }

}
