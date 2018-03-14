//
//  main.swift
//  BankAccount
//
//  Created by Parikh Dhruvin S. on 3/14/18.
//  Copyright © 2018 Parikh Dhruvin S. All rights reserved.
//

import Foundation

let bankAccount1 = BankAccount(account_number: "12345", customer_name: "Dhruvin", interest: 11.0, account_balance: 2300.0)
print(bankAccount1.description)
bankAccount1.debit(amount: 500)
print(bankAccount1.description)
bankAccount1.credit(amount: 1000)

print("--------------------------------------------------------")
let bankAccount2 = BankAccount(account_number: "12356", customer_name: "Parikh", interest: 9.9, account_balance: 100)
print(bankAccount2.description)
bankAccount2.debit(amount: 100)
print(bankAccount2.description)
bankAccount2.credit(amount: 120)



