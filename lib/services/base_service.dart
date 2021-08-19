import 'package:get_storage/get_storage.dart';

abstract class BaseService {
  final GetStorage storage = GetStorage();
  late String storageKey;
  late dynamic defaultValue;

  /// check storage for a given key, returns [defaultValue] if the key isn't there
  dynamic loadFromStorage() => storage.read(storageKey) ?? defaultValue;

  /// update storage
  saveToStorage(dynamic value) => storage.write(storageKey, value);
}