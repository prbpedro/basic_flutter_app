import 'package:flutter/material.dart';
import 'package:materialapp/Models/dog_model.dart';
import 'package:materialapp/Util/image_util.dart';
import 'package:materialapp/Widgets/Pages/Shared/base_page.dart';

class ListViewPage extends BasePage {
  ListViewPage() : super('List View');

  listViewBuilder(context, index) {}

  @override
  body(context) {
    var dogs = <DogModel>[
      DogModel('Jorge', 'assets/images/dog1.jpg'),
      DogModel('Milena e Jorge', 'assets/images/dog2.jpg'),
      DogModel('Timaildi', 'assets/images/dog3.jpg'),
      DogModel('Milena', 'assets/images/dog4.jpg'),
    ];

    return ListView.builder(
      itemCount: dogs.length,
      itemExtent: 250,
      itemBuilder: (context, index) {
        return img(dogs[index].picturePath, container: false);
      },
    );
  }
}
