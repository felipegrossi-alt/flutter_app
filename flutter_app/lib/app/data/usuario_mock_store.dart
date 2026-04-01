import '../models/usuario_model.dart';

class UsuarioMockStore {
  static final UsuarioMockStore _instance = UsuarioMockStore._internal();
  factory UsuarioMockStore() => _instance;
  UsuarioMockStore._internal();

  final List<UsuarioModel> _usuarios = [
    UsuarioModel(nome: 'Admin', email: 'admin@email.com', senha: '123456'),
  ];

  List<UsuarioModel> get usuarios => _usuarios;

  void adicionar(UsuarioModel usuario) {
    _usuarios.add(usuario);
  }

  UsuarioModel? buscar(String email, String senha) {
    try {
      return _usuarios.firstWhere(
        (u) => u.email == email && u.senha == senha,
      );
    } catch (_) {
      return null;
    }
  }

  bool emailJaCadastrado(String email) {
    return _usuarios.any((u) => u.email == email);
  }
}
