import 'package:flutter/material.dart';

import '../themes/app_theme.dart';



class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children:   [
          const ListTile(
            leading: Icon(Icons.photo_album_outlined , color: AppTheme.primary),
            title: Text('Soy un titulo'),
            subtitle: Text('Soy un subtitulo Largo, muy largo, muy largo, muy largo, muy largo, muy largo, muy largo, muy largo, muy largo, muy largo, muy largo, muy largo, muy largo'),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom( primary: Colors.blueGrey), 
                  child: const Text('Cancel'),
                  ),

                  TextButton(
                  onPressed: () {}, 
                  child: const Text('Ok')
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}