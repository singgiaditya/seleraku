import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:selaraku/model/allmenu.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CookingScreen extends StatelessWidget {
  const CookingScreen({super.key, required this.menu});
  final AllMenu menu;

  @override
  Widget build(BuildContext context) {
    String myVideoId = menu.video;
    final YoutubePlayerController controller = YoutubePlayerController(
      initialVideoId: myVideoId,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );

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
                    "Let's Cook",
                    style: GoogleFonts.poppins(
                        fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 8, bottom: 24),
                      child: Text(
                        menu.name,
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: const Color.fromRGBO(164, 164, 164, 1.000)),
                      )),
                  YoutubePlayer(
                    controller: controller,
                    liveUIColor: Colors.amber,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 36, bottom: 36),
                    child: Text('Ingredients',
                        style: GoogleFonts.poppins(
                            fontSize: 20, fontWeight: FontWeight.w500)),
                  ),
                  SizedBox(
                    height: 160,
                    child: SafeArea(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: menu.ingredient.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(
                                image: AssetImage(menu.ingredientImage[index]),
                                width: 130,
                                height: 97,
                              ),
                              Text(
                                menu.ingredient[index],
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                              Text(
                                menu.ingredientDetail[index],
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13,
                                    color: const Color.fromRGBO(
                                        164, 164, 164, 1.000)),
                              )
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 36, bottom: 9),
                    child: Text('Method',
                        style: GoogleFonts.poppins(
                            fontSize: 20, fontWeight: FontWeight.w500)),
                  ),
                  SizedBox(
                    height: 150 * menu.method.length.toDouble(),
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: menu.method.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 25,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color:
                                      const Color.fromRGBO(219, 73, 51, 1.000)),
                              child: Center(
                                child: Text(
                                  "Step ${index + 1}",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, bottom: 10),
                                child: Container(
                                    width: double.infinity,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: const Color.fromRGBO(
                                            251, 236, 236, 1.000)),
                                    child: Center(
                                        child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        menu.method[index],
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16),
                                      ),
                                    ))),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ))),
    );
  }
}
