import 'package:eatery_db/eatery_db.dart';

part 'userTypePermission.g.dart';

@HiveType(typeId: 112)
class UserTypePermission extends HiveObject {
  @HiveField(0)
  int companyKey; // Multi company identification
  @HiveField(1)
  UserType userType;
  @HiveField(2)
  bool userRead = false;
  @HiveField(3)
  bool userWrite = false;
  @HiveField(4)
  bool userDelete = false;
  @HiveField(5)
  bool userModify = false;
  @HiveField(6)
  bool diningTableRead = false;
  @HiveField(7)
  bool diningTableWrite = false;
  @HiveField(8)
  bool diningTableDelete = false;
  @HiveField(9)
  bool diningTableModify = false;

  UserTypePermission(
      {required this.userType,
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

  UserTypePermission.fromMap(Map<String, dynamic> map)
      : companyKey = map['companyKey'],
        userType = UserType.values[map['type']],
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
      'type': userType.index,
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
