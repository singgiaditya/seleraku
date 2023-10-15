import 'package:flutter/material.dart';
import 'package:selaraku/all.dart';
import 'package:selaraku/drink.dart';
import 'package:selaraku/food.dart';
import 'package:selaraku/snack.dart';

class Explorer extends StatefulWidget {
  const Explorer({super.key});

  @override
  State<Explorer> createState() => _ExplorerState();
}

class _ExplorerState extends State<Explorer> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    return Container(
      margin: const EdgeInsets.only(left: 24),
      child: ListView(children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: const EdgeInsets.only(top: 30),
            child: const Image(
              image: AssetImage('image/logo.png'),
              height: 40,
            ),
          ),
        ),
        Container(
            margin: const EdgeInsets.only(
              right: 24,
            ),
            height: queryData.size.height,
            child: const DefaultTabController(
                length: 4,
                child: Column(
                  children: <Widget>[
                    Material(
                        child: TabBar(
                      labelColor: Color.fromRGBO(219, 73, 51, 1.000),
                      indicatorColor: Color.fromRGBO(219, 73, 51, 1.000),
                      indicatorSize: TabBarIndicatorSize.label,
                      unselectedLabelColor: Color.fromARGB(255, 164, 164, 164),
                      indicatorPadding: EdgeInsets.only(top: 0),
                      indicatorWeight: 2,
                      tabs: [
                        Tab(
                          text: 'All',
                        ),
                        Tab(
                          text: 'Food',
                        ),
                        Tab(
                          text: 'Drink',
                        ),
                        Tab(text: 'Snack'),
                      ],
                    )),
                    Expanded(
                      flex: 1,
                      child: TabBarView(
                        children: [All(), Food(), Drink(), Snack()],
                      ),
                    )
                  ],
                ))),
      ]),
    );
  }
}
