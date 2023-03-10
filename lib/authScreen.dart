import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool passwordVisible = false;
  bool checked = true;

  var result = 'Checkbox is CHECKED';

  void getCheckBoxValue(bool value) {
    if (checked == false) {
      // Put your code here which you want to execute on CheckBox Checked.
      setState(() {
        checked = true;
        result = 'Checkbox is CHECKED';
      });
    } else {
      // Put your code here which you want to execute on CheckBox Un-Checked.
      setState(() {
        checked = false;
        result = 'Checkbox is UN-CHECKED';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width / 22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: height / 8,
              ),
              Text(
                'Авторизация',
                style: GoogleFonts.inter(
                    fontSize: height / 32, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: height / 18,
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
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: height / 100),
                child: TextField(
                  decoration: InputDecoration(
                    // hintText: 'example@gmail.com',
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
              SizedBox(
                height: height / 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Укажите пароль',
                    style: GoogleFonts.inter(
                        color: Colors.grey,
                        fontSize: height / 62,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: height / 100),
                child: TextField(
                  obscureText: !passwordVisible,
                  decoration: InputDecoration(
                    // hintText: 'Password',
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
                    suffixIcon: IconButton(
                      padding: EdgeInsets.only(right: width / 100),
                      color: Colors.green,
                      icon: Icon(!passwordVisible
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined),
                      onPressed: () {
                        setState(
                          () {
                            passwordVisible = !passwordVisible;
                          },
                        );
                      },
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: checked,
                        onChanged: (value) {
                          getCheckBoxValue(value!);
                        },
                        side: MaterialStateBorderSide.resolveWith((states) =>
                            const BorderSide(
                                color: Colors.lightGreen, width: 2)),
                        activeColor: Colors.lightGreen,
                        checkColor: Colors.white,
                        // tristate: false,
                      ),
                      const Text('Запомнить вход')
                    ],
                  ),
                  TextButton(
                      style:
                          TextButton.styleFrom(foregroundColor: Colors.black54),
                      onPressed: (() {
                        Navigator.pushNamed(context, 'resetPassword');
                      }),
                      child: const Text('Забыли пароль?'))
                ],
              ),
              SizedBox(
                height: height / 60,
              ),
              InkWell(
                onTap: (() {
                  Navigator.pushNamed(context, 'fillingProfile');
                }),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromRGBO(137, 115, 198, 1)),
                  alignment: Alignment.center,
                  height: height / 15,
                  width: width,
                  child: Text('Войти',
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
