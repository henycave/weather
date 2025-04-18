import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/error/app_exception.dart';
import '../../../../themes/app_colors.dart';
import '../../domain/entities/geocoding.dart';
import '../providers/search_notifier_provider.dart';
import 'error_display.dart';

class SearchResultCard extends StatelessWidget {
  const SearchResultCard({
    super.key,
    required this.searchState,
    required this.onTapCallBack,
  });

  final AsyncValue<SearchState> searchState;
  final Function(Geocoding location) onTapCallBack;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 300),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: searchState.when(
        data: (result) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: result.results.length,
            itemBuilder: (context, index) {
              final location = result.results[index];
              return ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                title: Text(location.name),
                subtitle: Text(
                  "lat: ${location.latitude}, long: ${location.longitude}",
                ),
                onTap: () async => await onTapCallBack(location),
              );
            },
          );
        },
        loading:
            () => Center(
              child: CircularProgressIndicator(color: AppColors.primary),
            ),
        error: (error, trace) {
          String errorMessage;

          if (error is AppException) {
            errorMessage = error.message;
          } else {
            debugPrint('Unexpected error: $error \n$trace');
            errorMessage = 'Something went wrong. Please try again.';
          }
          return ErrorDisplay(errorMessage: errorMessage, errorColor: AppColors.black,);
        },
      ),
    );
  }
}
