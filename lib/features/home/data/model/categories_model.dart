class CategoriesModel {
  String? idCategory;
  String? strCategory;
  String? strCategoryThumb;
  String? strCategoryDescription;

  CategoriesModel({
    this.idCategory,
    this.strCategory,
    this.strCategoryThumb,
    this.strCategoryDescription,
  });

  factory CategoriesModel.fromJson(Map<String, dynamic> json) =>
      CategoriesModel(
        idCategory: json['idCategory'] as String?,
        strCategory: json['strCategory'] as String?,
        strCategoryThumb: json['strCategoryThumb'] as String?,
        strCategoryDescription: json['strCategoryDescription'] as String?,
      );

  Map<String, dynamic> toJson() => {
    'idCategory': idCategory,
    'strCategory': strCategory,
    'strCategoryThumb': strCategoryThumb,
    'strCategoryDescription': strCategoryDescription,
  };
}
