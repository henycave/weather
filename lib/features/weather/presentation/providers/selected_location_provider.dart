import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/geocoding.dart';

final selectedLocationProvider = StateProvider<Geocoding?>((ref) => null);
