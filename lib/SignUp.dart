import 'package:flutter/material.dart';
import 'package:flutter_ui/SignIn.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  void handleSignUp() {
    print("clicked");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        bottomOpacity: 0.0,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.blue.shade800),
          onPressed: () => Navigator.pop(context),
        ),
        // title: Text("Sample"),
        // centerTitle: true,
      ),
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
                  "Create your Account",
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
                    hintText: "Emails",
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
                    hintText: "Confirm Password",
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
                    // print("Sign up pressed");
                    handleSignUp();
                  }),
                  child: Text(
                    "Sign up",
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: Text("- Or Sign up with -"),
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
            ],
          ),
        ),
      ),
    );
  }
}
