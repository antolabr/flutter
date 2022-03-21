import 'package:flutter/material.dart';

class RatingBox extends StatefulWidget {
  @override
  _RatingBoxState createState() => _RatingBoxState();
}

class _RatingBoxState extends State<RatingBox> {
  int _rating = 0;
  void _setRatingAsOne() {
    setState(() {
      _rating = 1;
    });
  }

  void _setRatingAsTwo() {
    setState(() {
      _rating = 2;
    });
  }

  void _setRatingAsThree() {
    setState(() {
      _rating = 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    double _size = 20;
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            padding: const EdgeInsets.all(0),
            child: IconButton(
              icon: (_rating >= 1
                ? Icon(Icons.star, size: _size, color: Colors.yellow)
                : Icon(Icons.star_border,
                  size: _size, color: Colors.grey)),
              color: Colors.red[550],
              onPressed: _setRatingAsOne,
              iconSize: _size
            )
          ),
          Container(
            padding: const EdgeInsets.all(0),
            child: IconButton(
              icon: (_rating >= 2
                ? Icon(Icons.star, size: _size, color: Colors.yellow)
                : Icon(Icons.star_border,
                  size: _size, color: Colors.grey)),
              color: Colors.red[550],
              onPressed: _setRatingAsTwo,
              iconSize: _size
            )
          ),
          Container(
            padding: const EdgeInsets.all(0),
            child: IconButton(
              icon: (_rating >= 3
                  ? Icon(Icons.star, size: _size, color: Colors.yellow)
                  : Icon(Icons.star_border,
                      size: _size, color: Colors.grey)),
              color: Colors.red[550],
              onPressed: _setRatingAsThree,
              iconSize: _size
            )
          ),
        ]
      )
    );
  }
}
