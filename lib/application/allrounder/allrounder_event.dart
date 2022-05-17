part of 'allrounder_bloc.dart';

@freezed
class AllrounderEvent with _$AllrounderEvent {
  const factory AllrounderEvent.navigate({required int pageIndex}) = Navigate;
  const factory AllrounderEvent.changeDateHintvisibility(
      {required bool visibility}) = ChangeDateHintvisibility;
      const factory AllrounderEvent.changeSearchBarVisibility(
      {required bool visibility}) = ChangeSearchBarVisibility;
}
