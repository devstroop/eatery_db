import 'package:eatery_db/eatery_db.dart';

part 'permission.g.dart';

@HiveType(typeId: permissionSchemaIndex)
class Permission {
  @HiveField(0)
  final bool readAll;
  @HiveField(1)
  final bool read;
  @HiveField(2)
  final bool write;
  @HiveField(3)
  final bool update;
  @HiveField(4)
  final bool delete;

  const Permission({
    required this.readAll,
    this.read = false,
    this.write = false,
    this.update = false,
    this.delete = false,
  });

  Permission.fromMap(Map<String, dynamic> map)
      : readAll = map['readAll'],
        read = map['read'],
        write = map['write'],
        update = map['update'],
        delete = map['delete'];

  Map<String, Object?> toMap() {
    return {
      'readAll': readAll,
      'read': read,
      'write': write,
      'update': update,
      'delete': delete,
    };
  }
}
