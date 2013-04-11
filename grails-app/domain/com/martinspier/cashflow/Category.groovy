package com.martinspier.cashflow

class Category {
	
	String name
	Category parent

    static constraints = {
		name blank: false, unique: true, nullable: false
		parent blank: true, nullable: true
    }
}
