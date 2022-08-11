import 'package:conversor_moeda/app/models/currency_model.dart';
import 'package:conversor_moeda/app/repositories/moeda_repository/currency_repository_interface.dart';
import 'package:dio/dio.dart';

class CurrencyRepositoryDio implements CurrencyRepositoryInterface {
  final Dio dio = Dio();
  final String url;

  CurrencyRepositoryDio({required this.url});

  @override
  Future<CurrencyModel> getCurrency(String currency) async {
    String paransCurrency = currency;

    var response = await dio.get(url + paransCurrency);
    var currencyData = response.data[currency.replaceAll('-', '')];
    return CurrencyModel(
        tipe: currencyData['code'], value: double.parse(currencyData['high']));
  }
}
