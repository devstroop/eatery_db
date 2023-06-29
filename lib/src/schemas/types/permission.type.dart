import 'package:eatery_db/eatery_db.dart';

part 'permission.type.g.dart';

@HiveType(typeId: permissionSchemaIndex)
enum PermissionType<T> {
  @HiveField(0)
  readOnly,
  @HiveField(1)
  readWrite,
  @HiveField(2)
  readWriteUpdate,
  @HiveField(3)
  readWriteUpdateDelete,
}
