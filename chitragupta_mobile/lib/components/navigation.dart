import 'package:flutter/material.dart';

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar({super.key});
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: const Color(0xFFDDDDDD),
      notchMargin: 10.0,
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 50,
              child: IconButton(
                icon: Image.asset("assets/images/home.png"),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 70,
              child: IconButton(
                icon: Image.asset("assets/images/dashboard.png"),
                onPressed: () {},
              ),
            ),

            const SizedBox(width: 40), // Space for FAB
            IconButton(
              icon: const Icon(
                Icons.calculate_outlined,
                size: 30,
              ),
              onPressed: () {},
            ),
            SizedBox(
              height: 50,
              child: IconButton(
                icon: Image.asset("assets/images/Navsettings.png"),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
