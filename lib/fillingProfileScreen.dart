import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FillingProfile extends StatefulWidget {
  const FillingProfile({Key? key}) : super(key: key);

  @override
  State<FillingProfile> createState() => _FillingProfileState();
}

class _FillingProfileState extends State<FillingProfile> {
  late SingleValueDropDownController _cnt;
  late MultiValueDropDownController _cntMulti;

  @override
  void initState() {
    _cnt = SingleValueDropDownController();
    _cntMulti = MultiValueDropDownController();
    super.initState();
  }

  @override
  void dispose() {
    _cnt.dispose();
    _cntMulti.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width / 22),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                padding: EdgeInsets.only(top: height / 22),
                alignment: Alignment.center,
                child: Text(
                  'Заполнение профиля',
                  style: GoogleFonts.inter(
                      fontSize: height / 35, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: height / 30,
              ),
              Text(
                'Фамилия',
                style: GoogleFonts.inter(
                    color: Colors.grey,
                    fontSize: height / 62,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: height / 100,
              ),
              TextField(
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
              SizedBox(
                height: height / 50,
              ),
              Text(
                'Имя',
                style: GoogleFonts.inter(
                    color: Colors.grey,
                    fontSize: height / 62,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: height / 100,
              ),
              TextField(
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
              SizedBox(
                height: height / 50,
              ),
              Text(
                'Отчество',
                style: GoogleFonts.inter(
                    color: Colors.grey,
                    fontSize: height / 62,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: height / 100,
              ),
              TextField(
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
              SizedBox(
                height: height / 50,
              ),
              Text(
                'Город',
                style: GoogleFonts.inter(
                    color: Colors.grey,
                    fontSize: height / 62,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: height / 100,
              ),
              DropDownTextField(
                textFieldDecoration: InputDecoration(
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
                controller: _cnt,
                clearOption: true,
                enableSearch: true,
                // dropdownColor: Colors.green,
                searchDecoration:
                    const InputDecoration(hintText: "Введите название города"),
                validator: (value) {
                  if (value == null) {
                    return "Required field";
                  } else {
                    return null;
                  }
                },
                dropDownItemCount: 8,
                dropDownList: const [
                  DropDownValueModel(name: 'Бишкек', value: "value1"),
                  DropDownValueModel(name: 'Ош', value: "value2"),
                  DropDownValueModel(name: 'Баткен', value: "value3"),
                  DropDownValueModel(name: 'Джалал-Абад', value: "value4"),
                  DropDownValueModel(name: 'Нарын', value: "value5"),
                  DropDownValueModel(name: 'Талас', value: "value6"),
                  DropDownValueModel(name: 'Каракол', value: "value7"),
                  DropDownValueModel(name: 'Кара-Куль', value: "value8"),
                ],
                onChanged: (val) {},
              ),
              SizedBox(
                height: height / 50,
              ),
              Text(
                'Почта',
                style: GoogleFonts.inter(
                    color: Colors.grey,
                    fontSize: height / 62,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: height / 100,
              ),
              TextField(
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
              SizedBox(
                height: height / 50,
              ),
              Text(
                'Номер телефона',
                style: GoogleFonts.inter(
                    color: Colors.grey,
                    fontSize: height / 62,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: height / 100,
              ),
              TextField(
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
              SizedBox(
                height: height / 20,
              ),
              InkWell(
                onTap: (() {}),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromRGBO(137, 115, 198, 1)),
                  alignment: Alignment.center,
                  height: height / 15,
                  width: width,
                  child: Text('Зарегистрироваться',
                      style: GoogleFonts.inter(
                          fontSize: height / 50,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                ),
              ),
              SizedBox(
                height: height / 25,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
