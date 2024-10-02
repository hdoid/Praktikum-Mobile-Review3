import 'package:flutter/material.dart';
import 'package:praktikumper4/widget/textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
TextEditingController username = TextEditingController();
TextEditingController password = TextEditingController();
TextEditingController nama = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController umur = TextEditingController();
String? jenisKelamin, hobi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              // const SizedBox(height: 20),
              // CustomTextfield(controller: username, label: "Username", hint: "Masukan Username"),
              // const SizedBox(height: 20),
              // CustomTextfield(controller: password, label: "Password", hint: "Masukan Username"),
              // const SizedBox(height: 20),
              
              const SizedBox(height: 20),
              CustomTextfield(controller: nama, label: "Nama", hint: "Masukan Nama"),
              const SizedBox(height: 20),
              CustomTextfield(controller: email, label: "Email", hint: "Masukan Email"),
              const SizedBox(height: 20),
              CustomTextfield(controller: umur, label: "Umur", hint: "Masukan Umur"),
              const SizedBox(height: 20),
              const Text("Jenis Kelamin"),
              

              Row(
                
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.only(left: 50),
                    title: Text("Pria"),
                    leading: Radio<String>(
                      value: "Pria", 
                      groupValue: jenisKelamin, 
                      onChanged: (value) {
                      setState(() {
                        jenisKelamin = value;
                      });
                    }) ,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.only(left: 50),
                    title: Text("Wanita"),
                    leading: Radio<String>(
                      value: "Wanita",
                      groupValue: jenisKelamin, 
                      onChanged: (value) {
                      setState(() {
                        jenisKelamin = value;
                      });
                    }) ,
                  )
                ],
              ),

              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: (){
                    setState((){
                      // print("username: ${username.text}\npassword: ${password.text}");
                      // username.clear();
                      // password.clear();
                    });
                },
                style: ElevatedButton.styleFrom(foregroundColor: Colors.blue),
                child: const Text(
                  "Submit",
                  style: TextStyle(color: Colors.black),
                )
                            ),
              )
          ],
        ),
      ),
    );
  }
}