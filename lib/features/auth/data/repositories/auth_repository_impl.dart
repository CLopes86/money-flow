// Repository Implementation - Implementa a interface do Domain usando DataSource

import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_datasource.dart';
import '../models/user_model.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource dataSource;

  AuthRepositoryImpl(this.dataSource);

  @override
  Future<User> login({required String email, required String password}) async {
    final userCredential = await dataSource.signIn(
      email: email,
      password: password,
    );

    final userModel = UserModel.fromFirebase(userCredential.user!);

    return userModel;
  }

  @override
  Future<User> register({
    required String email,
    required String password,
    String? displayName,
  }) async {
    final userCredential = await dataSource.createUser(
      email: email,
      password: password,
    );

    if (displayName != null) {
      await userCredential.user!.updateDisplayName(displayName);
    }

    final userModel = UserModel.fromFirebase(userCredential.user!);

    return userModel;
  }

  @override
  Future<void> logout() async {
    await dataSource.signOut();
  }

  @override
  Future<User?> getCurrentUser() async {
    final firebaseUser = dataSource.getCurrentUser();

    if (firebaseUser == null) {
      return null;
    }

    final userModel = UserModel.fromFirebase(firebaseUser);

    return userModel;
  }
}
