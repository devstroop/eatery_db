library eatery_db;
import 'package:eatery_db/models/order/order_type.dart';
import 'package:eatery_db/models/printer/printer_type.dart';
import 'package:eatery_db/models/product/food_type.dart';
import 'package:eatery_db/models/product/product_type.dart';
import 'package:eatery_db/models/subscription/subscription_type.dart';
import 'package:eatery_db/models/tax/tax_type.dart';
import 'package:hive_flutter/adapters.dart';
import 'models/company/company.dart';
import 'models/company/edition.dart';
import 'models/company/k_currency.dart';
import 'models/config/auto_print.dart';
import 'models/customer/customer.dart';
import 'models/dining_table/dining_table.dart';
import 'models/dining_table/dining_table_category.dart';
import 'models/order/order.dart';
import 'models/order/order_item.dart';
import 'models/printer/printer.dart';
import 'models/product/product.dart';
import 'models/product/product_category.dart';
import 'models/subscription/subscription.dart';
import 'models/tax/tax_slab.dart';
import 'models/waiter/waiter.dart';

class EateryDB{
  int getIdentity(Iterable<dynamic> table){
    int identity = 0;
    while(table.where((element) => element.id == identity).isNotEmpty){
      identity++;
    }
    print(identity);
    return identity;
  }

  Box<Company> companyBox() => Hive.box<Company>('companies');
  Box<kCurrency> currencyBox() => Hive.box<kCurrency>('currencies');
  Box<AutoPrint> autoPrintBox() => Hive.box<AutoPrint>('autoPrint');
  Box<Customer> customerBox() => Hive.box<Customer>('customers');
  Box<DiningTable> diningTableBox() => Hive.box<DiningTable>('diningTables');
  Box<DiningTableCategory> diningTableCategoryBox() => Hive.box<DiningTableCategory>('diningTableCategories');
  Box<Order> orderBox() => Hive.box<Order>('orders');
  Box<OrderItem> orderItemBox() => Hive.box<OrderItem>('orderItems');
  Box<Printer> printerBox() => Hive.box<Printer>('printers');
  Box<Product> productBox() => Hive.box<Product>('products');
  Box<ProductCategory> productCategoryBox() => Hive.box<ProductCategory>('productCategories');
  Box<Subscription> subscriptionBox() => Hive.box<Subscription>('subscription');
  Box<TaxSlab> taxSlabBox() => Hive.box<TaxSlab>('taxSlabs');
  Box<Waiter> waiterBox() => Hive.box<Waiter>('waiters');



  dispose(){
    Hive.close();
  }

  init([String? subDir]) async{
    // init
    await Hive.initFlutter(subDir);

    // register adapter
    Hive.registerAdapter(CompanyAdapter());
    Hive.registerAdapter(kCurrencyAdapter());
    Hive.registerAdapter(AutoPrintAdapter());
    Hive.registerAdapter(CustomerAdapter());
    Hive.registerAdapter(DiningTableAdapter());
    Hive.registerAdapter(DiningTableCategoryAdapter());
    Hive.registerAdapter(OrderAdapter());
    Hive.registerAdapter(OrderItemAdapter());
    Hive.registerAdapter(PrinterAdapter());
    Hive.registerAdapter(ProductAdapter());
    Hive.registerAdapter(ProductCategoryAdapter());
    Hive.registerAdapter(SubscriptionAdapter());
    Hive.registerAdapter(TaxSlabAdapter());
    Hive.registerAdapter(WaiterAdapter());

    Hive.registerAdapter(EditionAdapter());
    Hive.registerAdapter(OrderTypeAdapter());
    Hive.registerAdapter(PrinterTypeAdapter());
    Hive.registerAdapter(FoodTypeAdapter());
    Hive.registerAdapter(ProductTypeAdapter());
    Hive.registerAdapter(SubscriptionTypeAdapter());
    Hive.registerAdapter(TaxTypeAdapter());

    // open box
    await Hive.openBox<Company>('companies');
    await Hive.openBox<kCurrency>('currencies');
    await Hive.openBox<AutoPrint>('autoPrint');
    await Hive.openBox<Customer>('customers');
    await Hive.openBox<DiningTable>('diningTables');
    await Hive.openBox<DiningTableCategory>('diningTableCategories');
    await Hive.openBox<Order>('orders');
    await Hive.openBox<OrderItem>('orderItems');
    await Hive.openBox<Printer>('printers');
    await Hive.openBox<Product>('products');
    await Hive.openBox<ProductCategory>('productCategories');
    await Hive.openBox<Subscription>('subscription');
    await Hive.openBox<TaxSlab>('taxSlabs');
    await Hive.openBox<Waiter>('waiters');
  }
}
