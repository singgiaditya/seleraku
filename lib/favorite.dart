import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:selaraku/detailScreen.dart';
import 'package:selaraku/model/allmenu.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favorite',
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600, fontSize: 30, color: Colors.black),
        ),
        toolbarHeight: 120,
        titleSpacing: 30,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: allFavoriteList.isEmpty
          ? const Center(
              child: Text('Your Favorite Is empty'),
            )
          : Container(
              margin: const EdgeInsets.only(right: 25, left: 25),
              child: ListView.builder(
                itemCount: allFavoriteList.length,
                itemBuilder: (BuildContext context, int index) {
                  final AllMenu menu = allFavoriteList[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailScreen(menu: menu);
                      }));
                    },
                    child: Card(
                      margin: const EdgeInsets.only(bottom: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      color: const Color.fromARGB(255, 243, 243, 245),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 10, bottom: 10, left: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage(menu.imageAsset),
                                    radius: 50,
                                  ),
                                  Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 3),
                                      child: Flexible(
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                menu.name,
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16),
                                              ),
                                              SizedBox(
                                                width: 145,
                                                child: Text(
                                                  menu.about,
                                                  style: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 12,
                                                      color:
                                                          const Color.fromRGBO(
                                                              164,
                                                              164,
                                                              164,
                                                              1.000)),
                                                ),
                                              ),
                                              Text(
                                                menu.location,
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16),
                                              )
                                            ]),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  if (menu.favorite) {
                                    allFavoriteList.remove(menu);
                                    menu.favorite = !menu.favorite;
                                  } else {
                                    allFavoriteList.add(menu);
                                    menu.favorite = !menu.favorite;
                                  }
                                });
                              },
                              icon: Icon(menu.favorite
                                  ? Icons.favorite
                                  : Icons.favorite_outline),
                              color: Colors.red,
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
    );
  }
}
