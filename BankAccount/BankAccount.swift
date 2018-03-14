//
//  Bankaccount.swift
//  BankAccount
//
//  Created by Parikh Dhruvin S. on 3/14/18.
//  Copyright © 2018 Parikh Dhruvin S. All rights reserved.
//

import Foundation
private var customerCount: Int = 0
public class BankAccount{
    //Account number, customer name, yearly interest rate, account balance as stored properties
    //public var account_number: String
    //public var customer_name: String
    //public var interest: Double
    //public var account_balance: Double
    
    //property observers for all properties
    public var account_number: String = "" {
        willSet{
            print("Setting account number to \(newValue)")
        }
        didSet {
            if(!(account_number != "")){
                print("invalid account number, resetting to \(oldValue)")
            }
            }
        }

    public var customer_name: String = "" {
        willSet{
            print("Setting customer name to \(newValue)")
        }
        didSet {
            if(!(customer_name != "")){
                print("invalid customer name, resetting to \(oldValue)")
            }
        }
    }
    
    public var interest: Double = 0.0 {
        willSet{
            print("Setting interest to \(newValue)")
        }
        didSet {
            if(interest >= 0.0 && interest <= 2.0){
            }
            else{
                print("invalid yearly interest rate, resetting to \(oldValue)")
            }
        }
    }
    
    public var account_balance: Double = 10.0 {
        willSet{
            print("Setting account_balance to \(newValue)")
        }
        didSet {
            if(!(account_balance >= 10.0)){
                print("invalid acount balance, resetting to \(oldValue)")
            }
        }
    }
    
//designated initializer: sets stored properties to specified values
public init(account_number: String, customer_name: String, interest: Double, account_balance: Double) {
    self.account_number=account_number
    self.customer_name=customer_name
    if(interest >= 0.0 && interest <= 2.0){
    self.interest=interest
    }
    else{
       self.interest=0.0
    }
    if(account_balance >= 10.00){
    self.account_balance=account_balance
    }
    else{
        self.account_balance=10.00
    }
    customerCount += 1 // increment global private variable
    print("Customer init: \(customer_name); count = \(BankAccount.getCount())")
}

    public init(){
        self.account_number="11111"
        self.customer_name="xxx"
        self.interest=0.0
        self.account_balance=10.00
    }
    
    // deinitializer
    deinit {
        customerCount -= 1 // decrement global private variable
        print("Customer deinit: \(customer_name); count = \(BankAccount.count)")
    }
    
    // computed read-only type property
    public class var count: Int {
        return customerCount
    }
    
    // type method
    public class func getCount() -> Int {
        return self.count
    }
    
    //credit(amount:Double) which is used for depositing money
    public func credit(amount:Double){
        print("Depositing $\(amount)...")
        self.account_balance = self.account_balance + amount
    }
    
    //debit(amount:Double) which is used for withdrwng money
    public func debit(amount:Double){
        if(self.account_balance-amount >= 10.00){
            print("Withdrawing $\(amount)...")
            self.account_balance = self.account_balance - amount
        }
        else{
            print("Transaction cancelled. You need minimum $10.00 balance")
        }
    }
    
//Define a description as computed property which display all the values of bank account object
public var description: String {
    return "Account number : " + String(self.account_number) + ", Customer name : " + String(self.customer_name) + ", Yearly interest rate : " + String(self.interest) + ", Account balance : " + String(self.account_balance)
}

}
