import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/networking/networking.dart';
import '../../../domain/models/models.dart';
import '../../../domain/repositories/repositories.dart';

part 'vehicle_event.dart';
part 'vehicle_state.dart';
part 'vehicle_bloc.freezed.dart';

class VehicleBloc extends Bloc<VehicleEvent, VehicleState> {
  final VehicleRepository _repository;
  VehicleBloc(
    this._repository,
  ) : super(const _Initial()) {
    {
      on<_GetData>((event, emit) async {
        emit(const VehicleState.loading());
        final result = await _repository.getVehicles();
        result.match(
          (failure) => emit(VehicleState.error(
            state: getApiFailureState(failure),
            message: failure.message,
          )),
          (data) => emit(VehicleState.success(
            locations: data,
          )),
        );
      });
    }
  }
}
