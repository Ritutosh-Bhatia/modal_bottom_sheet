import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_bottom_sheet/utils/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet Demo"),
        centerTitle: true,
        backgroundColor: AppColors.purpleColor,
      ),
      body: Center(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildButton(text: "Simple Sheet", onClicked: () => showModalBottomSheet(
              context: context,
              builder: (context) => buildSheet(),
            ),
            ),
            SizedBox(height: 20.h,),
            buildButton(text: "Full Screen Sheet", onClicked: () => showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  )
              ),
    context: context,
    builder: (context) => buildSheet(),),),
            SizedBox(height: 20.h,),
            buildButton(text: "Scrollable Sheet", onClicked: () => showModalBottomSheet(
              isScrollControlled: false,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  )
              ),
              context: context,
              builder: (context) => DraggableScrollableSheet(
                initialChildSize: 1.0,
                  maxChildSize: 1.0,
                  minChildSize: 0.5,
                  builder: (_, controller) =>  Container(
                    padding: EdgeInsets.all(25),
                    color: AppColors.lightTextColor,
                    child: ListView(
                      children: [
                        Center(child: ClipOval(
                          child: Image.asset("assets/person.png",
                            fit: BoxFit.cover,
                            width: 124.w,
                            height: 104.h,),
                        ),),
                        SizedBox(height: 20.h,),
                        Center(
                          child:
                          Text("Scrollable  Sheet",style: TextStyle(fontSize: 16),),),
                        SizedBox(height: 20.h,),
                        Center(
                          child:
                          Text("Scrollable  Sheet",style: TextStyle(fontSize: 16),),),
                        SizedBox(height: 20.h,),
                        Center(
                          child:
                          Text("Scrollable  Sheet",style: TextStyle(fontSize: 16),),),
                        SizedBox(height: 20.h,),
                        Center(
                          child:
                          Text("Scrollable  Sheet",style: TextStyle(fontSize: 16),),),SizedBox(height: 20.h,),
                        Center(
                          child:
                          Text("Scrollable  Sheet",style: TextStyle(fontSize: 16),),),SizedBox(height: 20.h,),
                        Center(
                          child:
                          Text("Scrollable  Sheet",style: TextStyle(fontSize: 16),),),SizedBox(height: 20.h,),
                        Center(
                          child:
                          Text("Scrollable  Sheet",style: TextStyle(fontSize: 16),),),



                      ],
                    ),
                  ),),),),
              

          ],
        ),
      ),
    );
  }
  Widget buildButton({
    required String text,
    required VoidCallback onClicked,
    //required bool scroll,
  }) => ElevatedButton(

    style: ElevatedButton.styleFrom(
      shape: StadiumBorder(),
      padding: EdgeInsets.symmetric(horizontal: 30,vertical: 30)
    ),
      onPressed: onClicked, child: Text( text,
  style: const TextStyle(fontSize: 20),)
  );
  Widget buildSheet() =>
      Container(
        padding: EdgeInsets.all(25),
        color: AppColors.lightTextColor,
        child: ListView(
          children: [
            Center(child: ClipOval(
              child: Image.asset("assets/person.png",
              fit: BoxFit.cover,
              width: 124.w,
              height: 104.h,),
            ),),
            SizedBox(height: 20.h,),
            Center(
           child: Text("Simple Bottom Sheet",style: TextStyle(fontSize: 16),),),
          ],
        ),
      );
}
