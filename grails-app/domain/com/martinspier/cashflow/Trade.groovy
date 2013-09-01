package com.martinspier.cashflow

class Trade {

    String type
    Double amount
    Double price
    String referenceCode
    Broker broker
    Transaction transaction

    static belongsTo = [asset: Asset]

    static hasMany = [fees: Transaction, taxes: Transaction]

    static constraints = {
        type blank: false, inList: ["Buy", "Sell"]
        referenceCode nullable: true
        broker nullable: true
        transaction nullable: true
    }
}
