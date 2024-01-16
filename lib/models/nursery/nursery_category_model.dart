class NurseryCategoryModel {
  final String? label;
  final int? value;
  bool? hasAdded;

  NurseryCategoryModel({this.label, this.value, this.hasAdded});

  static final listCategoryNursery = [
    NurseryCategoryModel(label: 'Flowers', value: 5, hasAdded: true),
    NurseryCategoryModel(label: 'Fruits', value: 12),
    NurseryCategoryModel(label: 'Vegetables', value: 12),
    NurseryCategoryModel(label: 'Ceramic', value: 8),
    NurseryCategoryModel(label: 'Hanging', value: 8),
    NurseryCategoryModel(label: 'Spices', value: 8),
    NurseryCategoryModel(label: 'Religious', value: 8),
    NurseryCategoryModel(label: 'Green Plant', value: 8),
  ];
}
