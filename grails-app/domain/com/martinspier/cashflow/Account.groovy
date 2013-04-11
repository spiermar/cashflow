package com.martinspier.cashflow

class Account {
	
	String name
	String institution
	String number
	String type
	
	static hasMany = [transactions: Transaction]

    static constraints = {
		name blank: false, unique: true, nullable: false
		institution blank: false, nullable: false
		number blank: false, nullable: false
		type blank: false, nullable: false
    }
}
