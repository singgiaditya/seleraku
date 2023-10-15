import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:selaraku/detailScreen.dart';
import 'package:selaraku/model/allmenu.dart';

var parser = EmojiParser();

class Homemenu extends StatelessWidget {
  const Homemenu({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 50, left: 30, right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hi!, What are we',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700, fontSize: 18)),
                  Text('cooking today?',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700, fontSize: 18))
                ],
              ),
              const CircleAvatar(
                backgroundImage: AssetImage('image/profil.jpg'),
                radius: 35,
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 18, top: 49),
                child: Text(
                  parser.emojify('Trending Now :fire:'),
                  style: GoogleFonts.poppins(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 257,
                child: SafeArea(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      final AllMenu menu = allMenuList[index];
                      return Padding(
                        padding: const EdgeInsets.only(right: 18),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        DetailScreen(menu: menu)));
                          },
                          child: Container(
                              width: 285,
                              height: 257,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(menu.imageAsset),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Container(
                                margin: const EdgeInsets.only(
                                    top: 9, left: 15, bottom: 18),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        height: 25,
                                        padding: const EdgeInsets.only(
                                            top: 4, left: 15, right: 15),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: const Color.fromRGBO(
                                                38, 46, 54, 0.5)),
                                        child: Text(
                                          'Top Trending ${index + 1}',
                                          style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white),
                                        )),
                                    Text(menu.name,
                                        style: GoogleFonts.poppins(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white)),
                                  ],
                                ),
                              )),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 6, top: 60),
                child: Text(
                  parser.emojify('In Your Area :sparkles:'),
                  style: GoogleFonts.poppins(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 250 * 3,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    final AllMenu menu = allMenuList[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DetailScreen(menu: menu)));
                      },
                      child: Container(
                          margin: const EdgeInsets.only(right: 30, bottom: 30),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color:
                                  const Color.fromRGBO(251, 236, 236, 1.000)),
                          height: 218,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  width: 122,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        menu.name,
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 10),
                                        child: Text(menu.location,
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 20)),
                                      ),
                                      Text(
                                        menu.about,
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          color: const Color.fromRGBO(
                                              105, 104, 104, 1.000),
                                        ),
                                      )
                                    ],
                                  )),
                              Container(
                                  width: 165,
                                  height: 193,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: DecorationImage(
                                          image: AssetImage(menu.imageAsset),
                                          fit: BoxFit.cover))),
                            ],
                          )),
                    );
                  },
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
