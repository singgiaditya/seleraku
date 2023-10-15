import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:selaraku/model/allmenu.dart';
import 'package:selaraku/detailScreen.dart';

class Food extends StatefulWidget {
  const Food({super.key});

  @override
  State<Food> createState() => _FoodState();
}

List<bool> search = [true, true, true];

class _FoodState extends State<Food> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color.fromRGBO(246, 247, 251, 1.000),
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextField(
            onChanged: (text) {
              setState(() {
                for (int i = 0; i < allMenuList.length; i++) {
                  if (text.isEmpty) {
                    search[i] = true;
                  } else if (allMenuList[i]
                          .name
                          .toLowerCase()
                          .contains(text.toLowerCase()) ||
                      allMenuList[i]
                          .about
                          .toLowerCase()
                          .contains(text.toLowerCase()) ||
                      allMenuList[i]
                          .location
                          .toLowerCase()
                          .contains(text.toLowerCase())) {
                    search[i] = true;
                  } else {
                    search[i] = false;
                  }
                }
              });
            },
            decoration: InputDecoration(
              hintStyle: GoogleFonts.poppins(
                  fontSize: 16,
                  color: const Color.fromRGBO(164, 164, 164, 1.000),
                  fontWeight: FontWeight.w400),
              hintText: 'Search Your Favorite Food',
              prefixIcon: const Icon(Icons.search),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.all(20),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              final AllMenu menu = allMenuList[index];
              return Visibility(
                visible: search[index],
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailScreen(menu: menu);
                    }));
                  },
                  child: Card(
                    margin: const EdgeInsets.only(top: 20),
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
                                  backgroundImage: AssetImage(menu.imageAsset),
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
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12,
                                                    color: const Color.fromRGBO(
                                                        164, 164, 164, 1.000)),
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
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
