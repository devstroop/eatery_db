library eatery_db;

// Exports
export 'package:hive_flutter/adapters.dart';
export 'src/schemas/types/saleOrder.type.dart';
export 'src/schemas/types/printer.type.dart';
export 'src/schemas/types/food.type.dart';
export 'src/schemas/subscription.dart';
export 'src/schemas/types/subscription.type.dart';
export 'src/schemas/company.dart';
export 'src/schemas/types/taxEdition.type.dart';
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
export 'src/schemas/types/tax.type.dart';
export 'src/schemas/types/product.type.dart';
export 'src/schemas/types/voucher.type.dart';
export 'src/schemas/types/user.type.dart';
export 'src/extensions/box.extension.dart';
export 'src/extensions/subscription.extension.dart';
export 'src/schemas/types/master.type.dart';

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
  late Box<kCurrency> currencyBox;
  late Box<ExpressConfiguration> autoPrintBox;
  late Box<Master> masterBox;
  late Box<DiningTable> diningTableBox;
  late Box<DiningTableCategory> diningTableCategoryBox;
  late Box<Voucher> voucherBox;
  late Box<Printer> printerBox;
  late Box<Product> productBox;
  late Box<ProductCategory> productCategoryBox;
  late Box<Subscription> subscriptionBox;
  late Box<TaxSlab> taxSlabBox;
  late Box<User> userBox;

  // Type Boxes
  late Box<TaxType> taxTypeBox;
  late Box<ProductType> productTypeBox;
  late Box<FoodType> foodTypeBox;
  late Box<SubscriptionType> subscriptionTypeBox;
  late Box<TaxEdition> editionBox;
  late Box<SaleOrderType> orderTypeBox;
  late Box<PrinterType> printerTypeBox;
  late Box<VoucherType> voucherTypeBox;

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
    Hive.registerAdapter(kCurrencyAdapter());
    Hive.registerAdapter(ExpressConfigurationAdapter());
    Hive.registerAdapter(MasterAdapter());
    Hive.registerAdapter(DiningTableAdapter());
    Hive.registerAdapter(DiningTableCategoryAdapter());
    Hive.registerAdapter(VoucherAdapter());
    Hive.registerAdapter(PrinterAdapter());
    Hive.registerAdapter(ProductAdapter());
    Hive.registerAdapter(ProductCategoryAdapter());
    Hive.registerAdapter(SubscriptionAdapter());
    Hive.registerAdapter(TaxSlabAdapter());
    Hive.registerAdapter(UserAdapter());
    Hive.registerAdapter(TaxEditionAdapter());
    Hive.registerAdapter(SaleOrderTypeAdapter());
    Hive.registerAdapter(PrinterTypeAdapter());
    Hive.registerAdapter(FoodTypeAdapter());
    Hive.registerAdapter(ProductTypeAdapter());
    Hive.registerAdapter(SubscriptionTypeAdapter());
    Hive.registerAdapter(TaxTypeAdapter());

    // Open boxes
    companyBox = await Hive.openBox<Company>('company');
    currencyBox = await Hive.openBox<kCurrency>('currency');
    autoPrintBox = await Hive.openBox<ExpressConfiguration>('autoPrint');
    masterBox = await Hive.openBox<Master>('master');
    diningTableBox = await Hive.openBox<DiningTable>('diningTable');
    diningTableCategoryBox =
        await Hive.openBox<DiningTableCategory>('diningTableCategory');
    voucherBox = await Hive.openBox<Voucher>('voucher');
    printerBox = await Hive.openBox<Printer>('printer');
    productBox = await Hive.openBox<Product>('product');
    productCategoryBox = await Hive.openBox<ProductCategory>('productCategory');
    subscriptionBox = await Hive.openBox<Subscription>('subscription');
    taxSlabBox = await Hive.openBox<TaxSlab>('taxSlab');
    userBox = await Hive.openBox<User>('staff');
    editionBox = await Hive.openBox<TaxEdition>('edition');
    orderTypeBox = await Hive.openBox<SaleOrderType>('orderType');
    printerTypeBox = await Hive.openBox<PrinterType>('printerType');
    foodTypeBox = await Hive.openBox<FoodType>('foodType');
    productTypeBox = await Hive.openBox<ProductType>('productType');
    subscriptionTypeBox =
        await Hive.openBox<SubscriptionType>('subscriptionType');
    taxTypeBox = await Hive.openBox<TaxType>('taxType');
  }
  Future<void> disconnectDB() => Hive.close();
  Future<void> clearDB({bool confirm = false}) async {
    if (!confirm) return;
    await companyBox.clear();
    await currencyBox.clear();
    await autoPrintBox.clear();
    await masterBox.clear();
    await diningTableBox.clear();
    await diningTableCategoryBox.clear();
    await voucherBox.clear();
    await printerBox.clear();
    await productBox.clear();
    await productCategoryBox.clear();
    await subscriptionBox.clear();
    await taxSlabBox.clear();
    await userBox.clear();
    await editionBox.clear();
    await orderTypeBox.clear();
    await printerTypeBox.clear();
    await foodTypeBox.clear();
    await productTypeBox.clear();
    await subscriptionTypeBox.clear();
    await taxTypeBox.clear();
  }
  Future<void> deleteDB({bool confirm = false}) async {
    if (!confirm) return;
    await companyBox.deleteFromDisk();
    await currencyBox.deleteFromDisk();
    await autoPrintBox.deleteFromDisk();
    await masterBox.deleteFromDisk();
    await diningTableBox.deleteFromDisk();
    await diningTableCategoryBox.deleteFromDisk();
    await voucherBox.deleteFromDisk();
    await printerBox.deleteFromDisk();
    await productBox.deleteFromDisk();
    await productCategoryBox.deleteFromDisk();
    await subscriptionBox.deleteFromDisk();
    await taxSlabBox.deleteFromDisk();
    await userBox.deleteFromDisk();
    await editionBox.deleteFromDisk();
    await orderTypeBox.deleteFromDisk();
    await printerTypeBox.deleteFromDisk();
    await foodTypeBox.deleteFromDisk();
    await productTypeBox.deleteFromDisk();
    await subscriptionTypeBox.deleteFromDisk();
    await taxTypeBox.deleteFromDisk();
  }
  Future<void> openCompany(int companyKey, String username, String passHash) async {
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
