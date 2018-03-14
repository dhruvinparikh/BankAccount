//
//  BankAccountExtension.swift
//  BankAccount
//
//  Created by Parikh Dhruvin S. on 3/14/18.
//  Copyright © 2018 Parikh Dhruvin S. All rights reserved.
//

import Foundation

extension BankAccount{
    //Interest should be defined as computed property which is calculated by using interest rate formula
    public var simple_interest: Double {
        return self.account_balance * self.interest * 1 / 100
    }
    
    //convenience initializer which initializes (provides values for) account number, name and balance
    public convenience init(account_number: String, customer_name: String, account_balance: Double){
            self.init(account_number: account_number, customer_name: customer_name, interest: 1.0, account_balance: account_balance)
    }
}
