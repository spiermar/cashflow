package com.martinspier.cashflow

import com.martinspier.cashflow.Address

class Broker {

    String name
    Address address
    String phone

    static constraints = {
        name blank: false, unique: true
        address nullable: true
        phone nullable: true
    }
}
