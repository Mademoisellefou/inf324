<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Edit extends CI_Controller {

	
	public function __construct()
    {
        parent::__construct();
		$this->load->model("Docente_model");
    }
	public function index($id)
	{
		$data=$this->Docente_model->getUser($id);
		$this->load->view('Docente/edit',$data);
	}
	public function update($id){
		$nombreC = $this->input->post("nombreC");
		$data=$this->Docente_model->getUser($id);
		print_r($nombreC);
		$this->form_validation->set_rules('nombreC', 'Nombre completo', 'required|min_length[5]');
		if ($this->form_validation->run() == FALSE){
			$this->index($id);
		}else{
			$data = array(
				"nombreC"=>$nombreC
			);
			
			$this->Docente_model->update($data,$id);
			redirect(base_url()."docentes");
		}
	}
}
