import 'package:alice/alice.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'alice_provider.g.dart';

@riverpod
Alice alice(AliceRef ref) {
  return Alice();
}
