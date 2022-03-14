import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'InputScreen.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff479DFF),
        body: MyBodyPage(),
      ),
    );
  }
}

class MyBodyPage extends StatefulWidget {
  const MyBodyPage({Key? key}) : super(key: key);

  @override
  State<MyBodyPage> createState() => _MyBodyPageState();
}

class _MyBodyPageState extends State<MyBodyPage> {
  @override
  TextEditingController txtBirthdate = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtName = TextEditingController();
  TextEditingController txtEmailPhone = TextEditingController();
  var myGlobleKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: myGlobleKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 20, bottom: 10),
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                width: 40,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Icon(Icons.arrow_back_ios_outlined,
                      color: Colors.blueGrey),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                      elevation: MaterialStateProperty.all(2.5),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                      backgroundColor: MaterialStateProperty.all(Colors.white)),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Welcome\nBack',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            const SizedBox(height: 60),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height - 244,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40))),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      const SizedBox(height: 70),
                      TextFormField(
                        controller: txtName,
                        validator: (String? NameMsg) {
                          if (NameMsg!.isEmpty) {
                            return 'Please Enter Name';
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          hintText: 'Name',
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Colors.green,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                                width: 2.5, color: Colors.blueAccent),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: txtEmailPhone,
                        validator: (String? NameEmailPhone) {
                          if (NameEmailPhone == null ||
                              NameEmailPhone.isEmpty) {
                            return 'Please Enter Email/phone';
                          } else if (NameEmailPhone.length != 10) {
                            return "Please Enter 10 digit number";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          hintText: 'Email OR Phone',
                          prefixIcon: const Icon(
                            Icons.email,
                            color: Colors.green,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                                width: 2.5, color: Colors.blueAccent),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: txtBirthdate,
                        validator: (String? NameBirthdate) {
                          if (NameBirthdate!.isEmpty) {
                            return "Please Enter BirthDate";
                          } else {
                            return null;
                          }
                        },
                        onTap: () async {
                          DateTime? picked = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1975),
                              lastDate: DateTime.now());
                          if (picked != null) {
                            setState(() {
                              txtBirthdate.text =
                                  DateFormat("d/M/y, EEE").format(picked);
                              // txtDate.text = picked.toString();
                            });
                          }
                        },
                        decoration: InputDecoration(
                          hintText: 'Birthday',
                          prefixIcon: const Icon(
                            Icons.calendar_month,
                            color: Colors.green,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                                width: 2.5, color: Colors.blueAccent),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: txtPassword,
                        validator: (String? NamePassword) {
                          if (NamePassword!.isEmpty) {
                            return 'Please Enter Password';
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          hintText: 'Password',
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Colors.green,
                          ),
                          suffixIcon: const Icon(
                            Icons.remove_red_eye,
                            color: Colors.green,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                                width: 2.5, color: Colors.blueAccent),
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        height: 60,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(15)))),
                          onPressed: () {
                            // myGlobleKey.currentState!.validate();
                            // Navigator.of(context).push(
                            //   CupertinoPageRoute(
                            //     builder: (context) => MyInputInfo(
                            //       Name: txtName.text,
                            //       Email_phone: txtEmailPhone.text,
                            //       Birthdate: txtBirthdate.text,
                            //       Password: txtPassword.text,
                            //     ),
                            //   ),
                            // );
                            if (myGlobleKey.currentState!.validate()) {
                              Navigator.of(context).push(
                                CupertinoPageRoute(
                                  builder: (context) => MyInputInfo(
                                    Name: txtName.text,
                                    Email_phone: txtEmailPhone.text,
                                    Birthdate: txtBirthdate.text,
                                    Password: txtPassword.text,
                                  ),
                                ),
                              );
                            }
                          },
                          child: const Text(
                            'Register',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*
------------------ Button ------------------------------------------------------
 Padding(
          padding: const EdgeInsets.only(top: 40, left: 20, bottom: 10),
          child: SizedBox(
            height: 40,
            width: 40,
            child: ElevatedButton(
              onPressed: () {},
              child: Icon(Icons.chevron_right),
              style: ButtonStyle(
                alignment: Alignment.center,
                padding: MaterialStateProperty.all(EdgeInsets.zero),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
              ),
            ),
          ),
        ),
--------------------------------------------------------------------------------
https://www.youtube.com/watch?v=kn0EOS-ZiIc&t=510s
 */
