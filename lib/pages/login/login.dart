import 'package:flutter/material.dart';
import 'package:flutter_ui/pages/signup/signup.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Forgot password?",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              // width: double.infinity,
              width: MediaQuery.of(context).size.width / 1,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  backgroundColor: const Color.fromARGB(255, 83, 173, 86),
                ),
                onPressed: () {},
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Or continue with",
              style: TextStyle(color: Colors.grey.shade500, fontSize: 12),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              // width: double.infinity,
              width: MediaQuery.of(context).size.width / 1,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  backgroundColor: const Color.fromARGB(255, 204, 51, 40),
                ),
                onPressed: () {},
                icon: Icon(
                  Icons.g_mobiledata,
                  color: Colors.white,
                ),
                label: Text(
                  "Google",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
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
                  "Don't have any account?",
                  style: TextStyle(fontSize: 13),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: GestureDetector(
                      onTap: (() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Signup()),
                        );
                      }),
                      child: Text(
                        "Sign Up",
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
