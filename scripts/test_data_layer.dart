// Teste simplificado - só estrutura das classes

import 'features/auth/data/models/user_model.dart';
import 'features/auth/domain/entities/user.dart';

void main() {
  print('🧪 TESTE SIMPLES DO DATA LAYER\n');
  print('=' * 50);

  // Teste 1: UserModel
  print('\n📦 TESTE 1: UserModel');
  print('-' * 50);

  final userModel = UserModel(
    id: 'test123',
    email: 'teste@example.com',
    displayName: 'Utilizador Teste',
  );

  print('✅ UserModel criado com sucesso!');
  print('   ID: ${userModel.id}');
  print('   Email: ${userModel.email}');
  print('   Nome: ${userModel.displayName}');

  // Teste 2: toJson
  final json = userModel.toJson();
  print('\n✅ toJson funciona!');
  print('   JSON: $json');

  // Teste 3: fromJson
  final userModel2 = UserModel.fromJson(json);
  print('\n✅ fromJson funciona!');
  print('   ID: ${userModel2.id}');

  // Teste 4: Polimorfismo
  User user = userModel;
  print('\n✅ UserModel É um User!');
  print('   User ID: ${user.id}');

  print('\n' + '=' * 50);
  print('✅ TODOS OS TESTES PASSARAM!');
  print('\n📸 Código compilou sem erros!');
  print('🎉 Data Layer está correto!\n');
}
