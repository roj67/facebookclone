import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        toolbarHeight: 0,
      ),
      body: Container(
        color: const Color(0xFF18191a),
        child: Center(
          child: ListView(
            children: <Widget>[
              ColoredBox(
                color: const Color(0xFF242526),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  child: Row(children: [
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      'facebook',
                      style: GoogleFonts.didactGothic(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        color: Colors.white,
                        fontSize: 37,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          width: 38,
                          height: 38,
                          decoration: const BoxDecoration(
                            color: Color(0xFF3a3b3c),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 38,
                          height: 38,
                          decoration: const BoxDecoration(
                            color: Color(0xFF3a3b3c),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.menu,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 8),
                  ]),
                ),
              ),
              ColoredBox(
                color: const Color(0xFF242526),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      FaIcon(
                        FontAwesomeIcons.house,
                        color: Colors.blue,
                      ),
                      FaIcon(
                        FontAwesomeIcons.userGroup,
                        color: Colors.white,
                      ),
                      FaIcon(FontAwesomeIcons.facebookMessenger,
                          color: Colors.white),
                      FaIcon(
                        FontAwesomeIcons.bell,
                        color: Colors.white,
                      ),
                      FaIcon(FontAwesomeIcons.tv, color: Colors.white),
                      FaIcon(FontAwesomeIcons.shop, color: Colors.white),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              ColoredBox(
                  color: Color(0xFF242526),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 75,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Image.asset('images/profile.jpg',
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(
                            width: 250,
                            height: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "What's on your mind?",
                                  fillColor: const Color(0xFF3a3b3c),
                                  hintStyle:
                                      const TextStyle(color: Colors.white),
                                  filled: true,
                                  border: const OutlineInputBorder(),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 1, color: Colors.white),
                                    borderRadius: BorderRadius.circular(35),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 1, color: Colors.blue),
                                      borderRadius: BorderRadius.circular(35))),
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.photoFilm,
                                color: Colors.white,
                              ),
                              Text(
                                'Photo',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ]),
                  )),
              const SizedBox(
                height: 3,
              ),
              ColoredBox(
                color: const Color(0xFF242526),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 180,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 90,
                          height: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Stack(children: [
                            SizedBox(
                              width: 90,
                              height: 160,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset('images/profile.jpg',
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xFF3a3b3c),
                                ),
                                child: const SizedBox(
                                  width: 90,
                                  height: 60,
                                ),
                              ),
                            ),
                            const Align(
                                alignment: Alignment(0.0, 0.3),
                                child: Icon(Icons.add_circle,
                                    color: Colors.blue, size: 35)),
                            const Align(
                                alignment: Alignment(0, 0.8),
                                child: Text("Add Story",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15)))
                          ]),
                        ),
                        Container(
                          width: 90,
                          height: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Stack(children: [
                            SizedBox(
                              width: 90,
                              height: 160,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset('images/person1.jpeg',
                                    fit: BoxFit.cover),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(" Patty Doyle",
                                  style: TextStyle(color: Colors.white)),
                            ),
                            Container(
                              alignment: const Alignment(-0.5, -0.5),
                              width: 15,
                              height: 20,
                              color: Colors.blue,
                              child: const Text("1",
                                  style: TextStyle(color: Colors.white)),
                            )
                          ]),
                        ),
                        Container(
                          width: 90,
                          height: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Stack(children: [
                            SizedBox(
                              width: 90,
                              height: 160,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset('images/person2.jpg',
                                    fit: BoxFit.cover),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(" Charlie Nunez",
                                  style: TextStyle(color: Colors.white)),
                            ),
                            Container(
                              alignment: const Alignment(-0.5, -0.5),
                              width: 15,
                              height: 20,
                              color: Colors.blue,
                              child: const Text("1",
                                  style: TextStyle(color: Colors.white)),
                            )
                          ]),
                        ),
                        Container(
                          width: 90,
                          height: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Stack(children: [
                            SizedBox(
                              width: 90,
                              height: 160,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset('images/person3.jpg',
                                    fit: BoxFit.cover),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(" Lana Canon",
                                  style: TextStyle(color: Colors.white)),
                            ),
                            Container(
                              alignment: const Alignment(-0.5, -0.5),
                              width: 15,
                              height: 20,
                              color: Colors.blue,
                              child: const Text("1",
                                  style: TextStyle(color: Colors.white)),
                            )
                          ]),
                        ),
                      ]),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Column(children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 410,
                  child: ColoredBox(
                    color: const Color(0xFF242526),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 410,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                const SizedBox(width: 8),
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset('images/ronb.png',
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Hello World',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18)),
                                    Row(
                                      children: [
                                        Text('1h',
                                            style:
                                                TextStyle(color: Colors.white)),
                                        SizedBox(width: 5),
                                        FaIcon(FontAwesomeIcons.circleDot,
                                            color: Colors.white, size: 8),
                                        SizedBox(width: 3),
                                        FaIcon(FontAwesomeIcons.earthAmericas,
                                            color: Colors.white, size: 14)
                                      ],
                                    )
                                  ],
                                ),
                                const Spacer(),
                                const SizedBox(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Icon(
                                        Icons.more_horiz,
                                        color: Colors.white,
                                      ),
                                      Icon(
                                        Icons.close,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.all(4),
                              child: Text(
                                  "Interesting: Nepal ka ek business man le US bata import gareko \$235238 worth lamborghini ko agadi ko sisa ma ‘ Aama buba ko aasirwad’ nalekheko bhandai firta pathayeka chan.",
                                  style: TextStyle(color: Colors.white)),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 200,
                              decoration:
                                  const BoxDecoration(color: Colors.white),
                              child: ClipRRect(
                                child: Image.asset('images/car.jpg',
                                    fit: BoxFit.cover),
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            const Row(
                              children: [
                                SizedBox(width: 7),
                                Text('❤😍👍'),
                                Text(
                                  ' You and 3.3k',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Container(
                                    width: 120,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF3a3b3c),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: ElevatedButton.icon(
                                        onPressed: null,
                                        icon: const Icon(
                                          Icons.thumb_up,
                                          color: Colors.lightBlue,
                                        ),
                                        label: const Text('3.3k',
                                            style:
                                                TextStyle(color: Colors.blue))),
                                  ),
                                  Container(
                                    width: 120,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF3a3b3c),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: ElevatedButton.icon(
                                        onPressed: null,
                                        icon: const Icon(
                                          Icons.message_outlined,
                                          color: Colors.white,
                                        ),
                                        label: const Text('1k',
                                            style: TextStyle(
                                                color: Colors.white))),
                                  ),
                                  Container(
                                    width: 120,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF3a3b3c),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: ElevatedButton.icon(
                                        onPressed: null,
                                        icon: const Icon(
                                          Icons.share,
                                          color: Colors.white,
                                        ),
                                        label: const Text('500',
                                            style: TextStyle(
                                                color: Colors.white))),
                                  ),
                                ])
                          ],
                        )),
                  ),
                ),
              ]),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
