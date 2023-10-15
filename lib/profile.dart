import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:selaraku/login.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [Container(
        margin: const EdgeInsets.only(left: 30, right: 30, top: 35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('My Profile', style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 30),),
            const Padding(
              padding: EdgeInsets.only(top: 42, bottom: 42),
              child: Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('image/profil.jpg'),
                  radius: 70,
                ),
              ),
            ),
            Text('Name' , style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 18),),
            Container(
              height: 61,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color.fromRGBO(246, 247, 251, 1.000)
              ),
              child: Center(
                child: Text('Singgi Aditya', style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 16),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 22),
              child: Text('Email' , style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 18),),
            ),
            Container(
              height: 61,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color.fromRGBO(246, 247, 251, 1.000)
              ),
              child: Center(
                child: Text('msinggiadityaramadhan@gmail.com', style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 16),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 22),
              child: Text('Location' , style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 18),),
            ),
            Container(
              height: 61,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color.fromRGBO(246, 247, 251, 1.000)
              ),
              child: Center(
                child: Text('East Java', style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 16),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 42),
              child: SizedBox(
                        width: double.infinity,
                        height: 40,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (_) {
                                  return const Login();
                                }),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromRGBO(219, 73, 51, 1.000),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8))),
                            child: const Text("Logout"))),
            ),
          ],
        ),
      ),
      ]
    );
  }
}