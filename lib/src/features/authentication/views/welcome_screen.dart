import 'package:cahayaa_teknik/src/constants/image_string.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                image: const AssetImage(welcomeImage),
                height: MediaQuery.of(context).size.height * 0.4,
              ),
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "Selamat Datang",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Silakan masuk menggunakan akun Anda atau daftar sebagai pengguna baru.",
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.center,
                ),
              ]),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        "LOGIN",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "REGISTER",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
