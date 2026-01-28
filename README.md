# ECOM 2026 (Flutter) — Fashion Storage

Aplicativo Flutter de e-commerce desenvolvido para fins de **estudo e portfólio**, com foco em arquitetura limpa, navegação organizada e boa experiência de usuário.



O projeto baseado na video aula do youtube https://www.youtube.com/watch?v=rX9kvw79kgk&t=1800s canal DEV LUCK que utiliza **GetX** para gerenciamento de estado, rotas e injeção de dependência, além de **GetStorage** para persistência local de preferências e dados simples.

---

## ✨ Funcionalidades

- Splash Screen com redirecionamento automático
- Onboarding para primeiro acesso
- Autenticação (Sign In / Sign Up)
- Home com vitrine de produtos
- Detalhes do produto
- Carrinho de compras
- Checkout
- Pedidos (My Orders)
- Perfil do usuário (Edit Profile)
- Configurações (Settings)
- Tema claro e escuro com persistência
- Compartilhamento de produtos
- Animações Lottie (ex: sucesso de compra)

---

## 🧱 Stack e Tecnologias

- Flutter
- Dart
- GetX
- GetStorage
- Google Fonts
- Lottie Animations

---

## 📦 Dependências

### Dependencies (`pubspec.yaml`)

- `cupertino_icons: ^1.0.6`
- `google_fonts: ^6.2.1`
- `get: ^4.6.6`
- `get_storage: ^2.1.1`
- `share_plus: ^10.1.3`
- `lottie: ^2.7.0`

### Dev Dependencies

- `flutter_test`
- `flutter_lints: ^6.0.0`

---

## 🗂️ Estrutura de Pastas

```text
lib/
 ├─ controllers/
 ├─ features/
 │   ├─ checkout/
 │   ├─ edit_profile/
 │   ├─ my_orders/
 │   ├─ privacy_policy/
 │   ├─ shipping_address/
 │   ├─ term_of_service/
 │   └─ widgets/
 ├─ models/
 ├─ utils/
 └─ main.dart

assets/
 ├─ animations/
 └─ images/
```

---

## 🖼️ Assets

Os assets estão configurados no `pubspec.yaml`:

- `assets/animations/`
- `assets/images/`

---

## ▶️ Como Executar o Projeto

### Pré-requisitos

- Flutter instalado (`flutter doctor`)
- Android Studio ou outro emulador configurado
- VS Code (opcional)

### Passos

```bash
git clone <URL_DO_REPOSITORIO>
cd ecom_2026
flutter pub get
flutter run
```

---

## 🧪 Observações Técnicas

- O estado da aplicação é gerenciado em memória via GetX.
- Preferências do usuário (ex: tema) são persistidas localmente com GetStorage.
- O projeto não depende de backend real, sendo ideal para testes, estudos e evolução futura.

---

## 🚀 Possíveis Evoluções

- Integração com API REST
- Autenticação real (Firebase / OAuth)
- Persistência de carrinho em backend
- Testes unitários e de widgets
- Internacionalização (i18n)

---

## 📄 Licença

Projeto desenvolvido para fins educacionais e de portfólio.
