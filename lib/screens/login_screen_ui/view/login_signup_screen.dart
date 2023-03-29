import 'package:flutter/material.dart';
import 'package:login_screen/utils/shread_screen.dart';

class signupscreen extends StatefulWidget {
  const signupscreen({Key? key}) : super(key: key);

  @override
  State<signupscreen> createState() => _signupscreenState();
}

class _signupscreenState extends State<signupscreen> {
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: Text("App"),
            backgroundColor: Colors.red,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: "Enter the email"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: "Enter the password"),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      var email = txtemail.text;
                      var password = txtpassword.text;

                      SHR shr = SHR();
                      shr.saveshr(email, password,false);
                      Navigator.pop(context);
                    },
                    child: Text("Sign up"),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.red)),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Alredy Account? sign-in",
                      style: TextStyle(color: Colors.red),
                    ),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.white)),
              ],
            ),
          ),
        ));
  }
}
