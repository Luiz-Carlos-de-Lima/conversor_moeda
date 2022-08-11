import 'package:conversor_moeda/app/models/currency_model.dart';

abstract class CurrencyRepositoryInterface {
  Future<CurrencyModel> getCurrency(String currency);
}
