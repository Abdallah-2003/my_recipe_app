part of 'details_cubit.dart';

sealed class DetailsState {}

final class DetailsInitial extends DetailsState {}
final class DetailsLoading extends DetailsState {}
final class DetailsFailure extends DetailsState {
  final String msg;

  DetailsFailure({required this.msg});
}
final class DetailsSuccess extends DetailsState {
  final DetailModel details;

  DetailsSuccess({required this.details});
}
