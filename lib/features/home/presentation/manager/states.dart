
import '../../../../core/error/failures.dart';
import '../../domain/entities/entities/CategoryEntity.dart';
import '../../domain/entities/entities/ProductEntity.dart';

abstract class HomeStates {}

class HomeInitState extends HomeStates {}

class HomeLoadingState extends HomeStates {}

class HomeGetBrandsSuccessState extends HomeStates {
  CategoryOrBrandEntity model;

  HomeGetBrandsSuccessState(this.model);
}

class HomeGetProductsSuccessState extends HomeStates {
  ProductEntity model;

  HomeGetProductsSuccessState(this.model);
}

class HomeGetCategoriesSuccessState extends HomeStates {
  CategoryOrBrandEntity model;

  HomeGetCategoriesSuccessState(this.model);
}

class HomeGetBrandsErrorState extends HomeStates {
  Failures failures;

  HomeGetBrandsErrorState(this.failures);
}

class HomeGetProductsErrorState extends HomeStates {
  Failures failures;

  HomeGetProductsErrorState(this.failures);
}

class HomeGetCategoriesErrorState extends HomeStates {
  Failures failures;

  HomeGetCategoriesErrorState(this.failures);
}

class ChangeBottomNavBar extends HomeStates {}

class AddToCartLoadingState extends HomeStates {}

class AddToCartSuccessState extends HomeStates {}

class AddToCartErrorState extends HomeStates {
  Failures failures;

  AddToCartErrorState(this.failures);
}
