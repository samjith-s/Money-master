part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({required bool isLogedIn}) = _LoginState;

  factory LoginState.initial()=>LoginState(isLogedIn: false);
}
