import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType3 extends StatelessWidget {

  //Declarar una variable que cambiará las propiedades de la widget
  final String imageURL;
  final String? descripcion;

  const CustomCardType3({
    super.key, required this.imageURL, this.descripcion,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(25)),            
      elevation: 10,
      shadowColor: AppTheme.primary,            

      child: Column(
        children: [
          /*Image(
            image:NetworkImage('https://www.okchicas.com/wp-content/uploads/2015/02/Conejitos-1.jpg')
          )*/
          FadeInImage(
          placeholder: const AssetImage('assets/banana-loading.gif'), 
          image: NetworkImage(imageURL),
          width:double.infinity,
          height: 240,
          fit: BoxFit.cover,
          fadeInDuration: const Duration(milliseconds: 300),
          ),
          // ignore: avoid_unnecessary_containers
          if (descripcion != null)
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: Text(descripcion??'<sin dato>'),
          )
        ],
      ),
    );
  }
}