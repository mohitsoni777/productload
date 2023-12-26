import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/bloc/products_bloc.dart';

class productscreen extends StatelessWidget {
  const productscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("product screen"),
        ),
        body: BlocBuilder<ProductsBloc, ProductsState>(
          builder: (context, state) {
           if(state is Productsloadingstate){
            return Center(
              child: CircularProgressIndicator.adaptive(),
            );
           }else if(state is Productsloadedstate){
             return ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
              return ListTile(
                leading:Text( state.productmodel[index].category.toString()),
              );
            });
           }
           else if(state is Productserrorstate){
            return Center(
              child: Text(state.errorMessage),
            );
           }
           return SizedBox();

          },
        ));
  }
}
