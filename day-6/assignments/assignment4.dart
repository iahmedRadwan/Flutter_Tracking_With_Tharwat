// 4. OOP, Constructors, and Methods
// Create a class `BankAccount` with:
// - Properties: `String accountHolder`, `double balance`.
// - A constructor to initialize the properties.
// - Methods:
// - `deposit(double amount)` to add to the balance.
// - `withdraw(double amount)` to subtract from the balance (ensure sufficient funds).
// - `getDetails()` to print the account holder's name and balance.
// Create an instance, perform some transactions, and print the account details.
// Goal: Learn OOP concepts like constructors, methods, and object manipulation.

void main() {
  BankAccount otpAccount =
      BankAccount(accountHolder: "Ahmed Radwan", balance: 10000);
  otpAccount.deposit(100);
  otpAccount.deposit(200);
  otpAccount.deposit(300);
  otpAccount.deposit(100);
  otpAccount.getDetails();
  otpAccount.withdraw(12000);
  otpAccount.withdraw(1200);
  otpAccount.getDetails();
}

class BankAccount {
  String accountHolder;
  double balance;

  BankAccount({required this.accountHolder, required this.balance});

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    if (amount < balance) {
      balance -= amount;
    } else {
      print("You Can't do this process");
    }
  }

  void getDetails() {
    print(accountHolder);
    print(balance);
  }
}
