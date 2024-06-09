class CategoryData {
  late final List<CategoryModel> list;


  CategoryData.fromJson(Map<String, dynamic> json){
    list = List.from(json['data']??[]).map((e) => CategoryModel.fromJson(e)).toList();
  }

}

class CategoryModel {
  late final int id;
  late final Null name;
  late final Null description;
  late final String image;

  CategoryModel.fromJson(Map<String, dynamic> json){
    id = json['id'??0];
    name = json['name']??'';
    description = json['description']??'';
    image = json['media']??'';
  }

}

