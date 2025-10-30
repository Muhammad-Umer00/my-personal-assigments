import 'dart:io';

void main() {
  String withDraw = "1- withdraw";
  String showBAlance = "2- ShowBalance";
  String Deposite = "3- Deposite";
  String Exit = "4- Exit";
  double balance = 4000;
  print("Umer ATM");

  int exit = 0;
  while (exit == 0 || exit == 1 || exit == 2 || exit == 3) {
    print(withDraw);
    print(showBAlance);
    print(Deposite);
    print(Exit);
    String? input = stdin.readLineSync();
    int option = int.parse(input!);
    if (option <= 4) {
      switch (option) {
        case 1:
          print("How much do you want to withdraw");
          String? input = stdin.readLineSync();
          int value = int.parse(input!);
          if (value <= balance) {
            balance -= value;
            print(balance);
          } else {
            print("you are out of balance");
          }
          break;

        case 2:
          print(balance);

          break;
        case 3:
          print("How much do you want to deposite");
          String? input = stdin.readLineSync();
          int value = int.parse(input!);
          if (value >= 0) {
            balance += value;
            print(balance);
          } else {
            print("please enter a amount");
          }
          break;
        case 4:
          exit = exit + 1;
          print("Exit attemt $exit");
          if (exit == 4) {
            print("bhaa dubara zaroor visit karna");
          }
        default:
          print("please choose correct option");
      }
    } else {
      print("please choose correct option");
    }
  }
}
