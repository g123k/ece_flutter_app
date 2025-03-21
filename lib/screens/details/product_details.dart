import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [const _BackgroundImage(), _Header()]),
    );
  }
}

class _BackgroundImage extends StatelessWidget {
  const _BackgroundImage();

  static final double height = 300;

  @override
  Widget build(BuildContext context) {
    return Positioned.directional(
      top: 0.0,
      start: 0.0,
      end: 0.0,
      height: height,
      textDirection: Directionality.of(context),
      child: Image.network(
        'https://images.unsplash.com/photo-1482049016688-2d3e1b311543?q=80&w=2620&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        fit: BoxFit.cover,
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return Positioned.directional(
      top: _BackgroundImage.height - 16.0,
      start: 0.0,
      end: 0.0,
      bottom: 0.0,
      textDirection: Directionality.of(context),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
        ),
        padding: EdgeInsetsDirectional.only(
          top: 30.0,
          start: 20.0,
          end: 20.0,
          bottom: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text('Petits pois et carottes'), Text('Cassegrain')],
        ),
      ),
    );
  }
}
