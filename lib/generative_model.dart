import 'dart:io';
import 'package:google_generative_ai/google_generative_ai.dart';

class GenerativeModelService {
  final GenerativeModel model;

  GenerativeModelService._(this.model);

  //requisição de serviço 
  static Future<GenerativeModelService> create() async {
    final apiKey = Platform.environment['API_KEY'];
    if (apiKey == null) {
      throw Exception('No \$API_KEY environment variable');
    }

    final model = GenerativeModel(model: 'gemini-1.5-flash', apiKey: "AIzaSyARlwWH_xoKl2SanGiiJWGBL9MMvb6q2ik");
    return GenerativeModelService._(model);
  }

  //função que permite gerar texto com baseando em uma imagem ou texto, mas será necessário conectar com a imagem da câmera 
  Future<String> generateTextFromImage(File image, String promptText) async {
    final imageBytes = await image.readAsBytes();

    final prompt = TextPart(promptText);
    final imagePart = DataPart('image/jpeg', imageBytes);

    final response = await model.generateContent([
      Content.multi([prompt, imagePart])
    ]);

    final generatedText = response.text;

    if (generatedText != null) {
      return generatedText;
    } else {
      throw Exception('Failed to generate text');
    }
  }
}
