import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:task7_store_app/widgets/mybag_products.dart';
import '../widgets/other_products.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title:const Text('Product Details'),
    backgroundColor: Colors.transparent,
    elevation: 0,
    flexibleSpace: Container(
    decoration: const BoxDecoration(
    gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xffFFE4CF), Colors.white],
    ),
    ),
    ),
    ),
      backgroundColor:const Color(0xffFFF7FC),
      body: SingleChildScrollView(
        physics:const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
            Container(
              height: 308,
              width: 294,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
              child: Center(
           child: Image.asset('images/del3.png'),
              ),
            ),
             const Gap(15),
              Row(children: [
                Container(
                  height: 66,
                  width: 66,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: Center(
                    child: Image.asset('images/del3.png'),
                  ),
                ),
              const  Gap(6),
                Container(
                  height: 66,
                  width: 66,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: Center(
                    child: Image.asset('images/del3.png'),
                  ),
                ),
              ],),
            const  Gap(10),
              Text('Arla DANO Full Cream Milk Powder Instant ',style: TextStyle(fontSize: 18,),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
           const  Gap(8),
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Text('1Kg',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                 Spacer(),
                 Text('৳182',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.lightGreen),),
               ],
             ),
              Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Dairy Products',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                ],
              ),
             const Gap(10),
              Text('Et quidem faciunt, ut summum bonum sit extremum et rationibus conquisitis de voluptate. Sed ut summum bonum sit id,',
              overflow: TextOverflow.ellipsis,
              ),
              Gap(25),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('You can also check this items',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),),
                ],
              ),
              Gap(20),
              OtherProducts(),
              MaterialButton(onPressed: (){
              return context.go('/mybag');
              },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))
                ),
                height: 48,
                minWidth: 343,
                color:const Color(0xff5EC401),
                child:const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    Text('Add To Bag',style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                    textAlign: TextAlign.center,
                    ),
                    Spacer(),
                    Icon(Icons.shopping_bag_outlined,color: Colors.white,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
