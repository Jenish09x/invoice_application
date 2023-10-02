import 'package:flutter/material.dart';

import '../Utils/global_class.dart';

class PdfScreen extends StatefulWidget {
  const PdfScreen({super.key});

  @override
  State<PdfScreen> createState() => _PdfScreenState();
}

class _PdfScreenState extends State<PdfScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: Column(
          children: [
            boldText("JANTA TEXTTILE"),
            boldText('-------------------------------------------'),
            smallText('AK ROAD,SURAT,GUJARAT'),
            smallText('SARTHANA JAKATNAKA,SURAT,GUJARAT'),
            smallText('MO. 992-491-6948,FAX NO. 5'),
            boldText('-------------------------------------------'),
            boldText("CASH MEMO"),
            boldText('---------------'),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                smallText('S.NO. 5683'),
                const SizedBox(
                  width: 150,
                ),
                smallText('DATE : 27/9/23'),
              ],
            ),
            boldText('______________________________________________'),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      boldText("Product Name"),
                      boldText("Price"),
                      boldText("Quantity"),
                      boldText("Total"),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: Global.g1.InvoiceList
                        .map(
                          (e) => Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              smallText("${e["Name"]}"),
                              smallText("${e["Price"]}"),
                              smallText("${e['Qa']}"),
                              smallText("${e["Total"]}"),
                            ],
                          ),
                        )
                        .toList(),
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }

  Text smallText(String text) => Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      );

  Text boldText(String text) {
    return Text(
      text,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    );
  }
}
