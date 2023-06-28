library eatery_db;

// Exports
export 'package:hive_flutter/adapters.dart';
export 'src/schemas/types/order.type.dart';
export 'src/schemas/types/printer.type.dart';
export 'src/schemas/types/food.type.dart';
export 'src/schemas/subscription.dart';
export 'src/schemas/types/subscription.type.dart';
export 'src/schemas/company.dart';
export 'src/schemas/types/edition.type.dart';
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
  late Box<User> staffBox;
  late Box<TaxType> taxTypeBox;
  late Box<ProductType> productTypeBox;
  late Box<FoodType> foodTypeBox;
  late Box<SubscriptionType> subscriptionTypeBox;
  late Box<Edition> editionBox;
  late Box<OrderType> orderTypeBox;
  late Box<PrinterType> printerTypeBox;

  Future<void> dispose() => Hive.close();

  Future<void> init([String? subDir]) async {
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
    Hive.registerAdapter(EditionAdapter());
    Hive.registerAdapter(OrderTypeAdapter());
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
    staffBox = await Hive.openBox<User>('staff');
    editionBox = await Hive.openBox<Edition>('edition');
    orderTypeBox = await Hive.openBox<OrderType>('orderType');
    printerTypeBox = await Hive.openBox<PrinterType>('printerType');
    foodTypeBox = await Hive.openBox<FoodType>('foodType');
    productTypeBox = await Hive.openBox<ProductType>('productType');
    subscriptionTypeBox =
    await Hive.openBox<SubscriptionType>('subscriptionType');
    taxTypeBox = await Hive.openBox<TaxType>('taxType');
  }
}
