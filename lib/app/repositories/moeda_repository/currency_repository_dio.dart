import 'package:conversor_moeda/app/models/currency_model.dart';
import 'package:conversor_moeda/app/repositories/moeda_repository/currency_repository_interface.dart';
import 'package:dio/dio.dart';

class CurrencyRepositoryDio implements CurrencyRepositoryInterface {
  Dio dio = Dio();

  @override
  List<CurrencyModel> getCurrency(List currency) {
    return [CurrencyModel(tipe: '', value: 10.0)];
  }
}
