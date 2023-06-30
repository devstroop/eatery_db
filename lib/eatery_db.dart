library eatery_db;

// Exports
export 'package:hive_flutter/adapters.dart';

export 'src/schema.index.dart';

export 'src/schemas/subscription.dart';
export 'src/schemas/company.dart';
export 'src/schemas/k_currency.dart';
export 'src/schemas/express_configuration.dart';
export 'src/schemas/master.dart';
export 'src/schemas/dining_table.dart';
export 'src/schemas/dining_table_category.dart';
export 'src/schemas/voucher.dart';
export 'src/schemas/printer.dart';
export 'src/schemas/product.dart';
export 'src/schemas/product_category.dart';
export 'src/schemas/tax_slab.dart';
export 'src/schemas/user.dart';

export 'src/schemas/types/saleOrder.type.dart';
export 'src/schemas/types/printer.type.dart';
export 'src/schemas/types/food.type.dart';
export 'src/schemas/types/subscription.type.dart';
export 'src/schemas/types/taxEdition.type.dart';
export 'src/schemas/types/tax.type.dart';
export 'src/schemas/types/permission.type.dart';
export 'src/schemas/types/product.type.dart';
export 'src/schemas/types/voucher.type.dart';
export 'src/schemas/types/user.type.dart';
export 'src/schemas/types/master.type.dart';

export 'src/extensions/box.extension.dart';
export 'src/extensions/subscription.extension.dart';
export 'src/extensions/types/saleOrder.type.extension.dart';
export 'src/extensions/types/food.type.extension.dart';
export 'src/extensions/types/master.type.extension.dart';
export 'src/extensions/types/printer.type.extension.dart';
export 'src/extensions/types/subscription.type.extension.dart';

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
  late Box<Subscription> subscriptionBox;

  Box<DiningTable>? diningTableBox;
  Box<DiningTableCategory>? diningTableCategoryBox;
  Box<ExpressConfiguration>? expressConfigurationBox;
  Box<KCurrency>? currencyBox;
  Box<Master>? masterBox;
  Box<Printer>? printerBox;
  Box<Product>? productBox;
  Box<ProductCategory>? productCategoryBox;
  Box<TaxSlab>? taxSlabBox;
  Box<User>? userBox;
  Box<Voucher>? voucherBox;

