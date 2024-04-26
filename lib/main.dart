import 'package:flutter/material.dart';
import 'Tourism_App_Ui/Presentation/view/login_page.dart';
import 'Tourism_App_Ui/Presentation/view/travel_details_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const Travel_Login(),
    routes: {
      'detailpage' : (context) => const Travel_Details()
    },
  ));
}