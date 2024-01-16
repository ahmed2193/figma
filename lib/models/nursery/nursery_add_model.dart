class NurseryAddModel {
  final String? title;
  final double? price;
  final bool? isSelected;

  NurseryAddModel({this.title, this.price, this.isSelected});

  static final listAddNursery = [
    NurseryAddModel(title: 'Pot 1', price: 450, isSelected: true),
    NurseryAddModel(title: 'Pot 2', price: 450),
    NurseryAddModel(title: 'Pot 3', price: 450),
    NurseryAddModel(title: 'Pot 4', price: 450),
    NurseryAddModel(title: 'Pot 5', price: 450),
  ];
}
