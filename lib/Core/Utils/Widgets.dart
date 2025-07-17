  import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Text HeadingText(String title,size) {
    return Text(
      title,
      style: TextStyle(fontSize: size, fontWeight: FontWeight.bold),
    );
  }

  Text ProductdetailText(title,size,wieight,color) {
    return Text(title,
                    style: TextStyle(
                      fontWeight: wieight,
                    fontSize: size,
                    color: color,
                    height: 1.5,
                    ),
                    maxLines: 8,
                    overflow: TextOverflow.ellipsis,
                  );
  }