<?php // -*- mode:php; tab-width:4; indent-tabs-mode:t; c-basic-offset:4; -*-

/**
* @author Greg Froese
*
*/

class MenuController extends \silk\action\Controller {
	public function index( $params = array() ) {
		$user = \silk\Auth\UserSession::get_current_user();
		$this->set( "user", $user );
	}

	public function admin( $params = array() ) {
		$user = \silk\Auth\UserSession::get_current_user();
		//check if an administrator (better ways to do this I'm sure)
                if( !empty( $user )) {
                        foreach( $user->groups as $group ) {
                                if( $group->name == "administrators" ) {
                                        $user->administrator = true;
                                }
                        }
                }
		//don't bother getting more info if we don't need it
		if( $user->administrator ) {
		}
        $this->set( "user", $user );
	}
}
