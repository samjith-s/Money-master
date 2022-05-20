import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'allrounder_event.dart';
part 'allrounder_state.dart';
part 'allrounder_bloc.freezed.dart';

class AllrounderBloc extends Bloc<AllrounderEvent, AllrounderState> {
  AllrounderBloc() : super(AllrounderState.initial()) {
    on<Navigate>((event, emit) {
      emit(state.copyWith(bottomNavIndex: event.pageIndex));
    });
    on<ChangeDateHintvisibility>((event, emit) {
      emit(state.copyWith(showHomeDatePickerHint: event.visibility));
    });
    on<ChangeSearchBarVisibility>((event, emit) {
      emit(state.copyWith(showHomeScreenSearchBar: event.visibility));
    });
    on<TurnOnApplock>((event, emit) {
      emit(state.copyWith(isApplockenabled: event.isApplockenabled));
    });
    on<TurnOnNotification>((event, emit) {
      emit(state.copyWith(isNotificationOn: event.isNotificationOn));
    });

  }
}
