import 'package:all_fixs/Views/Widgets/Features/DeviceInfo/two_value_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class UserStatus extends StatelessWidget {
  const UserStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ALL FIXS",
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFAD585),
              Color(0xFFF47A7D),
            ],
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                // color: Colors.blue[900],
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Friend's Status",
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.transparent,
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                      color: Colors.transparent,
                                      child: TwoValueCard(
                                        text: "User is",
                                        txtclr: Colors.orange[900],
                                        value: "Online",
                                        subwidget: null,
                                        clr: null,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      color: Colors.transparent,
                                      child: TwoValueCard(
                                        text: "Last APP Action",
                                        txtclr: Colors.orange[900],
                                        value: "2 Minutes Ago",
                                        subwidget: null,
                                        clr: null,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                                child: Container(
                              color: Colors.transparent,
                              child: TwoValueCard(
                                text: "User Status",
                                txtclr: Colors.orange[900],
                                value: "Driving",
                                subwidget: null,
                                clr: null,
                              ),
                            ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                ),
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("My Status"),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}