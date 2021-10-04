<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Add extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model("Docente_model");
	}

	public function index()
	{
		$this->load->view('Docente/add');
	}

	public function save(){
	
        
        $nombreC = $this->input->post("nombreC");
        $password = $this->input->post("password");
       
		$this->form_validation->set_rules('nombreC', 'Nombre completo', 'required|min_length[3]');
		$this->form_validation->set_rules('password', 'Password', 'required|min_length[8]');

		if ($this->form_validation->run() == FALSE){
			$this->load->view('Docente/add');
		}else{
			$data = array(
				"nombreC"=>$nombreC,
				"password"=>$password
			);
			
			$this->Docente_model->save($data);
			redirect(base_url()."docentes");
		}
	}
}
