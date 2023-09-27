import 'package:flutter/material.dart';

class StarRating extends StatefulWidget {
  final int initialRating;

  const StarRating({
    Key? key,
    this.initialRating = 0,
  }) : super(key: key);

  @override
  _StarRatingState createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  int _currentRating = 0;

  @override
  void initState() {
    super.initState();
    _currentRating = widget.initialRating;
  }

  void _updateRating(int newRating) {
    setState(() {
      if (_currentRating == newRating) {
        // Deselect the star if it's already selected
        _currentRating = 0;
      } else {
        // Otherwise, select the new star
        _currentRating = newRating;
      }
    });
  }

  Widget _buildStar(int starNumber) {
    final starColor = _getStarColor(starNumber);

    return GestureDetector(
      onTap: () {
        _updateRating(starNumber);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: starColor,
        ),
        width: 50,
        height: 30,
        child: Row(
          children: [
            SizedBox(width: 5),
            Text(
              starNumber.toString(),
              style: TextStyle(color: Colors.white),
            ),
            Icon(
              Icons.star,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  Color _getStarColor(int starNumber) {
    if (starNumber == 1) {
      return _currentRating >= starNumber ? Colors.green : Colors.black12;
    } else {
      return _currentRating >= starNumber ? Colors.green : Colors.black12;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 50),
        for (int i = 1; i <= 5; i++)
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: _buildStar(i),
          ),
      ],
    );
  }
}
