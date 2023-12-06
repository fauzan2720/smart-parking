import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/networking/api_failure_state.dart';
import '../../../domain/models/user_model.dart';
import '../../../domain/repositories/repositories.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _repository;
  AuthBloc(
    this._repository,
  ) : super(const _Initial()) {
    on<_Login>((event, emit) async {
      emit(const AuthState.loading());
      final result = await _repository.login(
        phoneNumber: event.phoneNumber,
        password: event.password,
      );
      result.match(
        (failure) => emit(AuthState.error(
          state: getApiFailureState(failure),
          message: failure.message,
        )),
        (data) => add(const _GetData()),
      );
    });

    on<_GetData>((event, emit) async {
      emit(const AuthState.loading());
      final result = await _repository.show();
      result.match(
        (failure) => emit(AuthState.error(
          state: getApiFailureState(failure),
          message: failure.message,
        )),
        (data) => emit(AuthState.success(
          data: data,
        )),
      );
    });

    on<_Logout>((event, emit) async {
      emit(const AuthState.loading());
      final result = await _repository.logout();
      result.match(
        (failure) => emit(AuthState.error(
          state: getApiFailureState(failure),
          message: failure.message,
        )),
        (data) => emit(const AuthState.initial()),
      );
    });
  }
}
