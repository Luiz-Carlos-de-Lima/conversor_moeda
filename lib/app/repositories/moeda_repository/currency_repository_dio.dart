import 'package:conversor_moeda/app/models/currency_model.dart';
import 'package:conversor_moeda/app/repositories/moeda_repository/currency_repository_interface.dart';
import 'package:dio/dio.dart';

class CurrencyRepositoryDio implements CurrencyRepositoryInterface {
  final Dio dio = Dio();
  final String url;

  CurrencyRepositoryDio({required this.url});

  @override
  Future<List<CurrencyModel>> getCurrency(List currency) async {
    String paransCurrency = '';
    List<CurrencyModel> listCurrency = [];
    for (int index = 0; index < currency.length; index++) {
      if (index == currency.length - 1) {
        paransCurrency += '${currency[index]}';
      } else {
        paransCurrency += '${currency[index]},';
      }
    }

    try {
      var response = await dio.get(url + paransCurrency);
      for (int index = 0; index < response.data.length; index++) {
        String value = currency[index].toString().replaceAll('-', '');
        Map currentCurrency = response.data[value];
        listCurrency.add(CurrencyModel(
            tipe: currentCurrency['code'],
            value: double.parse(currentCurrency['high'])));
      }

      return listCurrency;
    } catch (error) {
      return listCurrency;
    }
  }
}
