import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class StarRating extends StatefulWidget {
  Rx<int> rate;
  bool functional;
  StarRating({
    Key? key,
    required this.rate,
    this.functional = true,
  }) : super(key: key);

  @override
  State<StarRating> createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  void rate(int rating) {
    widget.rate.value = rating;
    print(widget.rate.value);
  }

  @override
  Widget build(BuildContext context) {
    
    return Obx(
      () {
        return Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Icon(
              Icons.star,
              color: widget.rate >= 1 ? Colors.orange : Colors.grey,size: 13,
            ),
            Icon(
              Icons.star,
              color: widget.rate >= 2 ? Colors.orange : Colors.grey,size: 13
            ),
            Icon(
              Icons.star,
              color: widget.rate >= 3 ? Colors.orange : Colors.grey,size: 13
            ),
            Icon(
              Icons.star,
              color: widget.rate >= 4 ? Colors.orange : Colors.grey,size: 13
            ),
            Icon(
              Icons.star,
              color: widget.rate >= 5 ? Colors.orange : Colors.grey,size: 13
            ),
            
          ],
        );
      },
    );
  }
}