import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchField extends StatefulWidget {
  final void Function()? onTap;
  final String labelText;
  final Icon? suffixIcon;

  SearchField({
    super.key,
    this.onTap,
    required this.labelText,
    this.suffixIcon,
  });

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  // final FocusNode _focusNode = FocusNode();
  // bool _showChips = false;

  // final List<String> popularSearches = [
  //   'saree',
  //   'kurti',
  //   'short kurti',
  //   'tshirt',
  //   'top for women',
  //   'kurti set',
  //   'earring',
  //   'watch',
  //   'top',
  //   'shoes',
  //   'palazzo',
  //   'water bottle',
  //   'slipper',
  //   'bangle',
  //   'blouse',
  //   'jeans',
  // ];

  @override
  void initState() {
    super.initState();
   
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 580.w,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: widget.labelText,
              prefixIcon: widget.suffixIcon,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onTap: widget.onTap,
          ),
          
        ],
      ),
    );
  }
}
