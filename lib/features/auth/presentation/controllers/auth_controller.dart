// ============================================
// FICHEIRO: auth_controller.dart
//
// OBJETIVO:
// Controla o estado e ações de autenticação
//
// RESPONSABILIDADES:
// - Guardar o estado atual (User logado, loading, erro)
// - Executar ações (login, register, logout)
// - Notificar a UI quando o estado muda
// ============================================

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/user.dart';
import '../../domain/usecases/login_user.dart';
import '../../domain/usecases/register_user.dart';
import '../../domain/usecases/logout_user.dart';
import '../../domain/usecases/get_current_user.dart';
import '../providers/auth_providers.dart';

// Ficheiro gerado automaticamente pelo build_runner
part 'auth_controller.g.dart';

// ============================================
// CLASSE: AuthController
// ============================================
//
// EXTENDS: AsyncNotifier<User?>
// - AsyncNotifier permite trabalhar com operações assíncronas
// - <User?> define o tipo de estado (User ou null)
//
// ESTADO POSSÍVEL:
// - null = Nenhum utilizador logado
// - User = Utilizador logado com sucesso
//
// ESTADOS AUTOMÁTICOS DO AsyncNotifier:
// - loading = A processar operação
// - data = Operação concluída com sucesso
// - error = Operação falhou com erro
// ============================================
@riverpod
class AuthController extends _$AuthController {
  // ============================================
  // MÉTODO: build()
  // ============================================
  //
  // OBJETIVO:
  // Define o estado inicial do controller
  //
  // QUANDO É CHAMADO:
  // - Quando o controller é criado pela primeira vez
  // - Automaticamente pelo Riverpod
  //
  // O QUE FAZ:
  // 1. Obtém o use case GetCurrentUser dos providers
  // 2. Tenta obter o utilizador atualmente logado
  // 3. Retorna o User (se existir) ou null (se não existir)
  //
  // RETORNO:
  // - Future<User?> porque é assíncrono
  // ============================================
  @override
  Future<User?> build() async {
    // 1. Obter o use case GetCurrentUser dos providers
    final GetCurrentUser getCurrentUserUseCase = ref.watch(
      getCurrentUserProvider,
    );

    // 2. Tentar obter o user atual
    // Se não houver user logado, retorna null
    // Se houver erro, retorna null também
    try {
      final user = await getCurrentUserUseCase.call();
      return user;
    } catch (e) {
      // Se não houver user ou der erro, retorna null
      return null;
    }
  }

  // ============================================
  // MÉTODO: login()
  // ============================================
  //
  // OBJETIVO:
  // Executar o login de um utilizador
  //
  // PARÂMETROS:
  // - email: Email do utilizador
  // - password: Password do utilizador
  //
  // FLUXO:
  // 1. Muda estado para loading (mostra loading na UI)
  // 2. Obtém o use case LoginUser dos providers
  // 3. Executa o login usando try-catch
  // 4. Se sucesso: guarda User no estado
  // 5. Se erro: guarda erro no estado
  // 6. UI atualiza automaticamente!
  //
  // RETORNO:
  // - Future<void> (não retorna nada, guarda no state)
  // ============================================
  Future<void> login(String email, String password) async {
    // 1. Mudar o estado para loading
    // Isto faz a UI mostrar um loading indicator
    state = const AsyncValue.loading();

    // 2. Obter o use case LoginUser dos providers
    final LoginUser loginUserUseCase = ref.read(loginUserProvider);

    // 3. Executar o login usando try-catch
    try {
      // Executar o login
      final user = await loginUserUseCase.call(
        email: email,
        password: password,
      );

      // Se chegou aqui, o login teve sucesso!
      // Guardar o User no estado
      state = AsyncValue.data(user);
    } catch (e, stackTrace) {
      // Se caiu aqui, houve um erro!
      // Guardar o erro no estado
      // A UI vai mostrar a mensagem de erro
      state = AsyncValue.error(e, stackTrace);
    }
  }

  // ============================================
  // MÉTODO: logout()
  // ============================================
  Future<void> logout() async {
    state = const AsyncValue.loading();
    try {
      final logoutUserUseCase = ref.read(logoutUserProvider);
      await logoutUserUseCase.call();
      state = const AsyncValue.data(null);
    } catch (e, stackTrace) {
      state = AsyncValue.error(e, stackTrace);
    }
  }
}
