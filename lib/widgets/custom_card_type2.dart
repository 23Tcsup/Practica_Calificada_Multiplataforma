import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({
    super.key,
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
            image:NetworkImage('https://emprendedores.es/wp-content/uploads/mascotas-1024x576.jpg')
          )*/
          const FadeInImage(
          placeholder: AssetImage('assets/banana-loading.gif'), 
          image: NetworkImage('https://emprendedores.es/wp-content/uploads/mascotas-1024x576.jpg'),
          width:double.infinity,
          height: 240,
          fit: BoxFit.cover,
          fadeInDuration: Duration(milliseconds: 300),
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: const Text('Perrito y gatito jugando juntos'),
          )
        ],
      ),
    );
  }
}