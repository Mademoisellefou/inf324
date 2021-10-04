<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Docente_model extends CI_Model {

    public function save($data){
        $this->db->query("ALTER TABLE docente AUTO_INCREMENT 1");
        $this->db->insert("docente",$data);
    }
    public function getUsers(){    
    $query=$this->db->query('select * from docente');
    return $query->result();
    }

    public function getUser($id){
        $this->db->select("d.iddoc, d.nombreC");
        $this->db->from("docente d");
        $this->db->where("d.iddoc",$id);
        $result=$this->db->get();
        return $result->row();
    }
    public function update($data,$id){
        $this->db->where("iddoc",$id);
        $this->db->update("docente",$data);
    }
    public function delete($id){
        $this->db->where("iddoc",$id);
        $this->db->delete("docente");
    }
}
?>