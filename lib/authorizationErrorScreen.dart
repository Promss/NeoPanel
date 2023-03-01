import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthorizationError extends StatelessWidget {
  const AuthorizationError({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width / 22),
          child: Column(children: [
            Container(
              padding: EdgeInsets.only(top: height / 12, bottom: height / 20),
              child: Column(
                children: [
                  Text(
                    'Ошибка авторизации',
                    style: GoogleFonts.inter(
                        fontSize: height / 35, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: height / 45,
                  ),
                  Text(
                    'Попробуйте проверить свое интернет соединение и войти в систему через несколько минут.',
                    style: GoogleFonts.inter(
                        fontSize: height / 45, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: (() {
                Navigator.pushNamed(context, 'auth');
              }),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color.fromRGBO(137, 115, 198, 1)),
                alignment: Alignment.center,
                height: height / 15,
                width: width,
                child: Text('Хорошо',
                    style: GoogleFonts.inter(
                        fontSize: height / 50,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
