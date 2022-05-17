part of 'allrounder_bloc.dart';

@freezed
class AllrounderState with _$AllrounderState {
  const factory AllrounderState({
    required bool showHomeScreenSearchBar,
    required bool showHomeDatePickerHint,
    required int bottomNavIndex,
  }) = _AllrounderState;

  factory AllrounderState.initial() => const AllrounderState(
        showHomeScreenSearchBar: false,
        showHomeDatePickerHint: true,
        bottomNavIndex: 0,
      );
}
