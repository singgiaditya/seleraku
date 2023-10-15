import 'package:flutter/material.dart';
import 'package:selaraku/cookingScreen.dart';
import 'package:selaraku/model/allmenu.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatelessWidget {
  final AllMenu menu;
  const DetailScreen({super.key, required this.menu});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin:
              const EdgeInsets.only(left: 24, right: 24, top: 30, bottom: 30),
          child: SafeArea(
              child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 28),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios),
                      iconSize: 20,
                    ),
                  ),
                  Text(
                    menu.name,
                    style: GoogleFonts.poppins(
                        fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 24),
                    child: Text(
                      menu.about,
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: const Color.fromRGBO(164, 164, 164, 1.000)),
                    ),
                  ),
                   Center(
                    child: Image(
                      image: AssetImage(menu.imageDetail),
                    ),
                  ),
                  Center(
                    child: Flexible(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color.fromRGBO(251, 236, 236, 1.000)),
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text(
                              menu.description,
                              style: GoogleFonts.poppins(
                                  fontSize: 16, fontWeight: FontWeight.w500)),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: SizedBox(
                          width: double.infinity,
                          height: 40,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                return CookingScreen(menu: menu);
              }));
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromRGBO(219, 73, 51, 1.000),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8))),
                              child: const Text("Let's Cook!"))),
                    ),
                  ),
                ],
              )
            ],
          ))),
    );
  }
}