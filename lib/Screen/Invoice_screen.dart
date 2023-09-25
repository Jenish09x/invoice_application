import 'package:flutter/material.dart';

import '../Utils/global_class.dart';

class InvoiceMaker extends StatefulWidget {
  const InvoiceMaker({super.key});

  @override
  State<InvoiceMaker> createState() => _InvoiceMakerState();
}

class _InvoiceMakerState extends State<InvoiceMaker> {
  TextEditingController txtname = TextEditingController();
  TextEditingController txtno = TextEditingController();
  TextEditingController txtproductname = TextEditingController();
  TextEditingController txttype = TextEditingController();
  TextEditingController txtQuantity = TextEditingController();
  TextEditingController txtprize = TextEditingController();
  double total=0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text(" Invoice Maker ",
              style: TextStyle(fontSize: 25, color: Colors.white)),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.share),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, 'pdf');
              },
              icon: Icon(Icons.picture_as_pdf_sharp),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                TextField(
                  controller: txtname,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    label: Text(
                      "Customer Name",
                      style: TextStyle(
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: txtno,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Text(
                      "invoice No.",
                      style: TextStyle(
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: txtproductname,
                  decoration: InputDecoration(
                    label: Text(
                      "Product Name",
                      style: TextStyle(
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: txttype,
                  decoration: InputDecoration(
                    label: Text(
                      "Type",
                      style: TextStyle(
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(
                      width: 200,
                      child: TextField(
                        controller: txtQuantity,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          label: Text(
                            "Quantity",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                      width: 190,
                      child: TextField(
                        controller: txtprize,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          label: Text(
                            "prises",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                ElevatedButton(onPressed: () {
                  Global g1=Global();
                  g1.InvoiceList.addAll([
                    txtname.text,
                    txtno.text,
                    txtproductname.text,
                    txttype.text,
                    txtQuantity.text,
                    txtprize.text,
                  ]);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${g1.InvoiceList}")));
                      setState(() {
                        total =double.parse(txtprize.text)*double.parse(txtQuantity.text);
                      });
                }, child: Text("NEXT")),
                const SizedBox(height: 10),
                Text(
                  "Total Payment : ${total}",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}