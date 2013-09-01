package com.martinspier.cashflow

class Transaction {
	
	Date date
	Double amount
	String description
	Category category
	
	static hasMany = [tags: Tag]
	
	static belongsTo = [account: Account]

    static constraints = {
		description blank: false
		category nullable: true
    }
}
