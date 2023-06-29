library eatery_db;

// Exports
export 'package:hive_flutter/adapters.dart';

export 'src/schema.index.dart';

export 'src/schemas/subscription.dart';
export 'src/schemas/company.dart';
export 'src/schemas/kCurrency.dart';
export 'src/schemas/expressConfiguration.dart';
export 'src/schemas/master.dart';
export 'src/schemas/diningTable.dart';
export 'src/schemas/diningTableCategory.dart';
export 'src/schemas/voucher.dart';
export 'src/schemas/printer.dart';
export 'src/schemas/product.dart';
export 'src/schemas/productCategory.dart';
export 'src/schemas/taxSlab.dart';
export 'src/schemas/user.dart';
export 'src/schemas/userPermission.dart';
export 'src/schemas/permission.dart';

export 'src/schemas/types/saleOrder.type.dart';
export 'src/schemas/types/printer.type.dart';
export 'src/schemas/types/food.type.dart';
export 'src/schemas/types/subscription.type.dart';
export 'src/schemas/types/taxEdition.type.dart';
export 'src/schemas/types/tax.type.dart';
export 'src/schemas/types/product.type.dart';
export 'src/schemas/types/voucher.type.dart';
export 'src/schemas/types/user.type.dart';
export 'src/schemas/types/master.type.dart';

export 'src/extensions/box.extension.dart';
export 'src/extensions/subscription.extension.dart';

// Imports

import 'package:eatery_db/eatery_db.dart';

/*  ****************************************
  * Developed by: Akash Shah (@itsalfredakku)
  * BMC: https://www.buymeacoffee.com/aksbju
  * Email: akash@devstroop.com
  * Organization: Devstroop Technologies
  * Website: https://devstroop.com
  * Github: https://github.com/devstroop
  * Timestamp: 2023-06-20 11:57:00 IST
  * ****************************************
  * Schema Upgrade - Akash Shah (@itsalfredakku)
  * Timestamp: 2023-06-29 00:13:00 IST
  * ****************************************
  *
 */

class EateryDB {
  static final EateryDB instance = EateryDB();

  // Model Boxes
  late Box<Company> companyBox;
  late Box<DiningTable> diningTableBox;
  late Box<DiningTableCategory> diningTableCategoryBox;
  late Box<ExpressConfiguration> expressConfigurationBox;
  late Box<kCurrency> currencyBox;
  late Box<Master> masterBox;
  late Box<Permission> permissionBox;
  late Box<Printer> printerBox;
  late Box<Product> productBox;
  late Box<ProductCategory> productCategoryBox;
  late Box<Subscription> subscriptionBox;
  late Box<TaxSlab> taxSlabBox;
  late Box<User> userBox;
  late Box<UserPermission> userPermissionBox;
  late Box<Voucher> voucherBox;

  // Type Boxes
  late Box<FoodType> foodTypeBox;
  late Box<MasterType> masterTypeBox;
  late Box<PrinterType> printerTypeBox;
  late Box<ProductType> productTypeBox;
  late Box<SaleOrderType> saleOrderTypeBox;
  late Box<SubscriptionType> subscriptionTypeBox;
  late Box<TaxType> taxTypeBox;
  late Box<TaxEditionType> taxEditionTypeBox;
  late Box<UserType> userTypeBox;
  late Box<VoucherType> voucherTypeBox;

  // Getters and Setters
  Company? _openedCompany;
  Company? get openedCompany => _openedCompany;
  User? _loggedInUser;
  User? get loggedInUser => _loggedInUser;

