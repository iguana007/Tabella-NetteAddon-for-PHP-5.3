<?php

namespace Models;

use Nette\Security as NS;


/**
 * User authenticator.
 *
 * @author     spenat28
 * @package    ELAI-contactApp
 */
final class User extends Base implements NS\IAuthenticator
{

	protected $name = 'user';

	public function getByEmail($email)
	{
		return $this->dataSource
					->where('email=%s', $email)
					->where('retik=""')
					->fetch();
	}

	/**
	 * Performs an authentication
	 * @param  array
	 * @return Nette\Security\Identity
	 * @throws Nette\Security\AuthenticationException
	 */
	public function authenticate(array $credentials)
	{
		//list($username, $password) = $credentials;
		
		$login = $credentials[self::USERNAME];
		$row = $this->getByEmail($login);

		if (!$row) {
			throw new NS\AuthenticationException("Užívatel s registračním emailem '$login' nebyl nalezen!", self::IDENTITY_NOT_FOUND);
		}

		if ($row->password !== $this->calculateHash($credentials[self::PASSWORD])) {
			throw new NS\AuthenticationException("Invalid password.", self::INVALID_CREDENTIAL);
		}

		unset($row->password);
		return new NS\Identity($row->iduser, $row->role, $row->toArray());
		//return new Identity($row->name, $row->role, $row);
	}


	/**
	 * Computes salted password hash.
	 * @param  string
	 * @return string
	 */
	public function calculateHash($password)
	{
		return sha1($password . $this->context->params['security']['salt']);
		//return md5($password . str_repeat('*enter any random salt here*', 10));
	}





	/*public function all()
	{
		return $this->database->query('SELECT * FROM user')->fetchAll();
	}
	
	public function fluent()
	{
		return $this->database->select('*')->from('user');
	}*/


	/** @var Nette\Database\Table\Selection */
	//private $user;



	/*
	public function __construct(Nette\Database\Table\Selection $user)
	{
		$this->user = $user;
		//$this->user = new UserModel;
	}
	*/

}

