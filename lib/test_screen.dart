import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 40),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Image.asset('assets/images/monedero_plus_ic.png',width: 156, height: 23),
            Padding(
              padding: EdgeInsets.only(top: 54),
              child: Text(
                'Bienvenido',
                style: TextStyle(
                    color: Color(0xff2F2F30),
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 7)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'L*** G******* C****',
                  style: TextStyle(
                      color: Color(0xff2F2F30),
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                Padding(padding: EdgeInsets.only(right: 10)),
                Icon(Icons.cancel, color: Color.fromARGB(255, 186, 189, 186)),
              ],
            ),
            Text(
              '¿No eres tú?',
              style: TextStyle(
                  color: Color(0xff001588),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.underline),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Text(
              '10 de Marzo, 2023',
              style: TextStyle(
                  color: Color(0xff2F2F30).withOpacity(0.5),
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
            Padding(padding: EdgeInsets.only(top: 21)),
            Padding(
              padding: EdgeInsets.only(left: 28, right: 28, bottom: 150),
              child: Text(
                'Estimado cliente, verifique que las iniciales sean correctas previo a ingresar a su cuenta.',
                style: TextStyle(
                    color: Color(0xff2F2F30).withOpacity(0.8),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
            InkWell(
                child: Container(
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(15.0),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: const Color(0xff26CB8E)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        if(Platform.isIOS) ... {
                          BiometricsCard()
                        } 
                        else if(Platform.isAndroid) ...{
                          BiometricsCard()
                        }
                      
                      ],
                    ))),
            Padding(padding: EdgeInsets.only(top: 40))
          ],
        ));
  }
}

class BiometricsCard extends StatefulWidget {


  BiometricsCard({super.key});

  @override
  State<BiometricsCard> createState() => _BiometricsCard();
}

class _BiometricsCard extends State<BiometricsCard> {

  @override
  Widget build(BuildContext context) {
              return(
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                            Text(
                            "Ingresar con face id".toUpperCase(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w400))
                    
                    ]
            ));
  }
}