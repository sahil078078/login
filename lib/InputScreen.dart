import 'package:flutter/material.dart';

class MyInputInfo extends StatelessWidget {
  const MyInputInfo(
      {Key? key,
      required this.Name,
      required this.Email_phone,
      required this.Birthdate,
      required this.Password})
      : super(key: key);
  final String Name;
  final String Email_phone;
  final String Birthdate;
  final String Password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff479DFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 180),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height - 180,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade300),
                        width: double.infinity,
                        height: 50,
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                                child: Text('You Entered Following Details')))),
                    const SizedBox(height: 10),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade300),
                        width: double.infinity,
                        height: 50,
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(child: Text('Name : $Name')))),
                    const SizedBox(height: 10),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade300),
                        width: double.infinity,
                        height: 50,
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                                child: Text('Email/Phone : $Email_phone')))),
                    const SizedBox(height: 10),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade300),
                        width: double.infinity,
                        height: 50,
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child:
                                Center(child: Text('BirthDate : $Birthdate')))),
                    const SizedBox(height: 10),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade300),
                        width: double.infinity,
                        height: 50,
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child:
                                Center(child: Text('Password : $Password')))),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
