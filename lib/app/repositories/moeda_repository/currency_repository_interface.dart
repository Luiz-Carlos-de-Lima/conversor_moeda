import 'package:conversor_moeda/app/models/currency_model.dart';

abstract class CurrencyRepositoryInterface {
  List<CurrencyModel> getCurrency(List currency);
}
