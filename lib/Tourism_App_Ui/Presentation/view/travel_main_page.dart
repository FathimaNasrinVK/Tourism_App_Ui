import 'package:flutter/material.dart';
import 'package:tourism_app/Tourism_App_Ui/Presentation/view/view_all_page.dart';

class Travel_Main extends StatefulWidget {
  const Travel_Main({super.key});

  @override
  State<Travel_Main> createState() => _Travel_MainState();
}

class _Travel_MainState extends State<Travel_Main> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 1.6;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: RichText(
            text:  TextSpan(
                text: "Go",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
                children: [
                  TextSpan(
                      text: "Fast",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20))
                ]),
          ),
        ),
        actions:  [
          CircleAvatar(
            backgroundColor: Colors.blueGrey[900],          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search',
                    suffixIcon: const Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.grey.shade200),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Popular Resorts',
                  style: TextStyle(
                      color:Colors.blueGrey[900],                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                SizedBox(
                  width: 160,
                ),
                Text(
                  'View All',
                  style: TextStyle(color: Colors.blueGrey[900],fontSize: 17),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Travel_ViewAll()
          ],
        ),
      ),
    );
  }
}
