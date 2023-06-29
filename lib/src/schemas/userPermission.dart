import 'package:eatery_db/eatery_db.dart';

part 'userPermission.g.dart';

@HiveType(typeId: userPermissionSchemaIndex)
class UserPermission extends HiveObject {
  @HiveField(0)
  int companyKey; // Multi company identification
  @HiveField(1)
  int userKey;
  @HiveField(2)
  bool userRead;
  @HiveField(3)
  bool userWrite;
  @HiveField(4)
  bool userDelete;
  @HiveField(5)
  bool userModify;
  @HiveField(6)
  bool diningTableRead = false;
  @HiveField(7)
  bool diningTableWrite = false;
  @HiveField(8)
  bool diningTableDelete = false;
  @HiveField(9)
  bool diningTableModify = false;

  UserPermission(
      {required this.userKey,
      required this.userRead,
      required this.userWrite,
      required this.userDelete,
      required this.userModify,
      required this.diningTableRead,
      required this.diningTableWrite,
      required this.diningTableDelete,
      required this.diningTableModify
      // TODO: Add more permissions
      })
      : companyKey = EateryDB.instance.openedCompany?.key;

  UserPermission.fromMap(Map<String, dynamic> map)
      : companyKey = map['companyKey'],
        userKey = map['userKey'],
        userRead = map['userRead'],
        userWrite = map['userWrite'],
        userDelete = map['userDelete'],
        userModify = map['userModify'],
        diningTableRead = map['diningTableRead'],
        diningTableWrite = map['diningTableWrite'],
        diningTableDelete = map['diningTableDelete'],
        diningTableModify = map['diningTableModify']
  // TODO: Add more permissions
  ;

  Map<String, Object?> toMap() {
    return {
      'companyKey': companyKey,
      'userKey': userKey,
      'userRead': userRead,
      'userWrite': userWrite,
      'userDelete': userDelete,
      'userModify': userModify,
      'diningTableRead': diningTableRead,
      'diningTableWrite': diningTableWrite,
      'diningTableDelete': diningTableDelete,
      'diningTableModify': diningTableModify,
      // TODO: Add more permissions
    };
  }
}
