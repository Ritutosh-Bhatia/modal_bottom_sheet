import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:modal_bottom_sheet/ui/home_page.dart';



void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: Size(360, 640),
      builder: (_) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          // Use this line to prevent extra rebuilds
          useInheritedMediaQuery: true,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: GoogleFonts.nunitoTextTheme(Theme.of(context).textTheme),
          ),
          home: HomePage(),
        );
      },
    );
  }
}
