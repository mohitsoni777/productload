import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:test1/models/product_models.dart';
import 'package:http/http.dart'as http ;

part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<Productsloadedstate, ProductsState> {
  ProductsBloc() : super(Productsloadingstate())  {
    on<Productsloadedstate>((event, emit) async {
      // TODO: implement event handler
   try {
     emit(Productsloadingstate());
   var data = await  http.get(Uri.parse("https://fakestoreapi.com/products"));
   print(data.body);
   if (data.statusCode==200) {
     
   emit(Productsloadedstate(productmodel: welcomeFromJson(data.body)));
   } else {
     throw Exception("failed to load product");
   }
   } catch (e) {
     emit(Productserrorstate(errorMessage: e.toString()));
   }
    });
  }
}
