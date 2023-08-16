import 'package:eatery_db/eatery_db.dart';
part 'subscription_type.g.dart';

@HiveType(typeId: TypeIndex.subscriptionType)
enum SubscriptionType {
  @HiveField(0, defaultValue: true)
  individual,
  @HiveField(1)
  business
}

extension SubscriptionTypeExtension on SubscriptionType {
  int get id {
    switch (this) {
      case SubscriptionType.individual:
        return 0;
      case SubscriptionType.business:
        return 1;
    }
  }

  String get name {
    switch (this) {
      case SubscriptionType.individual:
        return "Individual";
      case SubscriptionType.business:
        return "Business";
    }
  }

  String get description {
    switch (this) {
      case SubscriptionType.individual:
        return 'Get access to basic features!';
      case SubscriptionType.business:
        return 'Get access to advanced features!';
    }
  }

  List<String> get highlights {
    switch (this) {
      case SubscriptionType.individual:
        return ['20 Products (Inventory/Kitchen)', '5 Dining Tables', '2 Staffs', '100 Sales per month'];
      case SubscriptionType.business:
        return ['Unlimited Products (Inventory/Kitchen)', 'Unlimited Dining Tables', 'Unlimited Staffs', 'Unlimited Sales', 'Invoice Printing & Sharing', 'and more...'];
    }
  }

  String get label{
    switch (this) {
      case SubscriptionType.individual:
        return 'Free Forever';
      case SubscriptionType.business:
        return 'Monthly/Annual Subscription';
    }
  }

  Color get color{
    switch (this) {
      case SubscriptionType.individual:
        return Colors.cyan;
      case SubscriptionType.business:
        return Colors.deepPurple;
    }
  }
}
