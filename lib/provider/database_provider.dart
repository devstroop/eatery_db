/*
import 'package:hive_flutter/adapters.dart';

import '../models/company/k_currency.dart';
import '../models/customer/customer.dart';
import '../models/dining_table/dining_table.dart';
import '../models/dining_table/dining_table_category.dart';
import '../models/order/order.dart';
import '../models/order/order_item.dart';
import '../models/printer/printer.dart';
import '../models/product/product.dart';
import '../models/product/product_category.dart';
import '../models/subscription/subscription.dart';
import '../models/tax/tax_slab.dart';
import '../models/waiter/waiter.dart';
import '../models/company/company.dart';
import '../models/config/auto_print.dart';

/*class DatabaseProvider{
  late Box<Company> companyBox;
  late Box<Currency> currencyBox;
  late Box<AutoPrint> autoPrintBox;
  late Box<Customer> customerBox;
  late Box<DiningTable> diningTableBox;
  late Box<DiningTableCategory> diningTableCategoryBox;
  late Box<Order> orderBox;
  late Box<OrderItem> orderItemBox;
  late Box<Printer> printerBox;
  late Box<Product> productBox;
  late Box<ProductCategory> productCategoryBox;
  late Box<Subscription> subscriptionBox;
  late Box<TaxSlab> taxSlabBox;
  late Box<Waiter> waiterBox;

  init() async {
    _registerAdapter();
    companyBox = await Hive.openBox<Company>('companies');
    currencyBox = await Hive.openBox<Currency>('currencies');
    autoPrintBox = await Hive.openBox<AutoPrint>('autoPrint');
    customerBox = await Hive.openBox<Customer>('customers');
    diningTableBox = await Hive.openBox<DiningTable>('diningTables');
    diningTableCategoryBox = await Hive.openBox<DiningTableCategory>('diningTableCategories');
    orderBox = await Hive.openBox<Order>('orders');
    orderItemBox = await Hive.openBox<OrderItem>('orderItems');
    printerBox = await Hive.openBox<Printer>('printers');
    productBox = await Hive.openBox<Product>('products');
    productCategoryBox = await Hive.openBox<ProductCategory>('productCategories');
    subscriptionBox = await Hive.openBox<Subscription>('subscription');
    taxSlabBox = await Hive.openBox<TaxSlab>('taxSlabs');
    waiterBox = await Hive.openBox<Waiter>('waiters');

  }
  dispose(){
    Hive.close();
  }

  _registerAdapter(){
    Hive.registerAdapter(CompanyAdapter());
    Hive.registerAdapter(CurrencyAdapter());
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
  }
}*/

class DatabaseProvider {
  Box<Company> companyBox() => Hive.box<Company>('companies');

  Box<Currency> currencyBox() => Hive.box<Currency>('currencies');

  Box<AutoPrint> autoPrintBox() => Hive.box<AutoPrint>('autoPrint');

  Box<Customer> customerBox() => Hive.box<Customer>('customers');

  Box<DiningTable> diningTableBox() => Hive.box<DiningTable>('diningTables');

  Box<DiningTableCategory> diningTableCategoryBox() =>
      Hive.box<DiningTableCategory>('diningTableCategories');

  Box<Order> orderBox() => Hive.box<Order>('orders');

  Box<OrderItem> orderItemBox() => Hive.box<OrderItem>('orderItems');

  Box<Printer> printerBox() => Hive.box<Printer>('printers');

  Box<Product> productBox() => Hive.box<Product>('products');

  Box<ProductCategory> productCategoryBox() =>
      Hive.box<ProductCategory>('productCategories');

  Box<Subscription> subscriptionBox() => Hive.box<Subscription>('subscription');

  Box<TaxSlab> taxSlabBox() => Hive.box<TaxSlab>('taxSlabs');

  Box<Waiter> waiterBox() => Hive.box<Waiter>('waiters');

  dispose() {
    Hive.close();
  }

  init() async {
    // init
    await Hive.initFlutter();

    // register adapter
    Hive.registerAdapter(CompanyAdapter());
    Hive.registerAdapter(CurrencyAdapter());
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

    // open box
    await Hive.openBox<Company>('companies');
    await Hive.openBox<Currency>('currencies');
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

/*
late
*/

*/