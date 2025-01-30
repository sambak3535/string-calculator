import 'package:string_calculator_tdd/string_calculator_tdd.dart';
import 'package:test/test.dart';

void main() {
  test('Empty string returns 0', () {
    expect(StringCalculator.add(""), equals(0));
  });

  test('Single number returns itself', () {
    expect(StringCalculator.add("1"), equals(1));
  });

  test('Two numbers, comma-separated', () {
    expect(StringCalculator.add("1,5"), equals(6));
  });

  test('Multiple numbers, comma-separated', () {
    expect(StringCalculator.add("1,2,3,4"), equals(10));
  });

  test('Supports new lines between numbers', () {
    expect(StringCalculator.add("1\n2,3"), equals(6));
  });

  test('Supports custom delimiter', () {
    expect(StringCalculator.add("//;\n1;2"), equals(3));
  });

  test('Negative numbers throw an exception', () {
    expect(() => StringCalculator.add("1,-2,3,-4"), throwsA(predicate((e) =>
      e is Exception && e.toString() == 'Exception: negative numbers not allowed -2, -4')));
  });
}