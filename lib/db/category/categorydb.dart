
import 'package:money_manager/model/category/categorymodel.dart';

abstract class CategorydbFunctions{
  List<CategoryModel>getCategories();
  Future<void> insertCategory(CategoryModel value);
}
class CategoryDB implements CategorydbFunctions{
  @override
  List<CategoryModel> getCategories() {
    // TODO: implement getCategories
    throw UnimplementedError();
  }

  @override
  Future<void> insertCategory(CategoryModel value) {
    // TODO: implement insertCategory
    throw UnimplementedError();
  }

}