class MetalInvestmentDetails {
  String? _accountValue;
  String? _cashBalance;
  String? _metalHodlings;
  String? _totalIncreasePercentage;
  List<Metals>? _metals;

  MetalInvestmentDetails(
      {String? accountValue,
      String? cashBalance,
      String? metalHodlings,
      String? totalIncreasePercentage,
      List<Metals>? metals}) {
    if (accountValue != null) {
      _accountValue = accountValue;
    }
    if (cashBalance != null) {
      _cashBalance = cashBalance;
    }
    if (metalHodlings != null) {
      _metalHodlings = metalHodlings;
    }
    if (totalIncreasePercentage != null) {
      _totalIncreasePercentage = totalIncreasePercentage;
    }
    if (metals != null) {
      _metals = metals;
    }
  }

  String? get accountValue => _accountValue;
  set accountValue(String? accountValue) => _accountValue = accountValue;
  String? get cashBalance => _cashBalance;
  set cashBalance(String? cashBalance) => _cashBalance = cashBalance;
  String? get metalHodlings => _metalHodlings;
  set metalHodlings(String? metalHodlings) => _metalHodlings = metalHodlings;
  String? get totalIncreasePercentage => _totalIncreasePercentage;
  set totalIncreasePercentage(String? totalIncreasePercentage) =>
      _totalIncreasePercentage = totalIncreasePercentage;
  List<Metals>? get metals => _metals;
  set metals(List<Metals>? metals) => _metals = metals;

  MetalInvestmentDetails.fromJson(Map<String, dynamic> json) {
    _accountValue = json['accountValue'];
    _cashBalance = json['cashBalance'];
    _metalHodlings = json['metalHodlings'];
    _totalIncreasePercentage = json['totalIncreasePercentage'];
    if (json['metals'] != null) {
      _metals = <Metals>[];
      json['metals'].forEach((v) {
        _metals!.add(new Metals.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['accountValue'] = _accountValue;
    data['cashBalance'] = _cashBalance;
    data['metalHodlings'] = _metalHodlings;
    data['totalIncreasePercentage'] = _totalIncreasePercentage;
    if (_metals != null) {
      data['metals'] = _metals!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Metals {
  String? _metalName;
  String? _metalColor;
  double? _investedOunces;
  String? _price;
  String? _changePercentage;
  String? _marketPrice;
  String? _marketChangePercentage;

  Metals(
      {String? metalName,
      String? metalColor,
      double? investedOunces,
      String? price,
      String? changePercentage,
      String? marketPrice,
      String? marketChangePercentage}) {
    if (metalName != null) {
      _metalName = metalName;
    }
    if (metalColor != null) {
      _metalColor = metalColor;
    }
    if (investedOunces != null) {
      _investedOunces = investedOunces;
    }
    if (price != null) {
      _price = price;
    }
    if (changePercentage != null) {
      _changePercentage = changePercentage;
    }
    if (marketPrice != null) {
      _marketPrice = marketPrice;
    }
    if (marketChangePercentage != null) {
      _marketChangePercentage = marketChangePercentage;
    }
  }

  String? get metalName => _metalName;
  set metalName(String? metalName) => _metalName = metalName;
  String? get metalColor => _metalColor;
  set metalColor(String? metalColor) => _metalColor = metalColor;
  double? get investedOunces => _investedOunces;
  set investedOunces(double? investedOunces) => _investedOunces = investedOunces;
  String? get price => _price;
  set price(String? price) => _price = price;
  String? get changePercentage => _changePercentage;
  set changePercentage(String? changePercentage) =>
      _changePercentage = changePercentage;
  String? get marketPrice => _marketPrice;
  set marketPrice(String? marketPrice) => _marketPrice = marketPrice;
  String? get marketChangePercentage => _marketChangePercentage;
  set marketChangePercentage(String? marketChangePercentage) =>
      _marketChangePercentage = marketChangePercentage;

  Metals.fromJson(Map<String, dynamic> json) {
    _metalName = json['metalName'];
    _metalColor = json['metalColor'];
    _investedOunces = json['investedOunces'];
    _price = json['price'];
    _changePercentage = json['changePercentage'];
    _marketPrice = json['marketPrice'];
    _marketChangePercentage = json['marketChangePercentage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['metalName'] = _metalName;
    data['metalColor'] = _metalColor;
    data['investedOunces'] = _investedOunces;
    data['price'] = _price;
    data['changePercentage'] = _changePercentage;
    data['marketPrice'] = _marketPrice;
    data['marketChangePercentage'] = _marketChangePercentage;
    return data;
  }
}
