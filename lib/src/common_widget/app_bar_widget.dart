import 'package:cahayaa_teknik/src/features/authentication/views/welcome_screen/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(
        Icons.menu,
        color: Colors.black,
      ),
      title: Text(
        "Cahaya Teknik",
        style: Theme.of(context).textTheme.titleLarge,
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: DropdownButton(
              icon: const Icon(
                Icons.person_outline_rounded,
                color: Colors.black,
              ),
              items: const [
                DropdownMenuItem(
                  value: "logout",
                  child: Text("logout"),
                ),
              ],
              onChanged: (val) {
                Get.to(const WelcomeScreen());
              }),
        )
      ],
    );
  }
}
