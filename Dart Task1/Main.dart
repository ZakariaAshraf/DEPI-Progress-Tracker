import 'dart:js_util';

void main() {
  var budget = Budget();

  // Add income transactions
  budget.addTransaction(Transaction(2000, 'Salary', 'income'));
  budget.addTransaction(Transaction(500, 'Freelance work', 'income'));

  // Add expense transactions
  budget.addTransaction(Transaction(800, 'Rent', 'expense'));
  budget.addTransaction(Transaction(200, 'Groceries', 'expense'));
  budget.addTransaction(Transaction(100, 'Utilities', 'expense'));

  // Print summary
  print('Budget Summary:');
  budget.displaySummary();
}

class Transaction {
  double amount;
  String description;
  String type;
  Transaction(this.amount, this.description,this.type);
}

class Budget {
   List<Transaction> income=[];
   List<Transaction> expenses=[];


   void addTransaction(Transaction transaction) {
    if(transaction.type=="income"){
      income.add(transaction);
    }else
      expenses.add(transaction);
   }
   double totalIncome(){
     return income.fold(0, (sum, element) =>sum+ element.amount);
   }
   double totalExpenses(){
     return expenses.fold(0, (sum, element) => sum+element.amount);
   }
   double balance(){
     return totalIncome()-totalExpenses();
   }
   displaySummary(){
     for(var transaction in income){
       print("summary of income"+"${transaction.amount}"+"${transaction.description}");
     }
     for(var transaction in expenses){
       print("summary of expense"+"${transaction.amount}"+"${transaction.description}");
     }
   }

}

