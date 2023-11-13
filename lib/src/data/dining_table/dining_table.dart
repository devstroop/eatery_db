import 'package:eatery_db/eatery_db.dart';

part 'dining_table.g.dart';

@HiveType(typeId: TypeIndex.diningTable)
class DiningTable extends HiveObject {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String name;
  @HiveField(2)
  DiningTableCategory? category;
  @HiveField(3)
  String? description;
  @HiveField(4)
  Order? order;
  @HiveField(5)
  int? capacity;
  @HiveField(6)
  DiningTableStatus status;
  @HiveField(7)
  Customer? customer;
  DiningTable(
      {
        required this.name,
      this.category,
      this.description,
      this.order,
      this.capacity = 0,
      this.status = DiningTableStatus.available, this.customer})
      : id = EateryDB.instance.diningTableBox?.nextId();

  DiningTable.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        name = map['name'],
        category = EateryDB.instance.diningTableCategoryBox!.values
            .where((element) => element.id == map['categoryId'])
            .firstOrNull,
        description = map['description'],
        order = EateryDB.instance.orderBox!.values
            .where((element) => element.id == map['orderId'])
            .firstOrNull,
        capacity = map['capacity'],
        status = DiningTableStatus.values.singleWhere(
            (element) => element.id == map['status']),
    customer = EateryDB.instance.customerBox!.values
        .where((element) => element.id == map['customerId'])
        .firstOrNull;

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'name': name,
      'categoryId': category?.id,
      'description': description,
      'orderId': order?.id,
      'capacity': capacity,
      'status': status.id,
      'customerId': customer?.id
    };
  }

  static DiningTable fromIterable(Iterable<dynamic> row) {
    return DiningTable.fromMap({
      'id': row.elementAt(0),
      'name': row.elementAt(1),
      'categoryId': row.elementAt(2),
      'description': row.elementAt(3),
      'orderId': row.elementAt(4),
      'capacity': row.elementAt(5),
      'status': row.elementAt(6),
      'customerId': row.elementAt(7)
    });
  }

  List<dynamic> toIterable() {
    var map = toMap();
    return [
      map['id'],
      map['name'],
      map['categoryId'],
      map['description'],
      map['orderId'],
      map['capacity'],
      map['status'],
      map['customerId']
    ];
  }
}




