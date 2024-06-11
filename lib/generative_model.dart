import 'dart:io';
import 'package:google_generative_ai/google_generative_ai.dart';

class GenerativeModelService {
  final GenerativeModel model;

  GenerativeModelService._(this.model);

  static Future<GenerativeModelService> create() async {
    final apiKey = Platform.environment['API_KEY'];
    if (apiKey == null) {
      throw Exception('No \$API_KEY environment variable');
    }

    final model = GenerativeModel(
        model: 'gemini-1.5-flash',
        apiKey: apiKey);
    return GenerativeModelService._(model);
  }

  Future<String> generateTextFromImage(File image) async {
    final imageBytes = await image.readAsBytes();

    final imageType = _getImageType(image.path);
    final prompt = DataPart(imageType, imageBytes);

    try {
      final response = await model.generateContent([
        Content.single(prompt)
      ]);

      final generatedText = response.text;

      if (generatedText != null && generatedText.isNotEmpty) {
        return generatedText;
      } else {
        throw Exception('A resposta gerada está vazia.');
      }
    } catch (e) {
      print('Erro ao gerar texto: $e');
      throw Exception('Erro ao gerar texto: $e');
    }
  }

  String _getImageType(String imagePath) {
    // Identificar o tipo de imagem com base na extensão do arquivo
    final extension = imagePath.split('.').last.toLowerCase();
    switch (extension) {
      case 'jpg':
      case 'jpeg':
        return 'image/jpeg';
      case 'png':
        return 'image/png';
      case 'gif':
        return 'image/gif';
      // Adicione mais tipos de imagem conforme necessário
      default:
        throw Exception('Tipo de imagem não suportado: $extension');
    }
  }
}










