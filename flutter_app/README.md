# Flutter App — Splash, Login, Cadastro e Home

## Arquitetura

O projeto segue a separação em camadas:

```
lib/
├── main.dart
└── app/
    ├── models/
    │   └── usuario_model.dart       # Modelo de dados do usuário
    ├── data/
    │   └── usuario_mock_store.dart  # Singleton com a lista mockada em memória
    ├── viewmodels/
    │   ├── splash_viewmodel.dart    # Lógica do timer da splash
    │   ├── login_viewmodel.dart     # Lógica de autenticação
    │   └── signup_viewmodel.dart    # Lógica de cadastro
    └── views/
        ├── splash_page.dart         # Tela de splash
        ├── login_page.dart          # Tela de login
        ├── signup_page.dart         # Tela de cadastro
        └── home_page.dart           # Tela home
```

## Fluxo do App

1. **Splash** → exibida por 3 segundos → redireciona para Login
2. **Login** → valida e-mail e senha na lista mockada → sucesso vai para Home
3. **Cadastro** → formulário com validação → adiciona usuário à lista em memória → retorna ao Login
4. **Home** → exibe nome e e-mail do usuário logado → botão de logout

## Dados Mockados

Armazenados via Singleton (`UsuarioMockStore`). Um usuário padrão já existe:

- **E-mail:** `admin@email.com`
- **Senha:** `123456`

## Como rodar

```bash
flutter pub get
flutter run
```
