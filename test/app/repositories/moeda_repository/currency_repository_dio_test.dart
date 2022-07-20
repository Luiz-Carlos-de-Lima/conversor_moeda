import 'package:conversor_moeda/app/repositories/moeda_repository/currency_repository_dio.dart';
import 'package:conversor_moeda/app/repositories/moeda_repository/currency_repository_interface.dart';

main() {
  CurrencyRepositoryInterface currencyRepository =
      CurrencyRepositoryDio(url: 'https://economia.awesomeapi.com.br/last/');

  currencyRepository.getCurrency(['USD-BRL', 'BRL-EUR']);
}
