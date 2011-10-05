<?php

namespace Nette\Security;

class Acl extends Permission
{
	public function __construct()
	{
		// roles
		$this->addRole('guest');
		$this->addRole('admin', 'guest');

		// resources
		//$this->addResource('Front_DefaultPresenter');
		$this->addResource('HomepagePresenter');
		$this->addResource('SignPresenter');
		$this->addResource('ErrorPresenter');
		$this->addResource('TestPresenter');

		// privileges
		//$this->allow('admin', Permission::ALL, Permission::ALL);
		$this->allow('guest', Permission::ALL, Permission::ALL);
	}
}

