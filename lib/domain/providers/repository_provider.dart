import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shipload_app/data/remote/auth/auth_repo.dart';
import 'package:shipload_app/data/remote/auth/auth_repo_impl.dart';
import 'package:shipload_app/data/remote/carrier/carrier_repo.dart';
import 'package:shipload_app/data/remote/carrier/carrier_repo_impl.dart';
import 'package:shipload_app/data/remote/shipper/shipper_repo.dart';
import 'package:shipload_app/data/remote/shipper/shipper_repo_impl.dart';
import 'package:shipload_app/domain/providers/api_client_provider.dart';

final authRepositoryProvider = Provider<AuthRepo>(
  (ref) => AuthRepoImpl(
    ref.read(apiClientProvider),
  ),
);

final shipperRepositoryProvider = Provider<ShipperRepo>(
  (ref) => ShipperRepoImpl(
    ref.read(apiClientProvider),
  ),
);

final carrierRepositoryProvider = Provider<CarrierRepo>(
  (ref) => CarrierRepoImpl(
    ref.read(apiClientProvider),
  ),
);
