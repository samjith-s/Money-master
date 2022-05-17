part of 'user_details_bloc.dart';

@freezed
class UserDetailsState with _$UserDetailsState {
  const factory UserDetailsState({required UserModel model}) =
      _UserDetailsState;

  factory UserDetailsState.initial() =>
      UserDetailsState(model: UserModel(name: '', mobile: '', image: ''));
}
