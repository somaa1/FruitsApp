import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../entities/product_entity.dart';
import '../../repos/products_repo/products_repo.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit(this.productsRepo) : super(ProductsInitial());

  final ProductRepo productsRepo;
  int productsLength = 0;
  Future<void> getProducts() async {
    emit(ProductsLoading());
    final result = await productsRepo.getProducts();
    result.fold(
          (failure) => emit(ProductsFailure(failure.message)),
          (products) => emit(ProductsSuccess(products)),
    );
  }

  Future<void> getBestSellingProducts() async {
    emit(ProductsLoading());
    final result = await productsRepo.getBestSellingProducts();
    result.fold(
          (failure) => emit(ProductsFailure(failure.message)),
          (products) {
        productsLength = products.length;
        emit(ProductsSuccess(products));
      },
    );
  }
}
