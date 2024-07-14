import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:route_event_task/features/home/presentation/manager/states.dart';

import '../../data/data_sources/home_data_sources.dart';
import '../../data/repositories/home_data_repo.dart';
import '../../domain/entities/entities/CategoryEntity.dart';
import '../../domain/entities/entities/ProductEntity.dart';
import '../../domain/entities/repositories/home_domain_repo.dart';
import '../../domain/entities/use_cases/get_categories_use_case.dart';
import '../../domain/entities/use_cases/get_products_use_case.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeDataSources homeDataSources;
  late HomeDomainRepo homeDomainRepo;

  HomeCubit(this.homeDataSources) : super(HomeInitState()) {
    homeDomainRepo = HomeDataRepo(homeDataSources);
  }

  static HomeCubit get(context) => BlocProvider.of(context);


  List<DataEntity> categories = [];
  List<ProductDataEntity> products = [];


  getProducts() async {
    emit(HomeLoadingState());
    GetProductsUseCase productsUseCase = GetProductsUseCase(homeDomainRepo);
    var result = await productsUseCase.call();
    result.fold((l) {
      emit(HomeGetProductsErrorState(l));
    }, (r) {
      products = r.data ?? [];
      print(products.length.toString());
      emit(HomeGetProductsSuccessState(r));
    });
  }


  getCategories() async {
    emit(HomeLoadingState());
    GetCategoriesUseCase getCategoriesUseCase =
    GetCategoriesUseCase(homeDomainRepo);
    var result = await getCategoriesUseCase.call();
    result.fold((l) {
      emit(HomeGetCategoriesErrorState(l));
    }, (r) {
      categories = r.data ?? [];
      emit(HomeGetCategoriesSuccessState(r));
    });
  }
}
