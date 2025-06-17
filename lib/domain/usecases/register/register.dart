import 'package:flix_id/data/repositories/auth_repository.dart';
import 'package:flix_id/domain/entities/result/result.dart';
import 'package:flix_id/domain/usecases/usecase.dart';

import '../../../data/repositories/user_repository.dart';
import '../../entities/user/user.dart';
import 'register_param.dart';

class Register implements UseCase<Result<User>, RegisterParam> {
  final AuthRepository _authRepository;
  final UserRepository _userRepository;

  Register({
    required AuthRepository authRepository,
    required UserRepository userRepository,
  }) : _authRepository = authRepository,
       _userRepository = userRepository;

  @override
  Future<Result<User>> call(RegisterParam params) async {
    Result<String> uidResult = await _authRepository.register(
      email: params.email,
      password: params.password,
    );
    if (uidResult.isSuccess) {
      Result<User> userResult = await _userRepository.createdUser(
        uid: uidResult.resultValue!,
        email: params.email,
        name: params.name,
        photoUrl: params.photoUrl,
      );
      if (userResult.isSuccess) {
        return Result.success(userResult.resultValue!);
      } else {
        return Result.failed(userResult.errorMessage!);
      }
    } else {
      return Result.failed(uidResult.errorMessage!);
    }
  }
}
