import 'dart:io';
import 'package:mockito/mockito.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class MockGenerativeModel extends Mock implements GenerativeModel {}
class MockFile extends Mock implements File {}

void main() {
  group('GenerativeModelService', () {
    late MockGenerativeModel mockGenerativeModel;
    late GenerativeModelService service;
    late MockFile mockFile;

    setUp(() {
      mockGenerativeModel = MockGenerativeModel();
      service = GenerativeModelService._(mockGenerativeModel);
      mockFile = MockFile();
    });

    test('create lança exceção se API_KEY não estiver definida', () {
      expect(() async => await GenerativeModelService.create(), throwsException);
    });

    test('create retorna instância se API_KEY estiver definida', () async {
      // Mockar a variável de ambiente
      Platform.environment['API_KEY'] = 'chave_api_teste';
      
      // Criar o serviço
      final service = await GenerativeModelService.create();
      
      expect(service, isA<GenerativeModelService>());
    });

    test('generateTextFromImage retorna texto gerado', () async {
      final fakeImageBytes = [1, 2, 3, 4];
      when(mockFile.readAsBytes()).thenAnswer((_) async => fakeImageBytes);

      final mockResponse = ContentResponse(text: 'Texto Gerado');
      when(mockGenerativeModel.generateContent(any)).thenAnswer((_) async => mockResponse);

      final result = await service.generateTextFromImage(mockFile, 'Texto de Prompt');

      expect(result, 'Texto Gerado');
    });

    test('generateTextFromImage lança exceção quando o texto é nulo', () async {
      final fakeImageBytes = [1, 2, 3, 4];
      when(mockFile.readAsBytes()).thenAnswer((_) async => fakeImageBytes);

      final mockResponse = ContentResponse();
      when(mockGenerativeModel.generateContent(any)).thenAnswer((_) async => mockResponse);

      expect(() async => await service.generateTextFromImage(mockFile, 'Texto de Prompt'), throwsException);
    });
  });
}
