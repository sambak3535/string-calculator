class StringCalculator {
  static int add(String numbers) {
    if (numbers.isEmpty) return 0;

    RegExp delimiter = RegExp(',|\n'); // Use RegExp type
    if (numbers.startsWith('//')) {
      final parts = numbers.split('\n');
      delimiter = RegExp(parts[0].substring(2)); // Assign correct regex pattern
      numbers = parts[1];
    }

    final numList = numbers.split(delimiter) .map(int.parse).toList();

    final negatives = numList.where((n) => n < 0).toList();
    if (negatives.isNotEmpty) {
      throw Exception("negative numbers not allowed ${negatives.join(', ')}");
    }

    return numList.reduce((sum, n) => sum + n);
  }
}