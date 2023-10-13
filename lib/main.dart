import 'package:flutter/material.dart';
import 'package:state_management/product_box.dart';
import 'package:state_management/product_page.dart';
import 'package:state_management/product_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
      ),
      home:mainpage(),
    );
  }
}
class mainpage extends StatefulWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  final items = Fooditems.getProducts();
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(centerTitle: true,
    title: Text("Food Truck"),)
      ,body:ListView.builder(itemCount:items.length,itemBuilder: (context,index){
        return GestureDetector(onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) =>productview(item:items[index])));

        },child: Container(child:productbox(item:items[index]),));

        }) );
  }
}

