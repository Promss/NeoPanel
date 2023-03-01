import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  String? validateEmail(String value) {
    if (!RegExp(r'^[\w-\.]+@gmail\.com$').hasMatch(value)) {
      return 'Please enter a valid Gmail address';
    }
    return null;
  }

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width / 22, vertical: height / 13),
          child: Column(
            children: [
              Text('Восстановление пароля',
                  style: GoogleFonts.inter(
                      fontSize: height / 35, fontWeight: FontWeight.w600)),
              SizedBox(
                height: height / 50,
              ),
              Text(
                'Введите адрес электронной почты и получите ссылку с новым паролем.',
                style: GoogleFonts.inter(
                    fontSize: height / 45, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: height / 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Укажите e-mail',
                    style: GoogleFonts.inter(
                        color: Colors.grey,
                        fontSize: height / 62,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: height / 100, bottom: height / 25),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: 'example@gmail.com',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(137, 115, 198, 1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(137, 115, 198, 1),
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (() {
                  String email = emailController.text;
                  String? validationResult = validateEmail(email);
                  if (validationResult == null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Вам отправлено письмо'),
                      ),
                    );
                  } else {
                    // The email is invalid. Display an error message.
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(validationResult)),
                    );
                  }
                }),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromRGBO(137, 115, 198, 1)),
                  alignment: Alignment.center,
                  height: height / 15,
                  width: width,
                  child: Text('Подтвердить',
                      style: GoogleFonts.inter(
                          fontSize: height / 50,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
