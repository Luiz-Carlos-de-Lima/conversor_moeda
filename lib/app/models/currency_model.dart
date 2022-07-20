class CurrencyModel {
  final String tipe;
  final double value;

  CurrencyModel({required this.tipe, required this.value});

  @override
  String toString() {
    return '${tipe},${value}';
  }
}
