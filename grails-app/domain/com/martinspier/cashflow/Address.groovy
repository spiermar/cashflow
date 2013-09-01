package com.martinspier.cashflow

class Address {

    String line1
    String line2
    String city
    String state
    String postcode

    static constraints = {
        line1 nullable: true
        line2 nullable: true
        city nullable: true
        state nullable: true
        postcode nullable: true
    }
}
