import 'package:eatery_db/eatery_db.dart';

extension PermissionTypeExtension on PermissionType {
  static Box<PermissionType> get box => Hive.box<PermissionType>('permissionType');
}