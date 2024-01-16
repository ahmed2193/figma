class DropwDownModel {
  String title;
  bool? isDropDown;

  DropwDownModel(this.title, [this.isDropDown]);

  static final listDropDown = [
    DropwDownModel('Sort', true),
    DropwDownModel('Gifts'),
    DropwDownModel('Fast Delivery'),
    DropwDownModel('Ceramic'),
  ];
}
