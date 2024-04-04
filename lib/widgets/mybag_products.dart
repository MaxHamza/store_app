import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MyBagProducts extends StatefulWidget {
   MyBagProducts({Key? key,this.bag}) : super(key: key);
List<Map> ?bag=[];
  @override
  State<MyBagProducts> createState() => _MyBagProductsState();
}

class _MyBagProductsState extends State<MyBagProducts> {
  @override
  Widget build(BuildContext context) {
    
    return widget.bag!=null? SizedBox(
      width: 376,
      height: 340,
      child: ListView.separated(
          shrinkWrap: false,
          physics:const BouncingScrollPhysics(),
          itemBuilder: (context,index){
            return  Container(width: 376,
              height: 164,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(image: NetworkImage(widget.bag![index]['image'],),
                    errorBuilder:(BuildContext context, Object error, StackTrace? stackTrace) =>
                     Image.asset('images/fruit.png'),
                    height: 121,
                      width: 115,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(widget.bag![index]['description'],
                            maxLines: 2,
                            style: TextStyle(fontSize:18),
                          ),
                          Gap(10),
                          Row(
                            children: [
                              Text('৳342',style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                  decoration: TextDecoration.lineThrough
                              ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text('৳${widget.bag![index]['price']}',style: TextStyle(
                                fontSize: 22,
                                color: Colors.orange,
                              ),
                              ),
                              Gap(9),
                              Row(
                                children: [
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.all(Radius.circular(12))
                                    ),
                                    child: TextButton(onPressed: (){
                                        widget.bag![index]['amount']--;
                                        setState(() {});
                                    }, child:const Text('-',),
                                    ),
                                  ),
                                  Gap(MediaQuery.of(context).size.width*0.03),
                                  Text(widget.bag![index]['amount'].toString()),
                                  Gap(MediaQuery.of(context).size.width*0.03),
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        color: Color(0xff5EC401),
                                        borderRadius: BorderRadius.all(Radius.circular(12))
                                    ),
                                    child: TextButton(onPressed: (){
                                        widget.bag![index]['amount']++;
                                        setState(() {});
                                    }, child:const Text('+',),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context,index){return Container(
            height: 1,
            width: double.infinity,
            color: Colors.grey,
          );
          },
          itemCount:widget.bag?.length??0),
    ):Gap(1);
  }
}
