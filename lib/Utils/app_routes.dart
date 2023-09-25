import 'package:flutter/material.dart';
import 'package:invoice_app/Screen/Invoice_screen.dart';
import 'package:invoice_app/Screen/home_screen.dart';
import 'package:invoice_app/Screen/pdf_screen.dart';
Map<String, WidgetBuilder> screen_routes = {
  '/': (context) => HomeScreen(),
  'invoice':(context) => InvoiceMaker(),
  'pdf':(context) => PdfScreen()
};