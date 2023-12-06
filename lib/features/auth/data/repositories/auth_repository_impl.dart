import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../core/db/user_secure_db.dart';
import '../../../../core/networking/networking.dart';
import '../../domain/models/user_model.dart';

import '../../domain/repositories/repositories.dart';
import '../datasources/datasources.dart';

class AuthRepositoryImpl implements AuthRepository {
  final UserSecureDb _db;
  AuthRepositoryImpl(this._db);

  AuthRemoteDatasource _remoteDatasource() {
    return AuthRemoteDatasource(
      ApiClient(useToken: true).instance,
      baseUrl: baseUrl,
    );
  }

  @override
  Future<Either<Failure, String>> login({
    required String phoneNumber,
    required String password,
  }) async {
    try {
      final result = await _remoteDatasource().login(
        phoneNumber: phoneNumber,
        password: password,
      );
      final auth = result.data![0];
      final accessToken = '${auth.tokenType} ${auth.token}';

      await _db.upsertTokens(token: accessToken);

      return Right(accessToken);
    } on DioException catch (e) {
      return Either.left(getUnexpectedFailure(e));
    } catch (e) {
      return Left(RequestFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserModel>> show() async {
    try {
      final result = await _remoteDatasource().show();
      return Right(result.data!.first.toDomain());
    } on DioException catch (e) {
      return Either.left(getUnexpectedFailure(e));
    } catch (e) {
      return Left(RequestFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> logout() async {
    try {
      final result = await _remoteDatasource().logout();

      await _db.deleteUserInfo();

      return Right(result);
    } on DioException catch (e) {
      return Either.left(getUnexpectedFailure(e));
    } catch (e) {
      return Left(RequestFailure(e.toString()));
    }
  }
}
