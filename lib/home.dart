// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';
import 'supplemental/asymmetric_view.dart';

class HomePage extends StatelessWidget {
  
  const HomePage({Key? key}) : super(key: key);


    static List<String> imagePaths = [
    'assets/klee1.png',
    'assets/femboy.png',
    'assets/jantung.png',
    'assets/hati.png',
    'assets/rasis.png',
    'assets/otak.png',
    'assets/botol.png',
    'assets/pancreas.png',
    'assets/ginjal.png',
    'assets/hplaury.png',
    'assets/iwak.png',

  ];

      static List<String> titles = [
    'Bocil Meledak',
    'Jenis Kelamin Ketiga',
    'Jantung Laury',
    'Hati Laury',
    'Bocil Rasis',
    'Otak Laury',
    'Botol Laury',
    'Pancreas Laury',
    'Ginjal Laury',
    'HP Laury S24 Ultra',
    'IWAK',
  ];

    static List<String> texts = [
    'Rp10.000.000',
    'Rp120.000.000',
    'Rp1.000',
    'Rp10.000.000.000.000',
    'Rp100',
    'Rp5.000.000',
    'Rp50.000',
    'Rp2.000.000',
    'Rp3.000.000',
    'Rp15.000.000',
    'Rp5.000',
  ];
  // TODO: Make a collection of cards (102)

  List<Card> _buildGridCards(BuildContext context, int count) {
  List<Card> cards = List.generate(
    count,
    (int index) {
      return Card(
        clipBehavior: Clip.antiAlias,
        // TODO: Adjust card heights (103)
        elevation: 0.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 18.0 / 11.0,
              child: Image.asset(imagePaths[index],
              fit: BoxFit.fitWidth,
              )
            ),
            Padding( 
              padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    titles[index],
                    style: Theme.of(context).textTheme.labelLarge,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),

                  const SizedBox(height: 8.0),
                  Text(
                    texts[index],
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
  return cards;
}
  // TODO: Add a variable for Category (104)
  @override
  Widget build(BuildContext context) {
    // TODO: Return an AsymmetricView (104)
    // TODO: Pass Category variable to AsymmetricView (104)
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 233, 161, 17) ,
      // TODO: Add app bar (102)
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 219, 180, 53), // Change this to your desired color
        // TODO: Add buttons and title (102)
        title: const Text('PINGU'),
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ),
          onPressed: () {
            print('Menu button');
          },
        ),
        // TODO: Add trailing buttons (102)
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              semanticLabel: 'search',
            ),
            onPressed: () {
              print('Search button');
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.tune,
              semanticLabel: 'filter',
            ),
            onPressed: () {
              print('Filter button');
            },
          ),
        ],
      ),

      // TODO: Add a grid view (102)
      body: AsymmetricView(
        titles: titles,
        texts: texts,
        imagePaths: imagePaths,
      ),
    );
  }
}

