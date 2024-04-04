import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import '../widgets/other_products.dart';

class DetailsPage extends StatefulWidget {
   DetailsPage({Key? key,this.data,this.dataNoIndex}) : super(key: key);
    dynamic data;
    dynamic dataNoIndex;
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
            decoration:const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
              child: Center(
           child:Image.network('${widget.data['image']}',
           errorBuilder:(BuildContext context, Object error, StackTrace? stackTrace) =>
                  Image.asset('images/Empty.png'),
           ) ,
              ),
            ),
             const Gap(15),
              Row(children: [
                Container(
                  height: 66,
                  width: 66,
                  decoration:const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: Center(
                    child: Image.network(widget.data['image']),
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
                    child: Image.network(widget.data['image']),
                  ),
                ),
              ],),
            const  Gap(10),
              Text(widget.data['description'],style: TextStyle(fontSize: 18,),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
           const  Gap(8),
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Text(widget.data['amount'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                 Spacer(),
                 Text('${widget.data['price']}৳',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.lightGreen),),
               ],
             ),
              Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(widget.data['category'],style:const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                ],
              ),
             const Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('${widget.data['title']}',
                  overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            const  Gap(25),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('You can also check this items',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),),
                ],
              ),
            const  Gap(20),
              OtherProducts(data: widget.dataNoIndex,dataIndex: widget.data),
              MaterialButton(onPressed: (){
              return context.go('/mybag');
              },
                shape:const RoundedRectangleBorder(
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
