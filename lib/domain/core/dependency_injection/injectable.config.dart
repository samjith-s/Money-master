// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/categories/categories_bloc.dart' as _i7;
import '../../../application/transactions/transactions_bloc.dart' as _i8;
import '../../../infrastructure/categories/category_services_impl.dart' as _i4;
import '../../../infrastructure/transactions/transactions_services_impl.dart'
    as _i6;
import '../../categories/category_services.dart' as _i3;
import '../../transactions/transactions_services.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.CategoryServices>(() => _i4.CategoryServicesImpl());
  gh.lazySingleton<_i5.TransationServices>(() => _i6.TransactionServicesImpl());
  gh.factory<_i7.CategoriesBloc>(
      () => _i7.CategoriesBloc(get<_i3.CategoryServices>()));
  gh.factory<_i8.TransactionsBloc>(
      () => _i8.TransactionsBloc(get<_i5.TransationServices>()));
  return get;
}
