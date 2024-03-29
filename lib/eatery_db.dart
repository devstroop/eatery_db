library eatery_db;

// export 'package:uicons/uicons.dart';

// External packages
export 'package:hive_flutter/adapters.dart';
export 'package:hive/hive.dart';
export 'package:flutter/material.dart';
export 'dart:convert' show jsonEncode, jsonDecode;
export 'src/data/order/order_type.dart';
export 'src/data/printer/printer_type.dart';
export 'src/data/product/food_type.dart';
export 'src/data/subscription/subscription.dart';
export 'src/data/subscription/subscription_type.dart';
export 'src/data/company/company.dart';
export 'src/data/company/edition.dart';
export 'src/data/company/k_currency.dart';
export 'src/data/config/auto_print.dart';
export 'src/data/customer/customer.dart';
export 'src/data/dining_table/dining_table.dart';
export 'src/data/dining_table/dining_table_category.dart';
export 'src/data/dining_table/dining_table_status.dart';
export 'src/data/order/order.dart';
export 'src/data/printer/printer.dart';
export 'src/data/product/product.dart';
export 'src/data/product/product_category.dart';
export 'src/data/tax/tax_slab.dart';
export 'src/data/staff/staff.dart';
export 'src/data/staff/staff_type.dart';
export 'src/data/tax/tax_type.dart';
export 'src/data/product/product_type.dart';
export 'src/data/payment/payment.dart';
export 'src/data/payment/payment_mode.dart';
export 'src/data/eatery_db.dart';
// Extensions
export 'src/extensions/box.extension.dart';
// Drawings
export 'src/drawings/dine_in.drawing.dart';
export 'src/drawings/delivery.drawing.dart';
export 'src/drawings/take_away.drawing.dart';

export 'src/data/order/order_product.dart';

class TypeIndex{
  static const company = 0;
  static const customer = 1;
  static const diningTable = 2;
  static const diningTableCategory = 3;
  static const order = 4;
  static const orderType = 5;
  static const printer = 6;
  static const printerType = 7;
  static const product = 8;
  static const productCategory = 9;
  static const productType = 10;
  static const foodType = 11;
  static const subscription = 12;
  static const subscriptionType = 13;
  static const taxSlab = 14;
  static const taxSlabType = 15;
  static const staff = 16;
  static const staffType = 17;
  static const edition = 18;
  static const currency = 19;
  static const autoPrint = 20;
  static const payment = 21;
  static const paymentMode = 22;
  static const diningTableStatus = 23;
  static const orderProduct = 24;

}