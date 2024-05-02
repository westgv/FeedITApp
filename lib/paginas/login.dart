import 'package:flutter/material.dart';


class Login extends StatelessWidget {
    const Login({super.key});

    @override Widget build(BuildContext context) {
        return MaterialApp(
                theme : ThemeData.dark().copyWith(scaffoldBackgroundColor : const Color.fromARGB(255, 18, 32, 47),),
                home : Scaffold(body : ListView(children : [Iphone820()]),),
            );
        }
    }

    class Iphone820 extends StatelessWidget {
        @override Widget build(BuildContext context) {
            return Column(
                                            children : [Container(
                                                    width : 405,
                                                    height : 900,
                                                    clipBehavior : Clip.antiAlias,
                                                    decoration : const BoxDecoration(
                                gradient : LinearGradient(begin : Alignment(0.00, -1.00), end : Alignment(0, 1), colors : [
                                    Color(0xFF0084FF), Colors.white, Color(0xFF2ACB01), Color(0xFF22A401)
                                ],),
                            ),
                                                    child : Stack(
                                                        children : [
                                                            Positioned(
                                        left : 0,
                                        top : 0,
                                        child : Container(
                                            width : 400,
                                            height : 900,
                                            decoration : const BoxDecoration(
                                                image : DecorationImage(image : AssetImage("assets/tela_login.png"), fit : BoxFit.cover,),
                                            ),
                                        ),
                                    ),
                                    Positioned(
                                                                left : 67,
                                                                top : 83,
                                                                child : Container(width : 242.79, height : 87.53, child : Stack(children : [
                                                                    Positioned(left : 0, top : 34.57, child : Transform(
                                                    transform : Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-0.49),
                                                    child : const Text('f', style : TextStyle(
                                                        color : Color(0xFFFF0000),
                                                        fontSize : 50,
                                                        fontFamily : 'Zen Dots',
                                                        fontWeight : FontWeight.w400,
                                                        height : 0,
                                                    ), ),
                                                ),),
                                                Positioned(left : 38.24, top : 15.20, child : Transform(
                                                        transform : Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-0.28),
                                                        child : const Text('e', style : TextStyle(
                                                            color : Color(0xFFFF8A00),
                                                            fontSize : 50,
                                                            fontFamily : 'Zen Dots',
                                                            fontWeight : FontWeight.w400,
                                                            height : 0,
                                                        ),),
                                                    ),),
                                                    Positioned(left : 91.64, top : 1.69, child : Transform(
                                                            transform : Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-0.04),
                                                            child : const Text('e', style : TextStyle(
                                                                color : Color(0xFFFFE500),
                                                                fontSize : 50,
                                                                fontFamily : 'Zen Dots',
                                                                fontWeight : FontWeight.w400,
                                                                height : 0,
                                                            ),),
                                                        ),),
                                                        Positioned(left : 146.47, top : 1.22, child : Transform(
                                                                transform : Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.19),
                                                                child : const Text('d', style : TextStyle(
                                                                    color : Color(0xFF61FF00),
                                                                    fontSize : 50,
                                                                    fontFamily : 'Zen Dots',
                                                                    fontWeight : FontWeight.w400,
                                                                    height : 0,
                                                                ),),
                                                            ),),
                                                            Positioned(left : 194.90, top : 12.55, child : Transform(
                                                                    transform : Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.35),
                                                                    child : const Text('l', style : TextStyle(
                                                                        color : Color(0xFF0019FF),
                                                                        fontSize : 50,
                                                                        fontFamily : 'Zen Dots',
                                                                        fontWeight : FontWeight.w400,
                                                                        height : 0,
                                                                    ),),
                                                                ),),
                                                                Positioned(left : 217.19, top : 20.94, child : Transform(
                                                                        transform : Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.49),
                                                                        child : const Text('t', style : TextStyle(
                                                                            color : Color(0xFFAD00FF),
                                                                            fontSize : 50,
                                                                            fontFamily : 'Zen Dots',
                                                                            fontWeight : FontWeight.w400,
                                                                            height : 0,
                                                                        ),),
                                                                    ),)
                                                                ],),),
                                                            ),
                                                            Positioned(
                                                                left : 52,
                                                                top : 199,
                                                                child : Container(
                                                                    width : 216,
                                                                    height : 256,
                                                                    decoration : const BoxDecoration(image : DecorationImage(image : AssetImage("assets/sao_camilo.png"), fit : BoxFit.cover,),),
                                                                ),
                                                            ),
                                                            Center(
                                                              child: Positioned(
                                                                  left : 56,
                                                                  top : 532,
                                                                  child : Container(width : 248, height : 45, decoration : ShapeDecoration(
                                                                      color : Color(0x7FD9D9D9),
                                                                      shape : RoundedRectangleBorder(borderRadius : BorderRadius.circular(50),),
                                                                  ),),
                                                              ),
                                                            ),
                                                            Positioned(
                                                                left : 56,
                                                                top : 461,
                                                                child : Container(width : 248, height : 45, decoration : ShapeDecoration(
                                                                    color : Color(0x7FD9D9D9),
                                                                    shape : RoundedRectangleBorder(borderRadius : BorderRadius.circular(50),),
                                                                ),),
                                                            ),
                                                            Positioned(
                                                                left : 56,
                                                                top : 603,
                                                                child : Container(width : 248, height : 45, decoration : ShapeDecoration(
                                                                    color : Color(0xFFFFE041),
                                                                    shape : RoundedRectangleBorder(borderRadius : BorderRadius.circular(50),),
                                                                ),),
                                                            ),
                                                            Positioned(
                                                                left : 56,
                                                                top : 603,
                                                                child : Container(width : 248, height : 45, child : Stack(children : [
                                                                    Positioned(
                                                                        left : 0,
                                                                        top : 0,
                                                                        child : Container(width : 248, height : 45, decoration : ShapeDecoration(
                                                                            color : Color(0xFFFFE041),
                                                                            shape : RoundedRectangleBorder(borderRadius : BorderRadius.circular(50),),
                                                                        ),),
                                                                    ),
                                                                    const Positioned(left : 77, top : 10, child : Text('JOGAR', style : TextStyle(
                                                                        color : Colors.black,
                                                                        fontSize : 20,
                                                                        fontFamily : 'Zen Dots',
                                                                        fontWeight : FontWeight.w400,
                                                                        height : 0,
                                                                    ),),)
                                                                ],),),
                                                            ),
                                                            Positioned(
                                                                left : 316,
                                                                top : 20,
                                                                child : Container(
                                                                    width : 39,
                                                                    height : 40,
                                                                    decoration : const BoxDecoration(
                                                                        image : DecorationImage(image : AssetImage("assets/sao_camilo.png"), fit : BoxFit.fill,),
                                                                    ),
                                                                ),
                                                            )
                                                        ],
                                                    ),
                                                )],
                                        );
                                    }
                                }