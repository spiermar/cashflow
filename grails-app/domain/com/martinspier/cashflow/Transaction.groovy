package com.martinspier.cashflow

import org.grails.databinding.BindingFormat

class Transaction {

    @BindingFormat('MM/dd/yyyy')
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
