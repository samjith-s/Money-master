import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:money_manager/domain/user/model/user_model.dart';

part 'user_details_event.dart';
part 'user_details_state.dart';
part 'user_details_bloc.freezed.dart';

class UserDetailsBloc extends Bloc<UserDetailsEvent, UserDetailsState> {
  UserDetailsBloc() : super(UserDetailsState.initial()) {
    String userDbName = 'user_database';
    on<AddUser>((event, emit) async {
      final userDb = await Hive.openBox<UserModel>(userDbName);
      userDb.put(9, event.model);
      add(const UserDetailsEvent.getUser());
    });
    on<UpdateUser>((event, emit) async {
      final userDb = await Hive.openBox<UserModel>(userDbName);
      userDb.put(9, event.newModel);
      add(const UserDetailsEvent.getUser());
    });
    on<GetUser>((event, emit) async {
      final userDb = await Hive.openBox<UserModel>(userDbName);
      emit(state.copyWith(model: userDb.values.first));
    });
  }
}
