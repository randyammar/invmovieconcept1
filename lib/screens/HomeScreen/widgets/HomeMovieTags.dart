import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:invmovieconcept1/static/movies.dart' as movies;

import 'package:invmovieconcept1/UI.dart';
import 'package:invmovieconcept1/configs/AppDimensions.dart';
import 'package:tinycolor/tinycolor.dart';

import '../Dimensions.dart';
import '../provider.dart';

class HomeMovieTags extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final state = Provider.of<HomeProvider>(context, listen: false);

    return Positioned(
      left: 0,
      right: 0,
      top: Dimensions.bgHeight + AppDimensions.padding * 4,
      child: Container(
        // color: Colors.red,
        child: Wrap(
          children: [
            ...movies.list[state.activeTabIndex].tags
                .map(
                  (tag) => Container(
                    margin: EdgeInsets.all(
                      AppDimensions.padding,
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: AppDimensions.padding * 1.5,
                      horizontal: AppDimensions.padding * 4,
                    ),
                    decoration: BoxDecoration(
                      color: TinyColor(Colors.black).lighten(96).color,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          spreadRadius: 0,
                          offset: Offset(2.0, 2.0),
                          color: Colors.black.withOpacity(0.12),
                        ),
                      ],
                    ),
                    child: Text(
                      tag,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                )
                .toList(),
          ],
        ),
      ),
    );
  }
}