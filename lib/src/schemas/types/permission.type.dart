import 'package:eatery_db/eatery_db.dart';

part 'permission.type.g.dart';
@HiveType(typeId: permissionTypeSchemaIndex)
enum PermissionType {
  @HiveField(0, defaultValue: true)
  readAll,
  @HiveField(1)
  read,
  @HiveField(2)
  write,
  @HiveField(3)
  update,
  @HiveField(4)
  delete,
}
