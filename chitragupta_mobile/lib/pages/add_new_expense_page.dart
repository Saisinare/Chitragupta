import 'package:chitragupta_mobile/components/form_card.dart';
import 'package:chitragupta_mobile/components/navigation.dart';
import 'package:chitragupta_mobile/components/page_header.dart';
import 'package:flutter/material.dart';

class AddNewExpensePage extends StatelessWidget {
  const AddNewExpensePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Column(
        children: [
          PageHeader(title: "Add New Expense", hasSettings: false),
          FormCard(),
        ],
      )),
      bottomNavigationBar: MyNavigationBar(),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        onPressed: () {},
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.check,
          color: Colors.white,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
