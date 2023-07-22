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

  Box<Company>? companyBox;
  Box<KCurrency>? currencyBox;
  Box<AutoPrint>? autoPrintBox;
  Box<Customer>? customerBox;
  Box<DiningTable>? diningTableBox;
  Box<DiningTableCategory>? diningTableCategoryBox;
  Box<Order>? orderBox;
  Box<Printer>? printerBox;
  Box<Product>? productBox;
  Box<ProductCategory>? productCategoryBox;
  Box<Subscription>? subscriptionBox;
  Box<TaxSlab>? taxSlabBox;
  Box<Staff>? staffBox;
  Box<StaffType>? staffTypeBox;
  Box<TaxType>? taxTypeBox;
  Box<ProductType>? productTypeBox;
  Box<FoodType>? foodTypeBox;
  Box<SubscriptionType>? subscriptionTypeBox;
  Box<Edition>? editionBox;
  Box<OrderType>? orderTypeBox;
  Box<PrinterType>? printerTypeBox;

  Future<void> dispose() => Hive.close();

  Future<void> init([String? subDir]) async {
    // Initialize hive
    await Hive.initFlutter(subDir);

    // Register adapters
    Hive.registerAdapter(CompanyAdapter());
    Hive.registerAdapter(KCurrencyAdapter());
    Hive.registerAdapter(AutoPrintAdapter());
    Hive.registerAdapter(CustomerAdapter());
    Hive.registerAdapter(DiningTableAdapter());
    Hive.registerAdapter(DiningTableCategoryAdapter());
    Hive.registerAdapter(OrderAdapter());
    Hive.registerAdapter(PrinterAdapter());
    Hive.registerAdapter(ProductAdapter());
    Hive.registerAdapter(ProductCategoryAdapter());
    Hive.registerAdapter(SubscriptionAdapter());
    Hive.registerAdapter(TaxSlabAdapter());
    Hive.registerAdapter(StaffAdapter());
    Hive.registerAdapter(StaffTypeAdapter());
    Hive.registerAdapter(EditionAdapter());
    Hive.registerAdapter(OrderTypeAdapter());
    Hive.registerAdapter(PrinterTypeAdapter());
    Hive.registerAdapter(FoodTypeAdapter());
    Hive.registerAdapter(ProductTypeAdapter());
    Hive.registerAdapter(SubscriptionTypeAdapter());
    Hive.registerAdapter(TaxTypeAdapter());

    // Open boxes
    companyBox = await Hive.openBox<Company>('company');
    currencyBox = await Hive.openBox<KCurrency>('currency');
    autoPrintBox = await Hive.openBox<AutoPrint>('autoPrint');
    customerBox = await Hive.openBox<Customer>('customer');
    diningTableBox = await Hive.openBox<DiningTable>('diningTable');
    diningTableCategoryBox =
        await Hive.openBox<DiningTableCategory>('diningTableCategory');
    orderBox = await Hive.openBox<Order>('order');
    printerBox = await Hive.openBox<Printer>('printer');
    productBox = await Hive.openBox<Product>('product');
    productCategoryBox = await Hive.openBox<ProductCategory>('productCategory');
    subscriptionBox = await Hive.openBox<Subscription>('subscription');
    taxSlabBox = await Hive.openBox<TaxSlab>('taxSlab');
    staffBox = await Hive.openBox<Staff>('staff');
    staffTypeBox = await Hive.openBox<StaffType>('staffType');
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
