library eatery_db;

// Exports
export 'package:hive_flutter/adapters.dart';
export 'src/types/order.type.dart';
export 'src/types/printer.type.dart';
export 'src/types/food.type.dart';
export 'src/models/subscription.dart';
export 'src/types/subscription.type.dart';
export 'src/models/company.dart';
export 'src/types/edition.type.dart';
export 'src/models/kCurrency.dart';
export 'src/models/autoPrintConfig.dart';
export 'src/models/master.dart';
export 'src/models/diningTable.dart';
export 'src/models/diningTableCategory.dart';
export 'src/models/voucher.dart';
export 'src/models/printer.dart';
export 'src/models/product.dart';
export 'src/models/productCategory.dart';
export 'src/models/taxSlab.dart';
export 'src/models/user.dart';
export 'src/types/tax.type.dart';
export 'src/types/product.type.dart';
export 'src/types/voucher.type.dart';
export 'src/types/user.type.dart';
export 'src/extensions/box.extension.dart';


// Imports

import 'package:eatery_db/eatery_db.dart';

/*
  * Developed by: Akash Shah (@itsalfredakku)
  * BMC: https://www.buymeacoffee.com/aksbju
  * Email: akash@devstroop.com
  * Organization: Devstroop Technologies
  * Website: https://devstroop.com
  * Github: https://github.com/devstroop
  * Date: 2023-06-20 11:57:00
 */

class EateryDB {
  static final EateryDB instance = EateryDB();

  late Box<Company> companyBox;
  late Box<kCurrency> currencyBox;
  late Box<AutoPrintConfig> autoPrintBox;
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
    Hive.registerAdapter(AutoPrintConfigAdapter());
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
    autoPrintBox = await Hive.openBox<AutoPrintConfig>('autoPrint');
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
