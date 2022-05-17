
import 'package:hive_flutter/hive_flutter.dart';

import '../../categories/model/category_db_model.dart';
// import '../../../category_db/category_models.dart';
part 'transaction_db_model.g.dart';

@HiveType(typeId: 3)
class TransactionModel {
  @HiveField(0)
  final DateTime date;//

  @HiveField(1)
  final String amount;//

  @HiveField(2)
  final String remark;//

  @HiveField(3)
  final String? image;

  @HiveField(4)
  final String category;//

  @HiveField(5)
  final Categorytype type;

  @HiveField(6)
  final String peymentMode;//

  @HiveField(7)
  final bool isdeleted;

  @HiveField(8)
  final id;

  TransactionModel({
    required this.id,
    required this.date,
    required this.amount,
    required this.remark,
    this.image,
    required this.type,
    required this.category,
    required this.peymentMode,
    this.isdeleted = false,
  });
}
