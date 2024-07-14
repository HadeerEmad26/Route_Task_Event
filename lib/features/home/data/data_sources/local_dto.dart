import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../models/CategoryModel.dart';
import '../models/ProductsModel.dart';
import 'home_data_sources.dart';

class HomeLocalDto implements HomeDataSources {
  @override
  Future<Either<Failures, CategoryOrBrandModel>> getBrands() {
    // TODO: implement getBrands
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, CategoryOrBrandModel>> getCategories() {
    // TODO: implement getCategories
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, ProductModel>> getProducts() {
    // TODO: implement getProducts
    throw UnimplementedError();
  }

}
