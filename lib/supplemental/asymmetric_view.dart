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

class AsymmetricView extends StatelessWidget {
  final List<String> titles;
  final List<String> texts;
  final List<String> imagePaths;

  const AsymmetricView({
    Key? key,
    required this.titles,
    required this.texts,
    required this.imagePaths,
  }) : super(key: key);

  List<Widget> _buildColumns(BuildContext context) {
    if (titles.isEmpty) {
      return <Container>[];
    }

    /// This will return a list of columns. It will oscillate between the two
    /// kinds of columns. Even cases of the index (0, 2, 4, etc) will be
    /// TwoProductCardColumn and the odd cases will be OneProductCardColumn.
    ///
    /// Each pair of columns will advance us 3 products forward (2 + 1). That's
    /// some kinda awkward math so we use _evenCasesIndex and _oddCasesIndex as
    /// helpers for creating the index of the product list that will correspond
    /// to the index of the list of columns.
    return List.generate(_listItemCount(titles.length), (int index) {
      double width = .59 * MediaQuery.of(context).size.width;
      Widget column;
      if (index % 2 == 0) {
        /// Even cases
        int bottom = _evenCasesIndex(index);
        column = TwoProductCardColumn(
            bottom: _buildProductCard(bottom),
            top: titles.length - 1 >= bottom + 1
                ? _buildProductCard(bottom + 1)
                : null);
        width += 32.0;
      } else {
        /// Odd cases
        column = OneProductCardColumn(
          product: _buildProductCard(_oddCasesIndex(index)),
        );
      }
      return SizedBox(
        width: width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: column,
        ),
      );
    }).toList();
  }

  Widget _buildProductCard(int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          imagePaths[index],
          fit: BoxFit.contain,
          height: 200.0,
          width: double.infinity,
        ),
        const SizedBox(height: 8.0),
        Text(
          titles[index],
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        const SizedBox(height: 4.0),
        Text(
          texts[index],
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black54,
            fontSize: 14.0,
          ),
        ),
      ],
    );
  }

  int _evenCasesIndex(int input) {
    /// The operator ~/ is a cool one. It's the truncating division operator. It
    /// divides the number and if there's a remainder / decimal, it cuts it off.
    /// This is like dividing and then casting the result to int. Also, it's
    /// functionally equivalent to floor() in this case.
    return input ~/ 2 * 3;
  }

  int _oddCasesIndex(int input) {
    assert(input > 0);
    return (input / 2).ceil() * 3 - 1;
  }

  int _listItemCount(int totalItems) {
    if (totalItems % 3 == 0) {
      return totalItems ~/ 3 * 2;
    } else {
      return (totalItems / 3).ceil() * 2 - 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.fromLTRB(0.0, 34.0, 16.0, 44.0),
      children: _buildColumns(context),
    );
  }
}

class TwoProductCardColumn extends StatelessWidget {
  final Widget? top;
  final Widget? bottom;

  const TwoProductCardColumn({Key? key, this.top, this.bottom})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (top != null) ...[
          Expanded(child: top!),
          const SizedBox(height: 8.0),
        ],
        if (bottom != null) Expanded(child: bottom!),
      ],
    );
  }
}

class OneProductCardColumn extends StatelessWidget {
  final Widget product;

  const OneProductCardColumn({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: product);
  }
}
