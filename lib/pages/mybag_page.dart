import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:task7_store_app/widgets/date_picker.dart';
import 'package:task7_store_app/widgets/mybag_products.dart';

import '../widgets/select_time.dart';

class MybagPage extends StatefulWidget {
  const MybagPage({Key? key}) : super(key: key);

  @override
  _MybagPageState createState() => _MybagPageState();
}

class _MybagPageState extends State<MybagPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace:  Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xffFFE4CF), Colors.white],
            ),
          ),
        ),
        title:const  Text('My Bag',style: TextStyle(fontSize: 18,
            fontWeight: FontWeight.bold
        ),),
      ),
      backgroundColor: Colors.white,
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(10),
            Row(
              children: [
                Gap(15),
                Text('products',style: TextStyle(fontSize: 18),),
              ],
            ),
          Gap(10),
            MyBagProducts(),
            MaterialButton(onPressed: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))
              ),
              height: 48,
              minWidth: 343,
              color:Colors.white70,
              child:const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  Text('Add More Product',style: TextStyle(
                    color: Color(0xff5EC401),
                    fontSize: 18,
                  ),
                    textAlign: TextAlign.center,
                  ),
                  Spacer(),
                  Icon(Icons.shopping_bag_outlined,color: Color(0xff5EC401),),
                ],
              ),
            ),
            Gap(25),
            Text('Expected Date & TIme',style: TextStyle(
              fontSize: 18
            ),),
           Gap(15),
            DatePicker(),
           Gap(20),
            SelectTime(),
            Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Delivery Location',style: TextStyle(
                fontSize: 18
              ),),
              Spacer(),
              TextButton(child:Text('Change',style: TextStyle(
                  color: Colors.green,
                  fontSize: 18
              ),
              ) ,onPressed: (){},),
              
            ],
          ),
            Gap(10),
           Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Icon(Icons.place_outlined),
               Gap(8),
               Expanded(
                 child: Text('Floor 4, Wakil Tower, Ta 131 Gulshan Badda Link Road',style: TextStyle(
                   color: Colors.black
                 ),),
               )
             ],
           ),
            Gap(20),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Text('Subtotal'),
                 Spacer(),
                 Text('BDT362')
               ],
             ),
           ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Delivery Charge'),
                  Spacer(),
                  Text('BDT50')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Total'),
                  Spacer(),
                  Text('BDT412')
                ],
              ),
            ),
            Gap(20),
            Text('Payment Methode'),
            Gap(10),
            MaterialButton(onPressed: (){},
            child: Container(
              height: 85,
              width: 365,
              decoration: BoxDecoration(
                color: Color(0xffC5EBAA),
                borderRadius: BorderRadius.all(Radius.circular(12))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Gap(5),
                Container(
                  height: 38,
                  width: 38,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff5EC401)
                  ),
                  child: Icon(Icons.euro_outlined)
                ),
                  Gap(5),
                  Expanded(child: Text('Tap Here to select your Payment Method',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                  maxLines: 2,
                  )),
                  Icon(Icons.arrow_forward_ios_outlined),
                ],
              ),
            ),
            ),
            Gap(25),
            MaterialButton(onPressed: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))
              ),
              height: 48,
              minWidth: 343,
              color: Color(0xff5EC401),
              child:const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  Text('Place Order',style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                    textAlign: TextAlign.center,
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,),
                ],
              ),
            ),
            Gap(10),
          ],
        ),
      ),
    ),
    );
  }
}
