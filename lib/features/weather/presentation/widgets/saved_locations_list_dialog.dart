import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/error/app_exception.dart';
import '../../../../themes/app_colors.dart';
import '../../domain/entities/geocoding.dart';
import 'error_display.dart';

class SavedLocationsListDialog extends StatelessWidget {
  const SavedLocationsListDialog({
    super.key,
    required this.savedLocationsState,
    required this.onTapCallBack,
    required this.onDeleteCallBack,
  });

  final AsyncValue<List<Geocoding>> savedLocationsState;
  final Function(Geocoding location) onTapCallBack;
  final Function(String name) onDeleteCallBack;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ).copyWith(bottom: 30, top: 25),
      backgroundColor: AppColors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      content: savedLocationsState.when(
        data: (locations) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width * 0.8,
            child:
                locations.isEmpty
                    ? Center(child: Text('No locations yet! Search to add some to your list.', style: TextStyle(color: AppColors.black), textAlign: TextAlign.center,))
                    : ListView.builder(
                      itemCount: locations.length,
                      itemBuilder: (context, index) {
                        final location = locations[index];
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: ListTile(
                            onTap: () => onTapCallBack(location),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            tileColor: AppColors.primary,
                            trailing: IconButton(
                              onPressed: () => onDeleteCallBack(location.name),
                              icon: Icon(Icons.delete, color: AppColors.white),
                            ),
                            title: Text(
                              location.name,
                              style: TextStyle(color: AppColors.white),
                            ),
                            subtitle: Text(
                              "lat: ${location.latitude}, long: ${location.longitude}",
                              style: TextStyle(color: AppColors.white),
                            ),
                          ),
                        );
                      },
                    ),
          );
        },
        loading: () => const CircularProgressIndicator(),
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
