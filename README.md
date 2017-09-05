# Bank Tech Test
This test had the following requirements:

- You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
- Deposits, withdrawal.
- Account statement (date, amount, balance) printing.
- Data can be kept in memory (it doesn't need to be stored to a database or anything).

I began by breaking down the requirements into user stories. I used TDD to complete each user story until the application was complete, then I refactored my code to ensure it was as streamlined as possible

## User Stories
```
As a user of the bank,
So that I can add to my balance
I want to be able to credit my account

As a user of the bank,
So that I can spend my money
I want to be able to debit my account

As a user of the bank,
So that I can plan my finances
I want to be able to see a bank statement
```

### Instructions
to use:
```ruby
git clone git@github.com:tobold/bank-tech-test.git
cd bank-tech-test
ruby bin/load_files

account = Account.new #create new account object
account.credit(n) #adds n to the total account balance and creates a transaction object detailing it.
account.debit(n) #subtracts n to the total account balance and creates a transaction object detailing it.
account.statement #returns a neat string of all transactions
```

to test:
```
rspec
```
