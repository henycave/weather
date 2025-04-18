import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../themes/app_colors.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
    required FocusNode focusNode,
    required TextEditingController searchController, required this.onChangedCallBack, required this.onTapCallBack,
  }) : _focusNode = focusNode, _searchController = searchController;

  final FocusNode _focusNode;
  final TextEditingController _searchController;
  final Function(String value) onChangedCallBack;
  final Function() onTapCallBack;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        focusNode: _focusNode,
        controller: _searchController,
        onChanged: (value)=>onChangedCallBack(value),
        decoration: InputDecoration(
          labelText: 'Search places...',
          filled: true,
          fillColor: AppColors.secondary,
          prefixIcon:
          !(_searchController.text.isNotEmpty &&
              _focusNode.hasFocus)
              ? Padding(
            padding: EdgeInsets.all(
              12.0,
            ), // adjust as needed
            child: SvgPicture.asset(
              'assets/icons/search.svg',
              width: 25,
              height: 25,
            ),
          )
              : SizedBox(),
          suffixIcon:
          (_searchController.text.isNotEmpty &&
              _focusNode.hasFocus)
              ? Padding(
            padding: EdgeInsets.all(
              12.0,
            ), // adjust as needed
            child: GestureDetector(
              onTap: ()=>onTapCallBack(),
              child: SvgPicture.asset(
                'assets/icons/close.svg',
                width: 25,
                height: 25,
              ),
            ),
          )
              : SizedBox(),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
    );
  }
}




