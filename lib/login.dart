import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:selaraku/navigasi.dart';
import 'package:selaraku/register.dart';

const List<String> list = <String>[
  'East Java',
  'West Sumatra',
  'East Borneo',
  'Jakarta'
];

bool _passwordVisible = false;

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.infinity,
            height: 100,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("image/decor.webp"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListView(
            shrinkWrap: true,
            children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 30,
                      right: 30,
                      top: 36,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Login',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 24,
                              color: const Color.fromRGBO(18, 21, 21, 1.000)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 52),
                          child: Text(
                            'Sign to your account',
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color:
                                    const Color.fromRGBO(136, 136, 136, 1.000)),
                          ),
                        ),
                        Text("EMAIL",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(
                                    136, 136, 136, 1.000))),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, bottom: 28),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(246, 247, 251, 1.000),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintStyle: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                                hintText: 'Enter Your Email',
                                border: InputBorder.none,
                                contentPadding: const EdgeInsets.all(20),
                              ),
                            ),
                          ),
                        ),
                        Text("Password",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(
                                    136, 136, 136, 1.000))),
                        const Padding(
                          padding: EdgeInsets.only(top: 5, bottom: 10),
                          child: password(),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 61),
                          child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Forgot your password?',
                                style: TextStyle(color: Colors.black),
                              )),
                        ),
                        SizedBox(
                            width: double.infinity,
                            height: 40,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(builder: (_) {
                                      return const Navigasi();
                                    }),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromRGBO(
                                        219, 73, 51, 1.000),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8))),
                                child: const Text("Login"))),
                        Padding(
                          padding: const EdgeInsets.only(top: 26),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Don't have an account yet?"),
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(builder: (_) {
                                        return const Register();
                                      }),
                                    );
                                  },
                                  child: const Text(
                                    'Sign Up',
                                    style: TextStyle(color: Colors.red),
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    ));
  }
}

// ignore: camel_case_types
class password extends StatefulWidget {
  const password({super.key});

  @override
  State<password> createState() => _passwordState();
}

// ignore: camel_case_types
class _passwordState extends State<password> {
  @override
  // ignore: must_call_super
  void initState() {
    _passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(246, 247, 251, 1.000),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        obscureText: _passwordVisible,
        decoration: InputDecoration(
          hintStyle: GoogleFonts.poppins(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),
          hintText: 'Enter Your Password',
          border: InputBorder.none,
          suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  _passwordVisible = !_passwordVisible;
                });
              },
              icon: Icon(_passwordVisible
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined)),
          contentPadding: const EdgeInsets.all(20),
        ),
      ),
    );
  }
}
