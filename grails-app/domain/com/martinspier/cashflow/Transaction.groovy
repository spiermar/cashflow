package com.martinspier.cashflow

class Transaction {
	
	Date date
	Double amount
	String description
	Category category
	
	static hasMany = [tags: Tag]
	
	static belongsTo = [account: Account]

    static constraints = {
		date blank: false, nullable: false
		amount blank: false, nullable: false
		description blank: false, nullable: false
		category blank: true, nullable: true
    }
}
