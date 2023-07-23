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

  Box<Company> companyBox = Hive.box<Company>('company');
  Box<KCurrency> currencyBox = Hive.box<KCurrency>('currency');
  Box<AutoPrint> autoPrintBox = Hive.box<AutoPrint>('autoPrint');
  Box<Customer> customerBox = Hive.box<Customer>('customer');
  Box<DiningTable> diningTableBox = Hive.box<DiningTable>('diningTable');
  Box<DiningTableCategory> diningTableCategoryBox = Hive.box<DiningTableCategory>('diningTableCategory');
  Box<Order> orderBox = Hive.box<Order>('order');
  Box<Printer> printerBox = Hive.box<Printer>('printer');
  Box<Product> productBox = Hive.box<Product>('product');
  Box<ProductCategory> productCategoryBox = Hive.box<ProductCategory>('productCategory');
  Box<Subscription> subscriptionBox = Hive.box<Subscription>('subscription');
  Box<TaxSlab> taxSlabBox = Hive.box<TaxSlab>('taxSlab');
  Box<Staff> staffBox = Hive.box<Staff>('staff');
  Box<StaffType> staffTypeBox = Hive.box<StaffType>('staffType');
  Box<TaxType> taxTypeBox = Hive.box<TaxType>('taxType');
  Box<ProductType> productTypeBox = Hive.box<ProductType>('productType');
  Box<FoodType> foodTypeBox = Hive.box<FoodType>('foodType');
  Box<SubscriptionType> subscriptionTypeBox = Hive.box<SubscriptionType>('subscriptionType');
  Box<Edition> editionBox = Hive.box<Edition>('edition');
  Box<OrderType> orderTypeBox = Hive.box<OrderType>('orderType');
  Box<PrinterType> printerTypeBox = Hive.box<PrinterType>('printerType');

  Future<void> dispose() => Hive.close();

  // bool isLoaded() =>
  //     companyBox != null &&
  //     currencyBox != null &&
  //     autoPrintBox != null &&
  //     customerBox != null &&
  //     diningTableBox != null &&
  //     diningTableCategoryBox != null &&
  //     orderBox != null &&
  //     printerBox != null &&
  //     productBox != null &&
  //     productCategoryBox != null &&
  //     subscriptionBox != null &&
  //     taxSlabBox != null &&
  //     staffBox != null &&
  //     staffTypeBox != null &&
  //     taxTypeBox != null &&
  //     productTypeBox != null &&
  //     foodTypeBox != null &&
  //     subscriptionTypeBox != null &&
  //     editionBox != null &&
  //     orderTypeBox != null &&
  //     printerTypeBox != null;

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
    await Hive.openBox<Company>('company');
    await Hive.openBox<KCurrency>('currency');
    await Hive.openBox<AutoPrint>('autoPrint');
    await Hive.openBox<Customer>('customer');
    await Hive.openBox<DiningTable>('diningTable');
    await Hive.openBox<DiningTableCategory>('diningTableCategory');
    await Hive.openBox<Order>('order');
    await Hive.openBox<Printer>('printer');
    await Hive.openBox<Product>('product');
    await Hive.openBox<ProductCategory>('productCategory');
    await Hive.openBox<Subscription>('subscription');
    await Hive.openBox<TaxSlab>('taxSlab');
    await Hive.openBox<Staff>('staff');
    await Hive.openBox<StaffType>('staffType');
    await Hive.openBox<Edition>('edition');
    await Hive.openBox<OrderType>('orderType');
    await Hive.openBox<PrinterType>('printerType');
    await Hive.openBox<FoodType>('foodType');
    await Hive.openBox<ProductType>('productType');
    await Hive.openBox<SubscriptionType>('subscriptionType');
    await Hive.openBox<TaxType>('taxType');
  }
}
