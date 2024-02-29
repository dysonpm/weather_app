import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 1 * kToolbarHeight, 40, 20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0, -1.5),
                child: Container(
                  height: 300,
                  width: 600,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: const Color.fromARGB(255, 15, 85, 143)),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -0.50),
                child: Container(
                  height: 300,
                  width: 600,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Color.fromARGB(255, 12, 25, 172)),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
                child: Container(
                  decoration: BoxDecoration(color: Colors.transparent),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "📍 Mülheim an der Ruhr",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Good Morning",
                      style: TextStyle(
                          fontFamily: "Google",
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Image.asset('assets/2.png'),
                    const Center(
                      child: Text(
                        '21°C',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 55,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const Center(
                      child: Text(
                        'THUNDERSTORM',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Center(
                      child: Text(
                        'Friday 16 | 13.00 Uhr',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Zeigt eine Zeile mit Informationen an.
                        Row(
                          children: [
                            Image.asset(
                              "assets/11.png",
                              scale: 8,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Sonnenaufgang",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 10,
                                  ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "8.05 Uhr",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        // Zeigt eine Zeile mit Informationen an.
                        Row(
                          children: [
                            Image.asset(
                              "assets/14.png",
                              scale: 8,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Sonnenuntergang",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 10),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "18.12 Uhr",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    // Linie (divider)
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Zeigt eine Zeile mit Informationen an.
                        // Die untere Häfte
                        Row(
                          children: [
                            Image.asset(
                              "assets/12.png",
                              scale: 8,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Temp Max",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 10,
                                  ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "12 °C",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        // Zeigt eine Zeile mit Informationen an.
                        Row(
                          children: [
                            Image.asset(
                              "assets/13.png",
                              scale: 8,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Temp Min",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 10),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "5 °C",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
