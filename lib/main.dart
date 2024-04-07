import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task7_store_app/manager/transfer_data_cubit.dart';
import 'package:task7_store_app/pages/category.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TransferDataCubit(),
      child: MaterialApp(

        theme: ThemeData(
        ),
        debugShowCheckedModeBanner: false,
        home: Category(),
      ),
    );
  }
}
