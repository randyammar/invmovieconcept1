import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:invmovieconcept1/models/MovieObject.dart';

import 'package:invmovieconcept1/configs/AppDimensions.dart';

import 'package:invmovieconcept1/widgets/Screen/Screen.dart';

import 'widgets/SelectSeatsBack.dart';
import 'widgets/SelectSeatsBody.dart';
import 'widgets/BuyNow.dart';

import 'Dimensions.dart';
import 'provider.dart';

class SelectSeatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Dimensions.init(context);
    final MovieObject movie = ModalRoute.of(context).settings.arguments;

    return Screen(
      child: Align(
        alignment: Alignment.topCenter,
        child: ChangeNotifierProvider<SelectSeatsProvider>(
          create: (_) => SelectSeatsProvider(),
          child: Container(
            width: AppDimensions.containerWidth,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Positioned.fill(
                  child: SelectSeatsBody(
                    movie: movie,
                  ),
                ),
                SelectSeatsBack(),
                SelectSeatsBuyNow(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
