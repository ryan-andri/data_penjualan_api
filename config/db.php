<?php

class DBConnection
{
    public function getInstance()
    {
        $host = 'localhost';
        $db = 'data_penjualan';
        $user = 'root';
        $pass = '';
        try {
            $instance = new PDO("mysql:host=$host; dbname=$db", $user, $pass);
            $instance->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return $instance;
        } catch (PDOException $e) {
            die($e->getMessage());
        }
    }
}
