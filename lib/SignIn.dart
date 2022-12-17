import 'package:flutter/material.dart';
import 'package:flutter_ui/SignUp.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          height: 1000,
          width: double.infinity,
          color: Colors.white,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Image(
                  image: AssetImage(
                    'assets/images/download.png',
                  ),
                ),
                height: 100,
                width: 200,
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                alignment: AlignmentDirectional.topStart,
                child: Text(
                  "Login to your Account",
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: "Arial, Helvetica, Sans-Serif, Calibri",
                    // letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 5),
                      blurRadius: 15.0,
                      color:
                          Color.fromARGB(255, 211, 209, 209).withOpacity(0.5),
                    ),
                  ],
                ),
                // padding: EdgeInsets.all(10),
                alignment: AlignmentDirectional.topStart,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20),
                    border: InputBorder.none,
                    // borderSide: BorderSide(color: Colors.white, width: 32.0),
                    // borderRadius: BorderRadius.circular(25.0),

                    // labelText: 'Email',
                    hintText: "Email",
                    // icon: Icon(Icons.people),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 5),
                      blurRadius: 15.0,
                      color:
                          Color.fromARGB(255, 211, 209, 209).withOpacity(0.5),
                    ),
                  ],
                ),
                alignment: AlignmentDirectional.topStart,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20),
                    border: InputBorder.none,
                    // labelText: 'Password',
                    hintText: "Password",
                    // icon: Icon(Icons.people),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    backgroundColor: Color.fromARGB(255, 38, 7, 175),
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.all(25.0),
                    // fixedSize: Size(800, 80),
                    minimumSize: Size.fromHeight(50),
                    shadowColor: Colors.black,
                    elevation: 60,
                  ),
                  onPressed: (() {
                    print("Sign in pressed");
                  }),
                  child: Text(
                    "Sign in",
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: Text("- Or Sign in with -"),
                margin: EdgeInsets.only(bottom: 20),
              ),
              Container(
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Card(
                        shadowColor: Colors.grey,
                        elevation: 5,
                        child: InkWell(
                          splashColor: Colors.blue.withAlpha(30),
                          onTap: () {
                            debugPrint('Card tapped.');
                          },
                          child: SizedBox(
                            width: 300,
                            height: 50,
                            child: Center(
                              child: Image(
                                height: 30,
                                width: 50,
                                image: AssetImage(
                                  'assets/images/google.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        shadowColor: Colors.grey,
                        elevation: 5,
                        child: InkWell(
                          splashColor: Colors.blue.withAlpha(30),
                          onTap: () {
                            debugPrint('Card tapped.');
                          },
                          child: SizedBox(
                            width: 300,
                            height: 50,
                            child: Center(
                              child: Image(
                                height: 30,
                                width: 50,
                                image: AssetImage(
                                  'assets/images/google.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        shadowColor: Colors.grey,
                        elevation: 5,
                        child: InkWell(
                          splashColor: Colors.blue.withAlpha(30),
                          onTap: () {
                            debugPrint('Card tapped.');
                          },
                          child: SizedBox(
                            width: 300,
                            height: 50,
                            child: Center(
                              child: Image(
                                height: 30,
                                width: 50,
                                image: AssetImage(
                                  'assets/images/twitter.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account ? "),
                    GestureDetector(
                      onTap: (() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()),
                        );
                      }),
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
                // child: RichText(
                //   text: TextSpan(
                //     children: const <TextSpan>[
                //       TextSpan(
                //         text: "Don't have an account ? ",
                //         style: TextStyle(
                //           color: Colors.grey,
                //           fontSize: 14,
                //         ),
                //       ),
                //       TextSpan(
                //         text: ' Sign up',
                //         style: TextStyle(
                //           decoration: TextDecoration.underline,
                //           color: Color.fromARGB(255, 9, 6, 179),
                //           fontSize: 14,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// goToSignUp(context) => Navigator.of(context).pushReplacement(
//       MaterialPageRoute(
//         builder: (context) => SignUp(),
//       ),
//     );
