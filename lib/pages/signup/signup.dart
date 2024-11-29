import 'package:flutter/material.dart';
import 'package:flutter_ui/pages/login/login.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        backgroundColor: Colors.grey.shade400,
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.only(left: 20, right: 20)),
            Text(
              "Welcome Back!",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Please enter your account here",
              style: TextStyle(color: Colors.grey.shade500),
            ),
            SizedBox(height: 20),
            TextField(
              autofocus: false,
              enabled: true,
              decoration: InputDecoration(
                hintText: "Email or phone number",
                hintStyle: TextStyle(fontSize: 14, color: Colors.grey.shade500),
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Container(
                  width: 20,
                  child: Icon(
                    Icons.email_outlined,
                    size: 20,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 0.3, color: Colors.grey),
                  borderRadius: BorderRadius.circular(50),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 0.5, color: Colors.grey),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                // filled: true,
                hintText: "Password",
                hintStyle: TextStyle(fontSize: 14, color: Colors.grey.shade500),
                prefixIcon: Container(
                  width: 30,
                  child: Icon(
                    Icons.lock_open,
                    size: 20,
                  ),
                ),
                suffixIcon: Container(
                  width: 30,
                  child: Icon(
                    Icons.visibility,
                    size: 20,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 0.3, color: Colors.grey),
                  borderRadius: BorderRadius.circular(50),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 0.5, color: Colors.grey),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "having any account?",
                  style: TextStyle(fontSize: 13),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: GestureDetector(
                      onTap: (() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()),
                        );
                      }),
                      child: Text(
                        "Log in",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 39, 131, 42)),
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
