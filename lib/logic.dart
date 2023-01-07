// ignore_for_file: non_constant_identifier_names

int firstNumber = 0;
int secondNumber = 0;
String result = "";
String text = "";
String operation = "";

void Calculadora(String btnText) {
  if (btnText == "C") {
    result = "";
    text = "";
    firstNumber = 0;
    secondNumber = 0;
    operation = "";
  } else if (btnText == "+" || btnText == "-" || btnText == "/") {
    result = "";
    operation = "";
    firstNumber = int.parse(text);
  } else if (btnText == "=") {
    secondNumber = int.parse(text);
    if (operation == "+") {}
  }
}
