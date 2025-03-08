import 'package:chitragupta_mobile/components/navigation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              height: 200,
              decoration: BoxDecoration(
                  color: const Color(0xFFDDDDDD),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Search bar

                  SizedBox(
                    height: 45,
                    child: TextField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: EdgeInsets.all(10),
                          child: Image.asset('assets/images/search.png'),
                        ),
                        filled: true,
                        fillColor: Colors.black87,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Date and icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Date display
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "20",
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false,
                              applyHeightToLastDescent: false,
                            ),
                          ),
                          Text(
                            "25",
                            style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                height: 0.3),
                          ),
                        ],
                      ),

                      // Icons

                      Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              "assets/images/settings.png",
                              height: 45,
                            )),
                      )
                    ],
                  ),
                ],
              ),
            ),

            // Transaction list
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(0),
                children: [
                  // Transaction items
                  _buildTransactionItem(),

                  // Month header
                  const Padding(
                    padding:
                        EdgeInsets.only(left: 16.0, top: 20.0, bottom: 10.0),
                    child: Text(
                      "Month",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  // More transaction items
                  _buildTransactionItem(),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        onPressed: () {},
        backgroundColor: Colors.black,
        child: const Icon(Icons.add, color: Colors.white,size: 35,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: MyNavigationBar(),
    );
  }

  Widget _buildTransactionItem() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      decoration: BoxDecoration(
        color: const Color(0xFFDDDDDD),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "TITLE",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "category",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          const Text(
            "100₹",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
