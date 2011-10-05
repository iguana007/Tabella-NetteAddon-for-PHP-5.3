<?php


use Nette\Application\UI\Presenter,
	Nette\Utils\Strings,
	Nette\Utils\Html,
	Nette\Environment,
	Addons\Tabella;

class HomepagePresenter extends BasePresenter
{

	protected function createComponentEditableTabella( $name ) {
		$grid = new Tabella( $this->models->example, array(
			"limit" => 15,
			"sorting" => "desc",
			"order"=>"idexample",
			"pk"=>$this->models->example->indexName,
			"onSubmit" => function(&$t, $post) {
				$post['born'] = strtotime( $post['born'] );
				// sloupeček je po editaci vždy ID, protože to je otázka původního javascriptu, který nechci přepisovat
				$post['idexample']=$post['id'];unset($post['id']);
				$t->model->save($post, $post['idexample']);
			},
			"onDelete" => function(&$t, $idexample) {
				$t->model->delete($idexample);
			}
		));
		$grid->addColumn( "Id", "idexample", array( "width" => 40 ) );
		$grid->addColumn( "Surname", "surname", array( 
				"editable" => true 
		));
		$grid->addColumn( "Name", "name", array( 
				"editable" => true ));
		$grid->addColumn( 'Sex', 'sex', array( 
				"type" => Tabella::SELECT,
				"options" => array( 'male' => 'Male', 'female' => 'Female' ),
				"editable" => true,
		));
		$grid->addColumn( "Sons", "sons", array( 
				"editable" => true ));
		$grid->addColumn( "Daughters", "daughters", array(
				"editable" => true ));
		$grid->addColumn( "Born", "born", array( 
				"type" => Tabella::DATE,
				"dateFormat" => "%Y/%m/%d",
				"editable" => true
		));
	
		$grid->addColumn( '<span class="ui-icon ui-icon-circle-plus"></span>', Tabella::ADD, array( 
				"type" => Tabella::DELETE 
		));
	
		$this->addComponent( $grid, $name );
	}

}
