import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MyBagProducts extends StatefulWidget {
  const MyBagProducts({Key? key}) : super(key: key);

  @override
  State<MyBagProducts> createState() => _MyBagProductsState();
}

class _MyBagProductsState extends State<MyBagProducts> {
 List<int> listCount=[1,1];
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
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
                    Image(image: AssetImage('images/del3.png'),
                    height: 121,
                      width: 115,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text('Nestle Nido Full Cream Milk Powder Instant',
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
                              Text('৳182',style: TextStyle(
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
                                      if (listCount[index] > 1) {
                                        listCount[index]--;
                                        setState(() {});
                                      }
                                    }, child:const Text('-',),
                                    ),
                                  ),
                                  Gap(MediaQuery.of(context).size.width*0.03),
                                  Text(listCount[index].toString()),
                                  Gap(MediaQuery.of(context).size.width*0.03),
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        color: Color(0xff5EC401),
                                        borderRadius: BorderRadius.all(Radius.circular(12))
                                    ),
                                    child: TextButton(onPressed: (){
                                        listCount[index]++;
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
          itemCount: 2),
    );
  }
}