  // Connection
  Future<void> connectDB([String? subDir]) async {
    // Initialize hive
    await Hive.initFlutter(subDir);

    // Register adapters
    Hive.registerAdapter(CompanyAdapter());
    Hive.registerAdapter(DiningTableAdapter());
    Hive.registerAdapter(DiningTableCategoryAdapter());
    Hive.registerAdapter(ExpressConfigurationAdapter());
    Hive.registerAdapter(kCurrencyAdapter());
    Hive.registerAdapter(MasterAdapter());
    Hive.registerAdapter(PermissionAdapter());
    Hive.registerAdapter(PrinterAdapter());
    Hive.registerAdapter(ProductAdapter());
    Hive.registerAdapter(ProductCategoryAdapter());
    Hive.registerAdapter(SubscriptionAdapter());
    Hive.registerAdapter(TaxSlabAdapter());
    Hive.registerAdapter(UserAdapter());
    Hive.registerAdapter(UserPermissionAdapter());
    Hive.registerAdapter(VoucherAdapter());

    Hive.registerAdapter(FoodTypeAdapter());
    Hive.registerAdapter(MasterTypeAdapter());
    Hive.registerAdapter(PrinterTypeAdapter());
    Hive.registerAdapter(ProductTypeAdapter());
    Hive.registerAdapter(SaleOrderTypeAdapter());
    Hive.registerAdapter(SubscriptionTypeAdapter());
    Hive.registerAdapter(TaxTypeAdapter());
    Hive.registerAdapter(TaxEditionTypeAdapter());
    Hive.registerAdapter(UserTypeAdapter());
    Hive.registerAdapter(VoucherTypeAdapter());

    // Open boxes
    companyBox = await Hive.openBox<Company>('company');
    diningTableBox = await Hive.openBox<DiningTable>('diningTable');
    diningTableCategoryBox =
        await Hive.openBox<DiningTableCategory>('diningTableCategory');
    expressConfigurationBox =
        await Hive.openBox<ExpressConfiguration>('expressConfiguration');
    currencyBox = await Hive.openBox<kCurrency>('currency');
    masterBox = await Hive.openBox<Master>('master');
    permissionBox = await Hive.openBox<Permission>('permission');
    printerBox = await Hive.openBox<Printer>('printer');
    productBox = await Hive.openBox<Product>('product');
    productCategoryBox = await Hive.openBox<ProductCategory>('productCategory');
    subscriptionBox = await Hive.openBox<Subscription>('subscription');
    taxSlabBox = await Hive.openBox<TaxSlab>('taxSlab');
    userBox = await Hive.openBox<User>('user');
    userPermissionBox = await Hive.openBox<UserPermission>('userPermission');
    voucherBox = await Hive.openBox<Voucher>('voucher');

    foodTypeBox = await Hive.openBox<FoodType>('foodType');
    masterTypeBox = await Hive.openBox<MasterType>('masterType');
    printerTypeBox = await Hive.openBox<PrinterType>('printerType');
    productTypeBox = await Hive.openBox<ProductType>('productType');
    saleOrderTypeBox = await Hive.openBox<SaleOrderType>('saleOrderType');
    subscriptionTypeBox =
        await Hive.openBox<SubscriptionType>('subscriptionType');
    taxTypeBox = await Hive.openBox<TaxType>('taxType');
    taxEditionTypeBox = await Hive.openBox<TaxEditionType>('taxEdition');
    userTypeBox = await Hive.openBox<UserType>('userType');
    voucherTypeBox = await Hive.openBox<VoucherType>('voucherType');
  }

  Future<void> disconnectDB() => Hive.close();
  Future<void> clearDB({bool confirm = false}) async {
    if (!confirm) return;
    await companyBox.clear();
    await currencyBox.clear();
    await expressConfigurationBox.clear();
    await masterBox.clear();
    await diningTableBox.clear();
    await diningTableCategoryBox.clear();
    await printerBox.clear();
    await productBox.clear();
    await productCategoryBox.clear();
    await subscriptionBox.clear();
    await taxSlabBox.clear();
    await userBox.clear();
    await userPermissionBox.clear();
    await permissionBox.clear();
    await voucherBox.clear();

    await taxEditionTypeBox.clear();
    await saleOrderTypeBox.clear();
    await printerTypeBox.clear();
    await foodTypeBox.clear();
    await masterTypeBox.clear();
    await productTypeBox.clear();
    await subscriptionTypeBox.clear();
    await taxTypeBox.clear();
    await userTypeBox.clear();
    await voucherTypeBox.clear();
  }

  Future<void> deleteDB({bool confirm = false}) async {
    if (!confirm) return;
    await companyBox.deleteFromDisk();
    await currencyBox.deleteFromDisk();
    await expressConfigurationBox.deleteFromDisk();
    await masterBox.deleteFromDisk();
    await diningTableBox.deleteFromDisk();
    await diningTableCategoryBox.deleteFromDisk();
    await printerBox.deleteFromDisk();
    await productBox.deleteFromDisk();
    await productCategoryBox.deleteFromDisk();
    await subscriptionBox.deleteFromDisk();
    await taxSlabBox.deleteFromDisk();
    await userBox.deleteFromDisk();
    await userPermissionBox.deleteFromDisk();
    await permissionBox.deleteFromDisk();
    await voucherBox.deleteFromDisk();

    await taxEditionTypeBox.deleteFromDisk();
    await saleOrderTypeBox.deleteFromDisk();
    await printerTypeBox.deleteFromDisk();
    await foodTypeBox.deleteFromDisk();
    await masterTypeBox.deleteFromDisk();
    await productTypeBox.deleteFromDisk();
    await subscriptionTypeBox.deleteFromDisk();
    await taxTypeBox.deleteFromDisk();
    await userTypeBox.deleteFromDisk();
    await voucherTypeBox.deleteFromDisk();
  }

  Future<void> openCompany(
      int companyKey, String username, String passHash) async {
    Company? company = companyBox.get(companyKey);
    if (company == null) {
      throw Exception('Company not found');
    }
    _loggedInUser = userBox.values.firstWhere(
        (element) =>
            element.username.toLowerCase().trim() ==
                username.toLowerCase().trim() &&
            element.passHash?.toLowerCase().trim() ==
                passHash.toLowerCase().trim(), orElse: () {
      throw Exception('Invalid username or password');
    });
    _openedCompany = company;
  }

  Future<void> closeCompany() async {
    _openedCompany = null;
    _loggedInUser = null;
  }
}
