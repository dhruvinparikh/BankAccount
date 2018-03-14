//
//  main.swift
//  BankAccount
//
//  Created by Parikh Dhruvin S. on 3/14/18.
//  Copyright © 2018 Parikh Dhruvin S. All rights reserved.
//

import Foundation

let bankAccount1 = BankAccount(account_number: "12345", customer_name: "Dhruvin", interest: 1.0, account_balance: 2300.0)
print(bankAccount1.description)
bankAccount1.debit(amount: 500)
print(bankAccount1.description)
bankAccount1.credit(amount: 1000)
print("Simple interest is $",bankAccount1.simple_interest)

print("--------------------------------------------------------")
let bankAccount2 = BankAccount(account_number: "12356", customer_name: "Parikh", account_balance: 100)
bankAccount2.interest=1.5
print(bankAccount2.description)
bankAccount2.debit(amount: 100)
print(bankAccount2.description)
bankAccount2.credit(amount: 120)
print("Simple interest is $",bankAccount2.simple_interest)


