import 'package:flutter/material.dart';
import 'package:ortega/tab_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Tab bar Madederia Ortega",
              style: TextStyle(fontSize: 16),
            ),
            centerTitle: true,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(40),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Container(
                  height: 40,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: Color(0xff08a93d),
                  ),
                  child: const TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    dividerColor: Colors.transparent,
                    indicator: BoxDecoration(
                      color: Color(0xff69f270),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    labelColor: Color(0xff050505),
                    unselectedLabelColor: Colors.black54,
                    tabs: [
                      TabItem(
                        title: "Caoba",
                        count: 20,
                      ),
                      TabItem(title: "Roble", count: 15),
                      TabItem(title: "Sedro", count: 25),
                    ],
                  ),
                ),
              ),
            ),
          ),
          body: const TabBarView(children: [
            const Center(
              child: SizedBox(
                width: 150,
                height: 240,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          "Caoba",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Image(
                                  image: NetworkImage(
                                      "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.publicdomainpictures.net%2Fpictures%2F30000%2Fvelka%2Fmahogany-wood-background-4.jpg&f=1&nofb=1&ipt=bbdcc7dbcbb9de8efb289575d1d120b8e34df0c6fc47198bad1e786e81457df9&ipo=images")),
                            )
                          ],
                        ),
                        Divider(
                          thickness: 2,
                          height: 25,
                        ),
                        Text("Id 01"),
                        Text("Tipo: Oscuro"),
                        Text("Acabado: Liso"),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Center(
              child: SizedBox(
                width: 160,
                height: 240,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          "Roble",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Image(
                                  image: NetworkImage(
                                      "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.majofesa.com%2Fwp-content%2Fuploads%2F2016%2F05%2Froble-blanco-americano.jpg&f=1&nofb=1&ipt=da7faf65b428b5559530113fa609602e4abcc639276a088bc4f47464c2557ba8&ipo=images")),
                            )
                          ],
                        ),
                        Divider(
                          thickness: 2,
                          height: 25,
                        ),
                        Text("Id 02"),
                        Text("Tipo: Oscuro"),
                        Text("Acabado: Rug"),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Center(
              child: SizedBox(
                width: 150,
                height: 240,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          "Sedro",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Image(
                                  image: NetworkImage(
                                      "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.pinimg.com%2Foriginals%2Fb6%2F56%2Fef%2Fb656efdc28f82bdceac5fb0d5741a41f.jpg&f=1&nofb=1&ipt=e206d193594fcf5b92799d3a9633063dfb6fd599fbc1055e577abe97b5a4b5e9&ipo=images")),
                            )
                          ],
                        ),
                        Divider(
                          thickness: 2,
                          height: 25,
                        ),
                        Text("Id 03"),
                        Text("Tipo: Claro"),
                        Text("Acabado: liso"),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ]),
        ));
  }
}
