import 'package:catstagram/homepage/models/cat.dart';
import 'package:catstagram/homepage/repositories/cat_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cat_overview_cubit.freezed.dart';

class CatOverviewCubit extends Cubit<CatOverviewState> {
  CatOverviewCubit(this.catRepository) : super(const _Initial());

  final CatRepository catRepository;

  // This cubit is missing a call to the repository
}

@freezed
class CatOverviewState with _$CatOverviewState {
  const factory CatOverviewState.initial() = _Initial;
  const factory CatOverviewState.loading() = _Loading;
  const factory CatOverviewState.result(List<Cat> cats) = _Result;
  const factory CatOverviewState.failed() = _Failed;
}
