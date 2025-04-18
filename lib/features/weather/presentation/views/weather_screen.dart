import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:weather/core/routes/route_utils.dart';
import 'package:weather/features/weather/domain/entities/geocoding.dart';
import 'package:weather/features/weather/presentation/providers/saved_locations_notifier_provider.dart';
import 'package:weather/features/weather/presentation/widgets/search_bar.dart';
import 'package:weather/themes/app_colors.dart';
import '../providers/search_notifier_provider.dart';
import '../providers/selected_location_provider.dart';
import '../providers/weather_notifier_provider.dart';
import '../widgets/saved_locations_list_dialog.dart';
import '../widgets/search_results_card.dart';
import '../widgets/weather_info_card.dart';

class WeatherScreen extends ConsumerWidget {

  final TextEditingController _searchController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  WeatherScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final weatherStateAsyncValue = ref.watch(weatherNotifierProvider);
    final searchState = ref.watch(searchNotifierProvider);
    final savedLocationsState = ref.watch(savedLocationsNotifierProvider);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height*0.85,
              ),
              child: IntrinsicHeight(
                child: Stack(
                  children: [
                    Column(
                      spacing: 25,
                      children: [
                        Row(
                          spacing: 40,
                          children: [
                            SearchBarWidget(
                                focusNode: _focusNode,
                                searchController: _searchController,
                              onChangedCallBack: (String value){
                                ref
                                    .read(searchNotifierProvider.notifier)
                                    .updateQuery(value);
                              },
                              onTapCallBack: (){
                                _focusNode.unfocus();
                                _searchController.text = '';
                                ref
                                    .read(
                                  searchNotifierProvider.notifier,
                                )
                                    .updateQuery(
                                  _searchController.text,
                                );
                              },
                            ),
                            GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return SavedLocationsListDialog(
                                      savedLocationsState: savedLocationsState,
                                      onTapCallBack: (Geocoding location) async {
                                        ref.read(selectedLocationProvider.notifier).state = location;
                                        if (context.mounted) {
                                          GoRouter.of(
                                            context,
                                          ).push(AppPage.detailsPage.toPath());
                                        }
                                      },
                                      onDeleteCallBack: (String name) async {
                                        await ref
                                            .read(
                                              savedLocationsNotifierProvider.notifier,
                                            )
                                            .removeLocations(name);
                                        if (context.mounted) {
                                          GoRouter.of(context).pop();
                                        }
                                      },
                                    );
                                  },
                                );
                              },
                              child: CircleAvatar(
                                radius: 28,
                                backgroundColor: AppColors.secondary,
                                child: SvgPicture.asset(
                                  'assets/icons/saved_locations.svg',
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                        WeatherInfoCard(
                            weatherAsyncValue: weatherStateAsyncValue,
                          retryCallBack: (){
                            ref.invalidate(weatherNotifierProvider);
                          },
                          forecastCallBack: (Geocoding location){
                            ref.read(selectedLocationProvider.notifier).state = location;
                            if (context.mounted) {
                              GoRouter.of(
                                context,
                              ).push(AppPage.detailsPage.toPath());
                            }
                          },
                        ),
                      ],
                    ),
                    if (_searchController.text.isNotEmpty && _focusNode.hasFocus)
                      Positioned(
                        top: MediaQuery.of(context).size.height * 0.07,
                        left: MediaQuery.of(context).size.width * 0.01,
                        right: MediaQuery.of(context).size.width * 0.2,
                        child: SearchResultCard(
                          searchState: searchState,
                          onTapCallBack: (Geocoding location) async {
                            await ref
                                .read(savedLocationsNotifierProvider.notifier)
                                .saveLocation(location);
                            if (context.mounted) {
                              GoRouter.of(context).push(AppPage.detailsPage.toPath());
                            }
                            _focusNode.unfocus();
                          },
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}