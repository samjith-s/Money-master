import 'package:hive_flutter/adapters.dart';
part 'user_model.g.dart';

@HiveType(typeId: 4)
class UserModel {
  @HiveField(0)
  final String name;

  @HiveField(1)
  final String mobile;

  @HiveField(2)
  final String? image;

  UserModel({
    required this.name,
    required this.mobile,
    this.image,
  });
}