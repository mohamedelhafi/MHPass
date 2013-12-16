package com.mh.password

/**
 *
 * @author Mohamed El Hafi
 * @since  16-12-2013
 *
 */

class Role {

	String authority

	static mapping = {
		cache true
	}

	static constraints = {
		authority blank: false, unique: true
	}
}
