import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get_cli/common/utils/json_serialize/json_ast/error.dart';
import 'package:task7_store_app/controllers/specific_category_controller.dart';
import 'package:task7_store_app/manager/transfer_data_cubit.dart';
import 'package:task7_store_app/pages/specific_cat_screen.dart';

class Category extends StatelessWidget {
   Category({Key? key}) : super(key: key);

   List<List> categories=[['images/fruit.png','Fruits&Vegetables'],['images/meat.jpg','Meat&Fish'],
     ['images/milk.png','Dairy'],['images/snacks.png','Snacks'],['images/beverages.jpg','Beverages']
     ,['images/breakfast.jpg','Breakfast']
   ];
  final SpecificCatController getController=Get.put(SpecificCatController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xffFFF7FC),
      appBar:  AppBar(
        title:const Text('Category'),
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
      body: Padding(padding:const EdgeInsets.all(10),
      child:  GridView.builder(
        physics:const BouncingScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: MediaQuery.of(context).size.height * 0.00099,
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index){
          return GestureDetector(
              onTap: () {
                BlocProvider.of<TransferDataCubit>(context).pushCategory(category: categories[index][1]);
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return SpecificCatScreen();
                }));
              //   ,category:categories[index][1]
              },
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
                          child: Image(image:AssetImage(categories[index][0]),
                            fit: BoxFit.fill,
                            width: MediaQuery.of(context).size.width*0.25,
                            height: 100,
                          ),
                        ),
                      ],
                    ),
                const Gap(5),
                 Text('${categories[index][1]}'),
                  ],
                ),
              ),
            ),
              );
          },
        itemCount: 6,
      ))
      );
  }
}
