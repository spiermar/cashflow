package com.martinspier.cashflow

class Asset {

    String name
    AssetType type

    static hasMany = [trades: Trade]

    static constraints = {
        name blank: false
    }
}
