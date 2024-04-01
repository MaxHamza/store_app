import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OtherProducts extends StatelessWidget {
  const OtherProducts({Key? key}) : super(key: key);

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
                    Text('৳270',style: TextStyle(
                      fontSize: 22,
                      color: Colors.orange,
                    ),
                    ),
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
