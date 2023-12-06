import 'package:fpdart/fpdart.dart';

import '../../../../core/networking/networking.dart';
import '../models/models.dart';

abstract class AuthRepository {
  Future<Either<Failure, String>> login({
    required String phoneNumber,
    required String password,
  });
  Future<Either<Failure, UserModel>> show();
  Future<Either<Failure, String>> logout();
}
