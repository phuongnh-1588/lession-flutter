import 'package:flutter/material.dart';

void main() {
  runApp(const LoginUI());
}

class LoginUI extends StatelessWidget {
  const LoginUI({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xffFF774E),
                Color(0xffFE3370),
              ],
            )),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('images/icon_logo.png', width: 264, height: 152),
                  const SizedBox(height: 27),
                  const Text(
                    'Find and Meet people around you to find LOVE',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  const SizedBox(height: 21),
                  const Text(
                    'SIGN IN',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 47, vertical: 20),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffF4B2AF))),
                        labelText: 'Enter Email',
                        labelStyle: TextStyle(color: Color(0xffF4B2AF)),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 47, vertical: 0),
                    child: TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffF4B2AF))),
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Color(0xffF4B2AF)),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        fillColor:
                            MaterialStateProperty.all<Color>(const Color(0xffFF774E)),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        activeColor: const Color(0xffFF774E),
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 47, 0),
                        child: Text(
                          'Remember Password',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.symmetric(
                                horizontal: 100, vertical: 20)),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                    side: const BorderSide(color: Colors.white)))),
                    onPressed: () => {},
                    child: const Text('GET STARTED',
                        style:
                            TextStyle(fontSize: 20, color: Color(0xffFF774E))),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: () {},
                          child: Image.asset('images/ic_facebook.png',
                              width: 68, height: 68)),
                      const SizedBox(width: 25),
                      GestureDetector(
                          onTap: () {},
                          child: Image.asset('images/ic_twitter.png',
                              width: 68, height: 68))
                    ],
                  ),
                  const SizedBox(height: 19),
                  const Text(
                    'FORGOT PASSWORD',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  const SizedBox(height: 100),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                width: double.infinity,
                height: 68,
                color: const Color(0xffD42053),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'DONT HAVE ACCOUNT ?',
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(color: Color(0xffFF8F50), fontSize: 14),
                      ),
                      Text(
                        'SIGN UP',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            decoration: TextDecoration.underline),
                      ),
                    ],
                  ),
                )),
          )
        ],
      )),
    );
  }
}
