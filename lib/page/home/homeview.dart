import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String picture='assets/translations/';
  @override
  Widget build(BuildContext context) {
    
      return Scaffold(
        body: Center(
          child: Column(
           mainAxisSize: MainAxisSize.min,
            children: [
              Text(tr('hello',namedArgs: {'name':"Javokhir"}
              ),style: TextStyle(
                fontSize: 30,fontWeight: FontWeight.w600,
              ),)
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Row(
         mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(onPressed:(){
              context.setLocale(const Locale('en','US'));
            },heroTag: 'en',
            child: Text('US'),
            ),
            FloatingActionButton(onPressed: (){
              context.setLocale(const Locale('uz','UZ'));

            },
            heroTag: 'uz',
            child: Text('UZ'),
            ),
            FloatingActionButton(onPressed: (){
              Navigator.pushNamed(context, '/Country');
            })
          ],
      
        ),
        
      );
  }
}