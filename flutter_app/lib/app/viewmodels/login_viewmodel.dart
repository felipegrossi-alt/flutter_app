import '../data/usuario_mock_store.dart';
import '../models/usuario_model.dart';

class LoginViewModel {
  final _store = UsuarioMockStore();

  UsuarioModel? autenticar(String email, String senha) {
    return _store.buscar(email.trim(), senha);
  }
}
