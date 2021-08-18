import 'package:get_storage/get_storage.dart';

class BaseService {
  final GetStorage storage = GetStorage();
  late String storageKey;
  late dynamic defaultValue;

  /// check storage for a given key, returns [defaultValue] if the key isn't there
  dynamic loadFromStorage() => this.storage.read(this.storageKey) ?? this.defaultValue;

  /// update storage
  saveToStorage(dynamic value) => this.storage.write(this.storageKey, value);
}