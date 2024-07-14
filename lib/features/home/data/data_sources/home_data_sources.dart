import 'package:dartz/dartz.dart';
import 'package:route_event_task/features/home/domain/entities/entities/ProductEntity.dart';
import '../../../../core/error/failures.dart';
import '../models/CategoryModel.dart';

abstract class HomeDataSources {
  Future<Either<Failures, CategoryOrBrandModel>> getCategories();

  Future<Either<Failures, CategoryOrBrandModel>> getBrands();

  Future<Either<Failures, ProductEntity>> getProducts();
}
