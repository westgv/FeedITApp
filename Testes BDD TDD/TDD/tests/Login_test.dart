import 'package:flutter_test/flutter_test.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_3/login/login.dart';
import 'package:mockito/mockito.dart';

// Mock da classe FirebaseAuth para simular o comportamento durante os testes
class MockFirebaseAuth extends Mock implements FirebaseAuth {}

void main() {
  group('LoginPage', () {
    late MockFirebaseAuth mockFirebaseAuth;
    late LoginPage loginPage;

    setUp(() {
      mockFirebaseAuth = MockFirebaseAuth();
      loginPage = LoginPage();
    });

    test('Teste de login bem-sucedido', () async {
      // Configuração do mock para retornar um usuário atual válido ao fazer login
      when(mockFirebaseAuth.signInWithEmailAndPassword(
        email: anyNamed('email'),
        password: anyNamed('password'),
      )).thenAnswer((_) async => UserCredential(
            additionalUserInfo: AdditionalUserInfo(isNewUser: false),
            user: User(uid: 'test_uid'),
          ));

      // Inicialização dos controladores de texto
      loginPage.emailController.text = 'test@example.com';
      loginPage.passwordController.text = 'testpassword';

      // Simula o pressionamento do botão de login
      loginPage._loginUser(MockBuildContext());

      // Aguarda a execução da função assíncrona de login
      await untilCalled(mockFirebaseAuth.signInWithEmailAndPassword(
        email: anyNamed('email'),
        password: anyNamed('password'),
      ));

      // Verifica se o método signInWithEmailAndPassword foi chamado com os argumentos corretos
      verify(mockFirebaseAuth.signInWithEmailAndPassword(
        email: 'test@example.com',
        password: 'testpassword',
      )).called(1);

      // Verifica se a página de login foi substituída pela página DinoScreen após o login bem-sucedido
      // Aqui você precisa de uma maneira de verificar a navegação, dependendo da sua implementação específica de navegação
    });

    test('Teste de login mal-sucedido', () async {
      // Configuração do mock para lançar uma exceção ao fazer login
      when(mockFirebaseAuth.signInWithEmailAndPassword(
        email: anyNamed('email'),
        password: anyNamed('password'),
      )).thenThrow(Exception('Login falhou'));

      // Inicialização dos controladores de texto
      loginPage.emailController.text = 'test@example.com';
      loginPage.passwordController.text = 'testpassword';

      // Simula o pressionamento do botão de login
      loginPage._loginUser(MockBuildContext());

      // Aguarda a execução da função assíncrona de login
      await untilCalled(mockFirebaseAuth.signInWithEmailAndPassword(
        email: anyNamed('email'),
        password: anyNamed('password'),
      ));

      // Verifica se o método signInWithEmailAndPassword foi chamado com os argumentos corretos
      verify(mockFirebaseAuth.signInWithEmailAndPassword(
        email: 'test@example.com',
        password: 'testpassword',
      )).called(1);

      // Aqui você pode adicionar verificações adicionais com base na sua implementação específica de tratamento de erros
    });
  });
}

// Mock de BuildContext para uso nos testes
class MockBuildContext extends Mock implements BuildContext {}
