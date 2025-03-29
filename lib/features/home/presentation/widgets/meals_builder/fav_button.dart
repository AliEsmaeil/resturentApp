import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jabalprog/features/home/presentation/controllers/favorites_controller.dart';
import 'package:provider/provider.dart';

class FavButton extends StatefulWidget {
  final String itemId;
  const FavButton({super.key, required this.itemId});

  @override
  State<FavButton> createState() => _FavButtonState();
}

class _FavButtonState extends State<FavButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
      vsync: this, value: 1, duration: const Duration(milliseconds: 400));

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<FavoritesController>(
      builder: (_, favController, child) {
        return ScaleTransition(
          scale: Tween<double>(begin: 0.7, end: 1).animate(
              CurvedAnimation(parent: _controller, curve: Curves.easeOut)),
          child: IconButton(
            splashColor: Colors.transparent,
            onPressed: () {
              _controller.reverse().then((value) => _controller.forward());
              Timer(const Duration(milliseconds: 400),
                  () => favController.toggleFavorite(widget.itemId));
            },
            icon: Icon(
              favController.isFavorite(widget.itemId)
                  ? Icons.favorite
                  : Icons.favorite_border,
              color: favController.isFavorite(widget.itemId)
                  ? Colors.red
                  : Colors.grey,
            ),
          ),
        );
      },
    );
  }
}
