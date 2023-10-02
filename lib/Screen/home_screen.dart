import 'package:flutter/material.dart';
import 'package:invoice_app/Screen/Invoice_screen.dart';

import '../Utils/global_class.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text(
            "INVOICE",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'pdf');
                },
                icon: Icon(Icons.picture_as_pdf))
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: Global.g1.InvoiceList
                  .map(
                    (e) => Container(
                      margin: EdgeInsets.all(15),
                      height: MediaQuery.of(context).size.height * 0.18,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade300,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(7),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Product Name : ${e['Name']}'),
                            const SizedBox(
                              height: 8,
                            ),
                            Text('Product No : ${e['ProductNo']}'),
                            const SizedBox(
                              height: 8,
                            ),
                            Text('Quantity : ${e['Qa']}'),
                            const SizedBox(
                              height: 8,
                            ),
                            SizedBox(
                              height: 27,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Use GST : ${e['GST']}'),
                                  Text('Discount : ${e['Discount']}%'),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 27,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Product Price : ${e['Price']}'),
                                  Text('Total : ${e['Total']}'),
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          Global.g1.InvoiceList.remove(e);
                                        });
                                      },
                                      icon: Icon(Icons.delete))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, 'invoice').then((value) {
              setState(() {});
            });
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}