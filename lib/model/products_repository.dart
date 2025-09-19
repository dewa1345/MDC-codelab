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

import 'product.dart';

class ProductsRepository {
  static List<Product> loadProducts(Category category) {
    const allProducts = <Product>[
      Product(
        category: Category.manusia,
        id: 0,
        isFeatured: true,
        name: 'Bocil Rasis',
        price: 1000,
      ),
      Product(
        category: Category.accessories,
        id: 1,
        isFeatured: true,
        name: 'Botolnya Laury',
        price: 5000,
      ),
      Product(
        category: Category.manusia,
        id: 2,
        isFeatured: false,
        name: 'Jenis Kelamin Ketiga',
        price: 100,
      ),
      Product(
        category: Category.hewan,
        id: 3,
        isFeatured: true,
        name: 'Hatinya Laury',
        price: 1,
      ),
      Product(
        category: Category.accessories,
        id: 4,
        isFeatured: false,
        name: 'HPnya Laury S24 Ultra',
        price: 15000000,
      ),
      Product(
        category: Category.hewan,
        id: 5,
        isFeatured: false,
        name: 'IWAK',
        price: 5000,
      ),
      Product(
        category: Category.hewan,
        id: 6,
        isFeatured: false,
        name: 'Jantungnya Laury',
        price: 1,
      ),
      Product(
        category: Category.manusia,
        id: 7,
        isFeatured: true,
        name: 'Bocil Peledak',
        price: 50000,
      ),
      Product(
        category: Category.hewan,
        id: 8,
        isFeatured: true,
        name: 'Otaknya Laury',
        price: 100000000000000,
      ),
      Product(
        category: Category.hewan,
        id: 9,
        isFeatured: true,
        name: 'Matanya Laury 20/20 2x',
        price: 1000000,
      ),
      Product(
        category: Category.hewan,
        id: 10,
        isFeatured: false,
        name: 'Pancreasnya Laury',
        price: 10000,
      ),
            Product(
        category: Category.manusia,
        id: 11,
        isFeatured: true,
        name: 'Arsip biru 1',
        price: 500000,
      ),
            Product(
        category: Category.manusia,
        id: 12,
        isFeatured: true,
        name: 'Arsip biru 2',
        price: 250000,
      ),
            Product(
        category: Category.manusia,
        id: 13,
        isFeatured: true,
        name: 'Arsip biru 3',
        price: 500000,
      ),
            Product(
        category: Category.manusia,
        id: 14,
        isFeatured: true,
        name: 'Arsip biru 4',
        price: 1000000,
      ),
            Product(
        category: Category.manusia,
        id: 15,
        isFeatured: true,
        name: 'Arsip biru 5',
        price: 50,
      ),
            Product(
        category: Category.manusia,
        id: 16,
        isFeatured: true,
        name: 'Arsip biru 6',
        price: 50020,
      ),
            Product(
        category: Category.manusia,
        id: 17,
        isFeatured: true,
        name: 'Arsip biru 7',
        price: 250000,
      ),
            Product(
        category: Category.manusia,
        id: 18,
        isFeatured: true,
        name: 'Arsip biru 8',
        price: 2350000,
      ),
            Product(
        category: Category.manusia,
        id: 19,
        isFeatured: true,
        name: 'Arsip biru 9',
        price: 2350000,
      ),
            Product(
        category: Category.manusia,
        id: 20,
        isFeatured: true,
        name: 'Arsip biru 10',
        price: 5023000,
      ),
            Product(
        category: Category.manusia,
        id: 21,
        isFeatured: true,
        name: 'Arsip biru 11',
        price: 5230000,
      ),
            Product(
        category: Category.manusia,
        id: 22,
        isFeatured: true,
        name: 'Arsip biru 12',
        price: 500343400,
      ),
            Product(
        category: Category.manusia,
        id: 23,
        isFeatured: true,
        name: 'Arsip biru 13',
        price: 5230000,
      ),
            Product(
        category: Category.manusia,
        id: 24,
        isFeatured: true,
        name: 'Arsip biru 14',
        price: 523000,
      ),
            Product(
        category: Category.manusia,
        id: 25,
        isFeatured: true,
        name: 'Arsip biru 15',
        price: 5023,
      ),
            Product(
        category: Category.manusia,
        id: 26,
        isFeatured: true,
        name: 'Arsip biru 16',
        price: 4000,
      ),
            Product(
        category: Category.manusia,
        id: 27,
        isFeatured: true,
        name: 'Arsip biru 17',
        price: 560000,
      ),
            Product(
        category: Category.manusia,
        id: 28,
        isFeatured: true,
        name: 'Arsip biru 18',
        price: 53230000,
      ),
            Product(
        category: Category.manusia,
        id: 29,
        isFeatured: true,
        name: 'Arsip biru 19',
        price: 234000,
      ),
            Product(
        category: Category.manusia,
        id: 30,
        isFeatured: true,
        name: 'Arsip biru 20',
        price: 450000,
      ),
        Product(
        category: Category.manusia,
        id: 31,
        isFeatured: true,
        name: 'Arsip biru 21',
        price: 50000,
      ),
        Product(
        category: Category.manusia,
        id: 32,
        isFeatured: true,
        name: 'Arsip biru 22',
        price: 5000420,
      ),
        Product(
        category: Category.manusia,
        id: 33,
        isFeatured: true,
        name: 'Arsip biru 23',
        price: 12330,
      ),
        Product(
        category: Category.manusia,
        id: 34,
        isFeatured: true,
        name: 'Arsip biru 24',
        price: 523240,
      ),
        Product(
        category: Category.manusia,
        id: 35,
        isFeatured: true,
        name: 'Arsip biru 25',
        price: 53254,
      ),
        Product(
        category: Category.manusia,
        id: 36,
        isFeatured: true,
        name: 'Arsip biru 26',
        price: 50023,
      ),
        Product(
        category: Category.manusia,
        id: 37,
        isFeatured: true,
        name: 'Arsip biru 27',
        price: 500234,
      ),
        Product(
        category: Category.manusia,
        id: 38,
        isFeatured: true,
        name: 'Arsip biru 28',
        price: 50340,
      ),
        Product(
        category: Category.manusia,
        id: 39,
        isFeatured: true,
        name: 'Arsip biru 29',
        price: 50234000,
      ),
        Product(
        category: Category.manusia,
        id: 40,
        isFeatured: true,
        name: 'Arsip biru 30',
        price: 5000780,
      ),
      
      

       
    ];
    if (category == Category.all) {
      return allProducts;
    } else {
      return allProducts.where((Product p) {
        return p.category == category;
      }).toList();
    }
  }
}
