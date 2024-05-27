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


  Future<String> generateTextFromImage(File image, String promptText) async {
    final imageBytes = await image.readAsBytes();

    final prompt = TextPart(promptText);
    //Given eu tenho uma imagem de um alimento
    final imagePart = DataPart('image/jpeg', imageBytes);

    final response = await model.generateContent([
      Content.multi([prompt, imagePart])
    ]);

   //When eu descrevo a imagem pelo gemini e imprimo a descrição
    final generatedText = response.text;

    //Then o resultado deve uma descrição do alimento
    if (generatedText != null) {
      return generatedText;
    } else { // Then o resultado deve imprimir uma mensagem que avise que não é um alimento
      throw Exception('Failed to generate text');
    }
  }
}


   
