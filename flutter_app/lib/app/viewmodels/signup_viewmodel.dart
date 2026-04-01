import '../data/usuario_mock_store.dart';
import '../models/usuario_model.dart';

class SignupViewModel {
  final _store = UsuarioMockStore();

  /// Retorna null se sucesso, ou mensagem de erro
  String? cadastrar(String nome, String email, String senha) {
    if (_store.emailJaCadastrado(email.trim())) {
      return 'E-mail já cadastrado.';
    }
    _store.adicionar(
      UsuarioModel(nome: nome.trim(), email: email.trim(), senha: senha),
    );
    return null;
  }
}
