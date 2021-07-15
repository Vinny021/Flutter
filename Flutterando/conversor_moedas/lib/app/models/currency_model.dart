class CurrencyModel {
  const CurrencyModel({this.name, this.real, this.dolar, this.euro, this.bitcoin});

  final String name;
  final double real;
  final double dolar;
  final double euro;
  final double bitcoin;

  static List<CurrencyModel> getCurrencies() {
    return <CurrencyModel>[
      CurrencyModel(
          name: 'Real', real: 1.0, dolar: 0.19, euro: 0.16, bitcoin: 0.0000059),
      CurrencyModel(
          name: 'Dolar', real: 5.16, dolar: 1, euro: 0.85, bitcoin: 0.000031),
      CurrencyModel(
          name: 'Euro', real: 6.09, dolar: 1.18, euro: 1, bitcoin: 0.000037),
      CurrencyModel(
          name: 'Bitcoin',
          real: 164404.98,
          dolar: 31838.60,
          euro: 27017.35,
          bitcoin: 1)
    ];
  }
}
