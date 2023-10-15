import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:selaraku/login.dart';

bool _passwordVisible = false;

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    return Scaffold(
        body: Column(
      children: [
        Container(
          width: double.infinity,
          height: 100,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('image/decor.webp'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: queryData.size.height - 100,
          child: SafeArea(
              child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                        left: 30, right: 30, top: 36, bottom: 36),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Register',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 24,
                              color: const Color.fromRGBO(18, 21, 21, 1.000)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 52),
                          child: Text(
                            'Create Your Account',
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color:
                                    const Color.fromRGBO(136, 136, 136, 1.000)),
                          ),
                        ),
                        Text(
                          'YOUR NAME',
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color:
                                  const Color.fromRGBO(136, 136, 136, 1.000)),
                        ),
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
                                hintText: 'Enter Your Name',
                                border: InputBorder.none,
                                contentPadding: const EdgeInsets.all(20),
                              ),
                            ),
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
                          padding: EdgeInsets.only(top: 5, bottom: 28),
                          child: password(),
                        ),
                        Text("Location",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(
                                    136, 136, 136, 1.000))),
                        const Padding(
                          padding: EdgeInsets.only(top: 5, bottom: 37),
                          child: DropdownButtonExample(),
                        ),
                        SizedBox(
                            width: double.infinity,
                            height: 40,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromRGBO(
                                        219, 73, 51, 1.000),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8))),
                                child: const Text("Register"))),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Center(
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(builder: (_) {
                                        return const Login();
                                      }),
                                    );
                                  },
                                  child: const Text(
                                    'I have an account',
                                    style: TextStyle(color: Colors.red),
                                  ))),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )),
        ),
      ],
    ));
  }
}

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isExpanded: true,
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 1,
        color: Colors.black,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
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
