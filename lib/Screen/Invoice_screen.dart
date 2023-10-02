import 'package:flutter/material.dart';

import '../Utils/global_class.dart';

class InvoiceMaker extends StatefulWidget {
  const InvoiceMaker({super.key});

  @override
  State<InvoiceMaker> createState() => _InvoiceMakerState();
}

class _InvoiceMakerState extends State<InvoiceMaker> {
  TextEditingController txtProductName = TextEditingController();
  TextEditingController txtProductNo = TextEditingController();
  TextEditingController txtGST = TextEditingController();
  TextEditingController txtDiscount = TextEditingController();
  TextEditingController txtQa = TextEditingController();
  TextEditingController txtprice = TextEditingController();
  double total = 0;

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
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                textTile(txtProductName, 'Product Name', TextInputType.name),
                const SizedBox(height: 10),
                textTile(txtProductNo, 'Product No.', TextInputType.number),
                const SizedBox(height: 10),
                textTile(txtGST, 'GST No.', TextInputType.number),
                const SizedBox(height: 10),
                textTile(txtDiscount, 'Discount', TextInputType.number),
                const SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(
                        width: 190,
                        child:
                            textTile(txtQa, "Quantity", TextInputType.number)),
                    const SizedBox(width: 10),
                    SizedBox(
                        width: 190,
                        child:
                            textTile(txtprice, "Price", TextInputType.number)),
                  ],
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () {
                      int total =
                          int.parse(txtprice.text) * int.parse(txtQa.text);
                      Map m1 = {
                        'Name': txtProductName.text,
                        'ProductNo': txtProductNo.text,
                        'GST': txtGST.text,
                        'Discount': txtDiscount.text,
                        'Qa': txtQa.text,
                        'Price': txtprice.text,
                        'Total': total,
                      };
                      Global.g1.InvoiceList.add(m1);
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("${Global.g1.InvoiceList}")));
                      setState(() {
                        total;
                      });
                      print(Global.g1.InvoiceList);
                      Navigator.pop(context);
                    },
                    child: Text("NEXT")),
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

  TextField textTile(
      TextEditingController controller, String hint, TextInputType keyboard) {
    return TextField(
      controller: controller,
      keyboardType: keyboard,
      decoration: InputDecoration(
        label: Text(
          hint,
          style: TextStyle(
            color: Colors.grey.shade400,
          ),
        ),
      ),
    );
  }
}
