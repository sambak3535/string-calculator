import 'package:string_calculator_tdd/string_calculator_tdd.dart';

void main() {
  print(StringCalculator.add(""));        // Output: 0
  print(StringCalculator.add("1"));       // Output: 1
  print(StringCalculator.add("1,5"));     // Output: 6
  print(StringCalculator.add("1\n2,3"));  // Output: 6
  print(StringCalculator.add("//;\n1;2")); // Output: 3

}