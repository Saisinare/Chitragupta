import 'package:flutter/material.dart';

class PageHeader extends StatelessWidget {
  final String title;
  final bool hasSettings;
  const PageHeader({super.key, required this.title, required this.hasSettings});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 160,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        height: 160,
        decoration: BoxDecoration(
            color: const Color(0xFFDDDDDD),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(height: 20),

            // Date and icons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Date display
                Text(
                  title,
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                // Icons
                if (hasSettings)
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
    );
  }
}
