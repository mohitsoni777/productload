// import 'package:D:\flutter\test1\lib\models\product_models.dart';
part of 'products_bloc.dart';



sealed class ProductsState extends Equatable {
  const ProductsState();
   @override
  List<Object> get props => [];
 
}

final class ProductsInitial extends ProductsState {}
final class Productsloadingstate extends ProductsState {}
final class Productsloadedstate extends ProductsState 
{
  final List<Welcome> productmodel;

  Productsloadedstate({required this.productmodel});
   @override
  List<Object> get props => [productmodel];
}


final class Productserrorstate extends ProductsState {
  final String errorMessage;

  Productserrorstate({required this.errorMessage});
    @override
  List<Object> get props => [errorMessage];
}
