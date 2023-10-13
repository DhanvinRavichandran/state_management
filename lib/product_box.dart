import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:state_management/product_page.dart';

class productbox extends StatelessWidget {
  final Fooditems item;
  const productbox({super.key,required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      height: 170,
      child: Card(
        child: Row(children: [
          Container(width: 90,child: Image.asset("images/"+this.item.image),),
          Expanded(child: Container(child: Column(children: [
            Text(" "+this.item.name,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25),textAlign: TextAlign.start,),
            SizedBox(height: 5,),
            Text("Price:  "+this.item.price.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color:Colors.redAccent),),
            SizedBox(height: 5,),
            Text("Descp:  "+this.item.description,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w700),textAlign: TextAlign.center,)

            ,SizedBox(height: 10,),Center(child:RatingBar.builder(
              initialRating: 0,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,size: 10,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ) ,)
          ],),))
        ],),
      ),
    );
  }
}
