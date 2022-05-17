part of 'user_details_bloc.dart';

@freezed
class UserDetailsEvent with _$UserDetailsEvent {
  const factory UserDetailsEvent.addUser({required UserModel model}) = AddUser;
  const factory UserDetailsEvent.updateUser({required UserModel newModel}) = UpdateUser;
  const factory UserDetailsEvent.getUser() = GetUser;
}