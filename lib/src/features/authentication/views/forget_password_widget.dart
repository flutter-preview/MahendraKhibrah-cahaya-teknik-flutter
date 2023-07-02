import 'package:cahayaa_teknik/src/features/authentication/views/button_forget_password_widget.dart';
import 'package:flutter/material.dart';
import 'package:cahayaa_teknik/src/constants/colors.dart';

class ForgetPasswordWidget extends StatelessWidget {
  const ForgetPasswordWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color:
              Theme.of(context).brightness == Brightness.dark ? wDark : wWhite,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Berbagai Cara!",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "pilih salah satu opsi untuk mengubah password!",
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
              const ButtonForgotPassword(
                icon: Icons.email,
                title: "email",
                subtitle: "reset via email adress",
              ),
              const ButtonForgotPassword(
                icon: Icons.phone,
                title: "OTP",
                subtitle: "reset via phone verification",
              ),
            ],
          ),
        ));
  }
}
