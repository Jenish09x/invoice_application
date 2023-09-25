import 'package:flutter/material.dart';

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
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(width: 30),
            Container(
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: BoxDecoration(
                  color: Colors.purple.shade300,
                  borderRadius: BorderRadiusDirectional.vertical(
                      bottom: Radius.circular(90))),
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  const CircleAvatar(
                      backgroundImage: AssetImage('assets/img/kakashi.jpg'),
                      radius: 70),
                  const SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        boldText('CONTACT'),
                        const SizedBox(height: 10),
                        smallText('123 456 7890'),
                        smallText('hello@123.com'),
                        smallText('www.hellosite.com'),
                        const SizedBox(height: 20),
                        boldText('PROFILE'),
                        const SizedBox(height: 10),
                        smallText(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'),
                        const SizedBox(height: 20),
                        boldText('LANGUAGE'),
                        const SizedBox(height: 10),
                        smallText('English-Native'
                            'French-Intermediate'
                            'Spanish-Basic'),
                        const SizedBox(height: 20),
                        boldText('REFERENCES'),
                        const SizedBox(height: 10),
                        smallText('Available upon request'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                Text(
                  "Kakashi\nWilson",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                ),
                boldText('DIGITAL MARKETER'),
                const SizedBox(height: 30),
                boldText('EDUCATION'),
                const SizedBox(height: 10),
                smallText('London University'),
                smallText(
                    'Communication and Public\nRelations Degree 20013/2016'),
                const SizedBox(height: 10),
                smallText('London Master University'),
                smallText('Master Degree Digital Marketing\n20016/2018'),
                const SizedBox(height: 30),
                boldText('WORK EXPERIENCE'),
              ],
            )
          ],
        ),
      ),
    );
  }

  Text smallText(String text) => Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
      );

  Text boldText(String text) {
    return Text(
      text,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
    );
  }
}
