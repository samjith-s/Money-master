import 'package:hive_flutter/hive_flutter.dart';
part 'category_db_model.g.dart';

@HiveType(typeId: 1)
enum Categorytype {
  @HiveField(0)
  income,

  @HiveField(1)
  expense,
}

@HiveType(typeId: 2)
class CategoryModel {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String category;

  @HiveField(2)
  final Categorytype type;

  @HiveField(3)
  final bool isDeleted;

  CategoryModel({
    required this.id,
    required this.category,
    required this.type,
    this.isDeleted = false,
  });
}