// Type Boxes
  Box<FoodType>? foodTypeBox;
  Box<MasterType>? masterTypeBox;
  Box<PermissionType>? permissionBox;
  Box<PrinterType>? printerTypeBox;
  Box<ProductType>? productTypeBox;
  Box<SaleOrderType>? saleOrderTypeBox;
  Box<SubscriptionType>? subscriptionTypeBox;
  Box<TaxType>? taxTypeBox;
  Box<TaxEditionType>? taxEditionTypeBox;
  Box<UserType>? userTypeBox;
  Box<VoucherType>? voucherTypeBox;

  // Getters and Setters
  Company? _openedCompany;
  Company? get openedCompany => _openedCompany;
  User? _loggedInUser;
  User? get loggedInUser => _loggedInUser;

  // Connection
  Future<void> connectDB([String? subDir]) async {
    // Initialize hive
    await Hive.initFlutter(subDir);

    // Model Adapters
    Hive.registerAdapter(CompanyAdapter());
    Hive.registerAdapter(DiningTableAdapter());
    Hive.registerAdapter(DiningTableCategoryAdapter());
    Hive.registerAdapter(ExpressConfigurationAdapter());
    Hive.registerAdapter(KCurrencyAdapter());
    Hive.registerAdapter(MasterAdapter());
    Hive.registerAdapter(PermissionTypeAdapter());
    Hive.registerAdapter(PrinterAdapter());
    Hive.registerAdapter(ProductAdapter());
    Hive.registerAdapter(ProductCategoryAdapter());
    Hive.registerAdapter(SubscriptionAdapter());
    Hive.registerAdapter(TaxSlabAdapter());
    Hive.registerAdapter(UserAdapter());
    Hive.registerAdapter(VoucherAdapter());
    // Type Adapters
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

    // Global Boxes
    companyBox = await Hive.openBox<Company>('company');
    subscriptionBox = await Hive.openBox<Subscription>('subscription');

    // Model Boxes
    diningTableBox = openedCompany != null
        ? await Hive.openBox<DiningTable>('diningTable_${_openedCompany?.key}')
        : null;
    diningTableCategoryBox = openedCompany != null
        ? await Hive.openBox<DiningTableCategory>(
            'diningTableCategory_${_openedCompany?.key}')
        : null;
    expressConfigurationBox = openedCompany != null
        ? await Hive.openBox<ExpressConfiguration>(
            'expressConfiguration_${_openedCompany?.key}')
        : null;
    currencyBox = openedCompany != null
        ? await Hive.openBox<KCurrency>('currency_${_openedCompany?.key}')
        : null;
    masterBox = openedCompany != null
        ? await Hive.openBox<Master>('master_${_openedCompany?.key}')
        : null;
    permissionBox = openedCompany != null
        ? await Hive.openBox<PermissionType>(
            'permission_${_openedCompany?.key}')
        : null;
    printerBox = openedCompany != null
        ? await Hive.openBox<Printer>('printer_${_openedCompany?.key}')
        : null;
    productBox = openedCompany != null
        ? await Hive.openBox<Product>('product_${_openedCompany?.key}')
        : null;
    productCategoryBox = openedCompany != null
        ? await Hive.openBox<ProductCategory>(
            'productCategory_${_openedCompany?.key}')
        : null;
    taxSlabBox = openedCompany != null
        ? await Hive.openBox<TaxSlab>('taxSlab_${_openedCompany?.key}')
        : null;
    userBox = openedCompany != null
        ? await Hive.openBox<User>('user_${_openedCompany?.key}')
        : null;
    voucherBox = openedCompany != null
        ? await Hive.openBox<Voucher>('voucher_${_openedCompany?.key}')
        : null;

    // Static Boxes
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
    await currencyBox?.clear();
    await expressConfigurationBox?.clear();
    await masterBox?.clear();
    await diningTableBox?.clear();
    await diningTableCategoryBox?.clear();
    await printerBox?.clear();
    await productBox?.clear();
    await productCategoryBox?.clear();
    await subscriptionBox.clear();
    await taxSlabBox?.clear();
    await userBox?.clear();
    await permissionBox?.clear();
    await voucherBox?.clear();

    await taxEditionTypeBox?.clear();
    await saleOrderTypeBox?.clear();
    await printerTypeBox?.clear();
    await foodTypeBox?.clear();
    await masterTypeBox?.clear();
    await productTypeBox?.clear();
    await subscriptionTypeBox?.clear();
    await taxTypeBox?.clear();
    await userTypeBox?.clear();
    await voucherTypeBox?.clear();
  }

  Future<void> deleteDB({bool confirm = false}) async {
    if (!confirm) return;
    await companyBox.deleteFromDisk();
    await currencyBox?.deleteFromDisk();
    await expressConfigurationBox?.deleteFromDisk();
    await masterBox?.deleteFromDisk();
    await diningTableBox?.deleteFromDisk();
    await diningTableCategoryBox?.deleteFromDisk();
    await printerBox?.deleteFromDisk();
    await productBox?.deleteFromDisk();
    await productCategoryBox?.deleteFromDisk();
    await subscriptionBox.deleteFromDisk();
    await taxSlabBox?.deleteFromDisk();
    await userBox?.deleteFromDisk();
    await permissionBox?.deleteFromDisk();
    await voucherBox?.deleteFromDisk();

    await taxEditionTypeBox?.deleteFromDisk();
    await saleOrderTypeBox?.deleteFromDisk();
    await printerTypeBox?.deleteFromDisk();
    await foodTypeBox?.deleteFromDisk();
    await masterTypeBox?.deleteFromDisk();
    await productTypeBox?.deleteFromDisk();
    await subscriptionTypeBox?.deleteFromDisk();
    await taxTypeBox?.deleteFromDisk();
    await userTypeBox?.deleteFromDisk();
    await voucherTypeBox?.deleteFromDisk();
  }

  Future<void> openCompany(
      int companyKey, String username, String passHash) async {
    Company? company = companyBox.get(companyKey);
    if (company == null) {
      throw Exception('Company not found');
    }
    _loggedInUser = userBox?.values.firstWhere(
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
