import 'package:hive/hive.dart';

import '../order/order.dart';
import 'dining_table_category.dart';

part 'dining_table.g.dart';

@HiveType(typeId: 30)
class DiningTable extends HiveObject {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String name;
  @HiveField(2)
  DiningTableCategory? category; // model?
  @HiveField(3)
  String? description;
  @HiveField(4)
  String? image;
  @HiveField(5)
  Order? order; // model?
  @HiveField(6)
  bool isActive;

  DiningTable(
      {this.id,
      required this.name,
      this.category,
      this.description,
      this.image,
      this.order,
      required this.isActive});

  DiningTable.fromMap(Map<String, dynamic> map)
      : id = map['_id'],
        name = map['name'],
        category = DiningTableCategory.fromMap(map['category']),
        description = map['description'],
        image = map['image'],
        order = Order.fromMap(map['order']),
        isActive = map['isActive'];

  Map<String, Object?> toMap() {
    return {
      '_id': id,
      'name': name,
      'category': category != null ? category!.toMap() : null,
      'description': description,
      'image': image,
      'order': order != null ? order!.toMap() : null,
      'isActive': isActive
    };
  }
}
