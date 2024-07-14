import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/entities/CategoryEntity.dart';
import '../../domain/entities/entities/ProductEntity.dart';
import '../../domain/entities/repositories/home_domain_repo.dart';
import '../data_sources/home_data_sources.dart';

class HomeDataRepo implements HomeDomainRepo {
  HomeDataSources homeDataSources;

  HomeDataRepo(this.homeDataSources);

  @override
  Future<Either<Failures, CategoryOrBrandEntity>> getBrands() {
    return homeDataSources.getBrands();
  }

  @override
  Future<Either<Failures, CategoryOrBrandEntity>> getCategories() {
    return homeDataSources.getCategories();
  }

  @override
  Future<Either<Failures, ProductEntity>> getProducts() {
    return homeDataSources.getProducts();
  }

}
