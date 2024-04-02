import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:task7_store_app/product_model.dart';

class SpecificCatScreen extends StatefulWidget {
   SpecificCatScreen({Key? key, this.category,this.categories1}) : super(key: key);
 String ?category;
 List?categories1;
  @override
  _SpecificCatScreenState createState() => _SpecificCatScreenState();
}

class _SpecificCatScreenState extends State<SpecificCatScreen> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>>? data=ProductModel.data(category: widget.category!);
    return Scaffold(
      appBar:  AppBar(
        title: Text(widget.category!.toString()),
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
      body:   Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          physics:const BouncingScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: MediaQuery.of(context).size.height * 0.00070,
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index){
            return GestureDetector(
              onTap: () {},
              child:Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color:  Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(60),
                            child: Image.network(
                                data[index]['image']??const AssetImage('images/snacks.png'),
                              fit: BoxFit.fill,
                              width: MediaQuery.of(context).size.width*0.25,
                              height: 100,
                            ),
                          ),
                        ],
                      ),
                      const Gap(5),
                      Text(data[index]['description'],
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      ),
                      const Gap(30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('${data[index]['price']}৳',style:const TextStyle(color: Colors.deepOrange),
                          ),
                        ],
                      ),
                     const Gap(10),
                      MaterialButton(onPressed: (){},
                        shape:const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12))
                        ),
                        height: 40,
                        minWidth: 164,
                        color:const Color(0xff5EC401),
                        child:const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Icon(Icons.shopping_bag_outlined,color: Colors.white,),
                            Spacer(),
                            Text('Add To Bag',style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          itemCount:data!.length ,
        ),
      ),
    );
  }
}
