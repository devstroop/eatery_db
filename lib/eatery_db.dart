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
export 'src/extensions/types/taxEdition.type.extension.dart';

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
 */

class EateryDB {
  static final EateryDB instance = EateryDB();
  ////////////////////////////////
  // Company
  ////////////////////////////////
  Box<Company> get companyBox => Hive.box<Company>('company');
  Box<Subscription> get subscriptionBox => Hive.box<Subscription>('subscription');
  Box<KCurrency> get currencyBox => Hive.box<KCurrency>('currency');
  // Static Types
  Box<FoodType>? get foodTypeBox => Hive.box<FoodType>('foodType');
  Box<MasterType>? get masterTypeBox => Hive.box<MasterType>('masterType');
  Box<PermissionType>? get permissionBox => Hive.box<PermissionType>('permissionType');
  Box<PrinterType>? get printerTypeBox => Hive.box<PrinterType>('printerType');
  Box<ProductType>? get productTypeBox => Hive.box<ProductType>('productType');
  Box<SaleOrderType>? get saleOrderTypeBox => Hive.box<SaleOrderType>('saleOrderType');
  Box<SubscriptionType>? get subscriptionTypeBox => Hive.box<SubscriptionType>('subscriptionType');
  Box<TaxType>? get taxTypeBox => Hive.box<TaxType>('taxType');
  Box<TaxEditionType>? get taxEditionTypeBox => Hive.box<TaxEditionType>('taxEditionType');
  Box<UserType>? get userTypeBox => Hive.box<UserType>('userType');
  Box<VoucherType>? get voucherTypeBox => Hive.box<VoucherType>('voucherType');


  ////////////////////////////////
  // CompanyData
  ////////////////////////////////
  Box<DiningTable>? get diningTableBox => openedCompany != null
      ? Hive.box<DiningTable>('diningTable_${_openedCompany?.key}')
      : null;
  Box<DiningTableCategory>? get diningTableCategoryBox => openedCompany != null
      ? Hive.box<DiningTableCategory>(
          'diningTableCategory_${_openedCompany?.key}')
      : null;
  Box<ExpressConfiguration>? get expressConfigurationBox =>
      openedCompany != null
          ? Hive.box<ExpressConfiguration>(
              'expressConfiguration_${_openedCompany?.key}')
          : null;
  Box<Master>? get masterBox => openedCompany != null
      ? Hive.box<Master>('master_${_openedCompany?.key}')
      : null;
  Box<Printer>? get printerBox => openedCompany != null
      ? Hive.box<Printer>('printer_${_openedCompany?.key}')
      : null;
  Box<Product>? get productBox => openedCompany != null
      ? Hive.box<Product>('product_${_openedCompany?.key}')
      : null;
  Box<ProductCategory>? get productCategoryBox => openedCompany != null
      ? Hive.box<ProductCategory>('productCategory_${_openedCompany?.key}')
      : null;
  Box<TaxSlab>? get taxSlabBox => openedCompany != null
      ? Hive.box<TaxSlab>('taxSlab_${_openedCompany?.key}')
      : null;
  Box<User>? get userBox => openedCompany != null
      ? Hive.box<User>('user_${_openedCompany?.key}')
      : null;
  Box<Voucher>? get voucherBox => openedCompany != null
      ? Hive.box<Voucher>('voucher_${_openedCompany?.key}')
      : null;


  // Getters and Setters
  Company? _openedCompany;
  Company? get openedCompany => _openedCompany;
  User? _loggedInUser;
  User? get loggedInUser => _loggedInUser;

  // Connection
  Future<void> connectDB([String? subDir]) async {
    // Initialize hive
    await Hive.initFlutter(subDir);

    Hive.registerAdapter(CompanyAdapter());
    Hive.registerAdapter(SubscriptionAdapter());

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



    Hive.registerAdapter(DiningTableAdapter());
    Hive.registerAdapter(DiningTableCategoryAdapter());
    Hive.registerAdapter(ExpressConfigurationAdapter());
    Hive.registerAdapter(KCurrencyAdapter());
    Hive.registerAdapter(MasterAdapter());
    Hive.registerAdapter(PermissionTypeAdapter());
    Hive.registerAdapter(PrinterAdapter());
    Hive.registerAdapter(ProductAdapter());
    Hive.registerAdapter(ProductCategoryAdapter());
    Hive.registerAdapter(TaxSlabAdapter());
    Hive.registerAdapter(UserAdapter());
    Hive.registerAdapter(VoucherAdapter());

    await Hive.openBox<Company>('company');
    await Hive.openBox<KCurrency>('currency');
    await Hive.openBox<Subscription>('subscription');
    // Static types initialization
    await Hive.openBox<FoodType>('foodType');
    await Hive.openBox<MasterType>('masterType');
    await Hive.openBox<PrinterType>('printerType');
    await Hive.openBox<ProductType>('productType');
    await Hive.openBox<SaleOrderType>('saleOrderType');
    await Hive.openBox<SubscriptionType>('subscriptionType');
    await Hive.openBox<TaxType>('taxType');
    await Hive.openBox<TaxEditionType>('taxEdition');
    await Hive.openBox<UserType>('userType');
    await Hive.openBox<VoucherType>('voucherType');




  }

  Future<void> disconnectDB() => Hive.close();

  Future<void> clearDB({bool confirm = false}) async {
    if (!confirm) return;
    await companyBox.clear();
    await currencyBox.clear();
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
    await currencyBox.deleteFromDisk();
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

  Future<void> openCompany(int companyKey) async {
    Company? company = companyBox.get(companyKey);
    if (company == null) {
      throw Exception('Company not found');
    }
    
    _openedCompany = company;
    await Hive.openBox<DiningTable>('diningTable_${_openedCompany?.key}');
    await Hive.openBox<DiningTableCategory>('diningTableCategory_${_openedCompany?.key}');
    await Hive.openBox<ExpressConfiguration>(
        'expressConfiguration_${_openedCompany?.key}');
    await Hive.openBox<Master>('master_${_openedCompany?.key}');
    await Hive.openBox<PermissionType>('permission_${_openedCompany?.key}');
    await Hive.openBox<Printer>('printer_${_openedCompany?.key}');
    await Hive.openBox<Product>('product_${_openedCompany?.key}');
    await Hive.openBox<ProductCategory>(
        'productCategory_${_openedCompany?.key}');
    await Hive.openBox<TaxSlab>('taxSlab_${_openedCompany?.key}');
    await Hive.openBox<User>('user_${_openedCompany?.key}');
    await Hive.openBox<Voucher>('voucher_${_openedCompany?.key}');
  }

  Future<void> closeCompany() async {
    _openedCompany = null;
    _loggedInUser = null;
  }
}
