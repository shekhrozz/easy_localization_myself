
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:easy_localization/easy_localization.dart';

class CountryPage extends StatefulWidget {
  const CountryPage({Key? key}) : super(key: key);

  @override
  State<CountryPage> createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {
   String picture='assets/images/america.jpg';
int c=0;
   void change(String name){
    
   }
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Column(
          children: [
            Container(
              height: 200,
          width: MediaQuery.of(context).size.width,
              color: Colors.blue,
              child: Column(
                children: [
                  Text('About'.tr(),style: TextStyle(fontSize: 20,color: Colors.white,fontWeight:FontWeight.w400),),
             SizedBox(
              height: 50),                               
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 100,
                          decoration: BoxDecoration(image: DecorationImage(image: AssetImage(picture),
                          fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    
                    children: [
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.blue),
                      ),
                      SizedBox(width: 10,),

                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                        alignment: Alignment.centerLeft,
                          child: Text("prezident".tr(),style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w300),)),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(tr('name'),style: TextStyle(color: Colors.grey,
                fontSize: 15,fontWeight: FontWeight.w200),),
              ),
            ),
               Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row( 
                    children: [
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.blue),
                      ),
                      SizedBox(width: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                        alignment: Alignment.centerLeft,
                          child: Text("Vice:".tr(),style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w300),)),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text("name2".tr(),style: TextStyle(color: Colors.grey,
                fontSize: 15,fontWeight: FontWeight.w200),),
              ),
            ),   Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(  
                    children: [
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.blue),
                      ),
                      SizedBox(width: 10,),

                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                        alignment: Alignment.centerLeft,
                          child: Text("Area".tr(),style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w300),)),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text("km".tr(),style: TextStyle(color: Colors.grey,
                fontSize: 15,fontWeight: FontWeight.w200),),
              ),
            ),
               Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row( 
                    children: [
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.blue),
                      ),
                      SizedBox(width: 10,),

                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                        alignment: Alignment.centerLeft,
                          child: Text("Population".tr(),style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w300),)),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text("text".tr(),style: TextStyle(color: Colors.grey,
                fontSize: 15,fontWeight: FontWeight.w200),),
              ),
            )
           
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(onPressed: (){
              c++; 
              setState(() {
              if(c%2==0){
               context.setLocale(Locale('ru','RU'));
                picture="assets/images/Russian.png";}
              else {
               context.setLocale(Locale('en','US'));
               picture="assets/images/america.jpg";}
              }
              );
            },
            child: Text("English",style: TextStyle(fontSize: 10),),
            ),  
          ],
        ),
      ); 
  }
}