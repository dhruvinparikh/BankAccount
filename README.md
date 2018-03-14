# BankAccount
IOS assignment#1 exercise5

Exercise 5:												[10 marks]

Do the following using Xcode project:
Create a class BankAccount (store it in a separate file - BankAccount.swift) which is having the following:
-	Account number, customer name, yearly interest rate, account balance as stored properties
-	Account balance should not be negative and there should be minimum 10.00 dollars all the time.
-	 and interest rate should be positive and between 0.0 and 2.0 %
-	You need to define property observers - didSet for all the properties
-	Define a description as computed property which display all the values of bank account object
-	Define two initializers, one which initializes all the properties to their default values and one which initializes to appropriate values
-	Define two functions- one is credit(amount:Double) which is used for depositing money and second which is debit(amount:Double) which is used for withdrawing money.

Create an extension to BankAccount class (store it in separate file - BankAccountExtension.swift) and define the following in there:
-	Interest should be defined as computed property which is calculated by using interest rate formula
-	One convenience initializer which initializes (provides values for) account number, name and balance.
-	Add a deinitializer also

Test the above class in main.swift file by creating at least two objects of bank account class and test the capabilities of the class.

