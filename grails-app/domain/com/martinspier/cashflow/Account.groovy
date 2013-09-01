package com.martinspier.cashflow

class Account {
	
	String name
	String institution
	String number
	String type
	
	static hasMany = [transactions: Transaction]

    static constraints = {
		name blank: false, unique: true
		institution blank: false
		number nullable: true
		type blank: false, inList: ["Checking", "Savings", "Broker"]
    }
}
