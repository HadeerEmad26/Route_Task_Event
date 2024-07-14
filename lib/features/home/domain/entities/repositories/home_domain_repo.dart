import 'package:dartz/dartz.dart';
import 'package:route_event_task/features/home/domain/entities/entities/ProductEntity.dart';

import '../../../../../core/error/failures.dart';
import '../entities/CategoryEntity.dart';

abstract class HomeDomainRepo {
  Future<Either<Failures, CategoryOrBrandEntity>> getCategories();

  Future<Either<Failures, ProductEntity>> getProducts();
}
