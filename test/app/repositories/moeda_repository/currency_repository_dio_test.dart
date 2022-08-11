import 'package:conversor_moeda/app/models/currency_model.dart';
import 'package:conversor_moeda/app/repositories/moeda_repository/currency_repository_dio.dart';
import 'package:conversor_moeda/app/repositories/moeda_repository/currency_repository_interface.dart';
import 'package:flutter_test/flutter_test.dart';

main() async {
  CurrencyRepositoryInterface currencyRepository =
      CurrencyRepositoryDio(url: 'https://economia.awesomeapi.com.br/last/');

  test('Deve verificar se o retorno é um CurrencyModel', () async {
    var currency = await currencyRepository.getCurrency('USD-BRL');
    expect(currency, isInstanceOf<CurrencyModel>());
  });
}
