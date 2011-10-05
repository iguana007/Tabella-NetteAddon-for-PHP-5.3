<?php

/**
 * Base class for all application presenters.
 *
 * @author     John Doe
 * @package    MyApplication
 */
abstract class BasePresenter extends Nette\Application\UI\Presenter
{
	public function startup()
	{
		parent::startup();

		//register user panel addon for debugerBar
		\Panel\User::register()
			//TODO dát sem roota a test uživatele
			//->addCredentials('Root', 'toor')
			//->addCredentials('User', 'user_password')
			//->setNameColumn('name')
			;

        /*if (!$this->user->isLoggedIn()) {
            if ($this->user->getLogoutReason() ===  \Nette\Http\User::INACTIVITY) {
                $this->flashMessage('Systém vás z bezpečnostních důvodů odhlásil pro delší neaktivitu.', 'warning');
            }

            $backlink = $this->getApplication()->storeRequest();
            $this->flashMessage('Pro vstup do této sekce se prosím přihlašte.', 'warning');
            $this->redirect('Auth:login', array('backlink' => $backlink));
        }
        else {
            
        }*/
        
        if (!$this->user->isAllowed($this->reflection->name, $this->getAction())) {
                $this->flashMessage('Pro vstup do této části nemáte dostatečné oprávnění.', 'warning');
                $this->redirect('Sign:in');
            }
    }	
	
	/**
	 * @return \ModelLoader
	 */
	final public function getModels()
	{
		return $this->context->modelLoader;
	}
}
