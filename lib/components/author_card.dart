import 'package:flutter/material.dart';

import 'avatar.dart';

class AuthorCard extends StatefulWidget {
  const AuthorCard(
      {super.key,
      required this.authorName,
      required this.title,
      this.imageProvider});

  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  @override
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  bool _liked = false;

  void toggleLike() {
    setState(() {
      _liked = !_liked;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Avatar(imageProvider: widget.imageProvider, radius: 28),
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.authorName,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    widget.title,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              )
            ],
          ),
          IconButton(
              onPressed: () {
                toggleLike();
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Favorite pressed")));
              },
              color: _liked ? Colors.red : Colors.grey,
              icon: Icon(_liked ? Icons.favorite : Icons.favorite_border))
        ],
      ),
    );
  }
}
