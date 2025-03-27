import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.class_), label: "My Class"),
          NavigationDestination(icon: Icon(Icons.favorite), label: "Favorite"),
          NavigationDestination(icon: Icon(Icons.person), label: "My Profile"),
        ],
      ),
      backgroundColor: Color.fromARGB(228, 255, 255, 255),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 50)),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 15)),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [TextSpan(text: "Hello, Aaron!")],
                      ),

                      TextSpan(
                        style: TextStyle(
                          color: const Color.fromARGB(255, 115, 110, 110),
                          fontSize: 15,
                        ),
                        children: [
                          TextSpan(text: "\nLet's learn something today!"),
                        ],
                      ),
                    ],
                  ),
                ),
                Icon(Icons.notifications, color: Colors.black),
                Padding(padding: EdgeInsets.only(right: 20)),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 30)),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 15)),
                Container(
                  constraints: BoxConstraints(
                    maxWidth: 335, // Massima larghezza consentita
                  ),
                  child: SearchBar(
                    leading: const Icon(Icons.search),
                    hintText: "Search",
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 15)),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 15)),
                Column(
                  children: [
                    SizedBox(
                      width: 160,
                      height: 50,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.code, size: 20, color: Colors.red),
                        label: Text(
                          "Development",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                          textStyle: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    SizedBox(
                      width: 160,
                      height: 50,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.campaign,
                          size: 20,
                          color: Colors.blue,
                        ),
                        label: Text(
                          "Marketing",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                          textStyle: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(left: 15)),
                Column(
                  children: [
                    SizedBox(
                      width: 160,
                      height: 50,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.design_services,
                          size: 20,
                          color: Colors.red,
                        ),
                        label: Text(
                          "Design",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                          textStyle: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    SizedBox(
                      width: 160,
                      height: 50,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.business,
                          size: 20,
                          color: Colors.blue,
                        ),
                        label: Text(
                          "Business",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                          textStyle: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(top: 80)),
                Padding(padding: EdgeInsets.only(left: 15)),
                Text(
                  "Continue Learning",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),

            Container(
              width: 330,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(10),
                    ), // Smussa solo la parte superiore
                    child: Image(
                      image: AssetImage("assets/Immagine.png"),
                      width: 330,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),

                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Expanded(
                        child: Text(
                          "Material Design 3 Implementation",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Icon(Icons.play_circle_fill, color: Colors.grey[700]),
                      Text(
                        " Session 7 / 32",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Icon(Icons.radio_button_checked, color: Colors.grey[700]),
                      Text(
                        " Progress 21.7%",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsets.only(top: 70)),
                      SizedBox(
                        width: 300,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 15,
                            ),
                            textStyle: TextStyle(fontSize: 18),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(45),
                            ),
                          ),
                          child: Text(
                            "Continue",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Padding(padding: EdgeInsets.only(top: 20)),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 15)),
                Text(
                  "Top Instructors",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Padding(padding: EdgeInsets.only(bottom: 30)),
                    Padding(padding: EdgeInsets.only(left: 15)),

                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/Prof1.jpg"),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(padding: EdgeInsets.only(bottom: 30)),
                    Padding(padding: EdgeInsets.only(left: 15)),

                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/Prof2.jpg"),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(padding: EdgeInsets.only(bottom: 30)),
                    Padding(padding: EdgeInsets.only(left: 15)),

                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/Prof3.jpg"),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Sultan Deler",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "Fatmo Parmaksiz",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "Veli Dincer",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
