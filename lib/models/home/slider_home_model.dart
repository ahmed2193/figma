class SliderHomeModel {
  //MARK: can add another data type for slider
  bool? isSelected;

  SliderHomeModel([this.isSelected]);

  static final sliderData = [
    SliderHomeModel(true),
    SliderHomeModel(),
    SliderHomeModel(),
    SliderHomeModel()
  ];
}
