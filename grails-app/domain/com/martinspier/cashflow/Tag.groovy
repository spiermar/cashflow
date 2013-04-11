package com.martinspier.cashflow

class Tag {
	
	String name

    static constraints = {
		name blank: false, unique: true, nullable: false
    }
}
