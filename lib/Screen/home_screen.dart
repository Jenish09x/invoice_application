import 'package:flutter/material.dart';

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
            "INVOICE MAKER",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'invoice');
                },
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ))
          ],
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 30),
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.height * 0.45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade300,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("100"),
                          Text("01 Apex xyp"),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Pcs"),
                          Text("Table"),
                          Spacer(),
                          Text("200k"),
                          IconButton(onPressed: (){}, icon: Icon(Icons.delete))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
