import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/networking/api_failure_state.dart';
import '../../../domain/models/explore_parking_model.dart';
import '../../../domain/repositories/parking_repository.dart';

part 'explore_parking_event.dart';
part 'explore_parking_state.dart';
part 'explore_parking_bloc.freezed.dart';

class ExploreParkingBloc
    extends Bloc<ExploreParkingEvent, ExploreParkingState> {
  final ParkingRepository _repository;
  ExploreParkingBloc(
    this._repository,
  ) : super(const _Initial()) {
    on<_GetData>((event, emit) async {
      emit(const ExploreParkingState.loading());
      final result = await _repository.getExploreParkings();
      result.match(
        (failure) => emit(ExploreParkingState.error(
          state: getApiFailureState(failure),
          message: failure.message,
        )),
        (data) => emit(ExploreParkingState.success(
          locations: data,
        )),
      );
    });
  }
}
