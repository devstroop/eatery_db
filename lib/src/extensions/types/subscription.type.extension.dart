import 'package:eatery_db/eatery_db.dart';


extension SubscriptionTypeExtension on SubscriptionType {
  String? get label {
    switch (this) {
      case SubscriptionType.basic:
        return "Basic";
      case SubscriptionType.professional:
        return "Professional";
      case SubscriptionType.enterprise:
        return "Enterprise";
      default:
        return null;
    }
  }

  List<String>? get features {
    switch (this) {
      case SubscriptionType.basic:
        return [
          "✅ Free Forever",
          "✅ 1 User",
          "❎ 50 Sales daily",
          "❎ 50 Customers monthly",
          "❌ No Backup Support",
          "❌ No Printer Support",
          "❌ No Password Recovery",
          "❌ No Support",
          "✅ Suitable for Evaluation and Testing"
        ];
      case SubscriptionType.professional:
        return [
          "🔄 ₹ 999 / Year",
          "✅ 1 User",
          "✅ Unlimited Transactions",
          "✅ Unlimited Customers",
          "✅ Daily Backup on Google Drive Support",
          "✅ Password Recovery Supported",
          "✅ 58mm/80mm Bluetooth Printer Support",
          "✅ Live Support",
          "✅ Perfect for Individuals, Small Businesses and Startups"
        ];
      case SubscriptionType.enterprise:
        return [
          "🔄 ₹ 1999 / Year",
          "✅ Unlimited Users",
          "✅ Unlimited Transactions",
          "✅ Unlimited Customers",
          "✅ Scheduled Backup on Google Drive/Email/S3/FTP/HTTP Support",
          "✅ Enhanced Password Security",
          "✅ 58mm/80mm/Custom USB, Bluetooth and LAN Printer Support",
          "✅ Order Status and Kitchen Terminal Web App on Local Network",
          "✅ High Priority Live Support",
          "✅ Perfect for Medium and Large Businesses"
        ];
      default:
        return null;
    }
  }
}
