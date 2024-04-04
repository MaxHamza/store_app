import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:task7_store_app/pages/details_page.dart';

class OtherProducts extends StatelessWidget {
   OtherProducts({Key? key, this.data,this.dataIndex}) : super(key: key);
dynamic data;
dynamic dataIndex;
int ?index1;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 376,
      height: 340,
      child: ListView.separated(
          shrinkWrap: false,
          physics:const BouncingScrollPhysics(),
          itemBuilder: (context,index){
        return  GestureDetector(
          onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
              return DetailsPage(dataNoIndex: data,data: data[index]);
           }));
          },
          child: Container(width: 376,
          height: 164,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(image: NetworkImage(data[index]['image']),
                    height: 121,
                    width: 115,
                  ),
            Gap(5),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(data[index]['description'],
                          maxLines: 2,
                          style:const TextStyle(fontSize:18),
                        ),
                      ),
                    ],
                  ),
            const      Gap(10),
                 const Row(
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
                      Text('${data[index]['price']}৳',style:const TextStyle(
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
          ),
        );
      },
          separatorBuilder: (context,index){
            return Container(
        height: 1,
        width: double.infinity,
            color: Colors.grey,
          );
          },
          itemCount: 2),
    );
  }
}
