import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:state_management/product_page.dart';

class productview extends StatelessWidget {
  const productview({super.key,required this.item});
  final Fooditems item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text(this.item.name,style: TextStyle(color: Colors.white,
          fontWeight: FontWeight.w700,fontSize: 25),)
        ,backgroundColor: Colors.lightGreen,),

      body: SingleChildScrollView(
        child: Center(child: Column(mainAxisAlignment:MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,children: [
          Image.asset("images/"+this.item.image),
          SizedBox(height: 20,),
          Text("Price: "+this.item.price.toString(),style: TextStyle(color: Colors.redAccent,fontSize: 20,fontWeight: FontWeight.w700),)
          ,SizedBox(height: 20,),
          Text("Descp:  "+this.item.description,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w700),textAlign: TextAlign.center,)


        ],),),
      ),
    );
  }
}
