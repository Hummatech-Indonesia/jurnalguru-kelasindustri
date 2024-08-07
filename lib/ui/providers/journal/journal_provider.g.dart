// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'journal_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$journalHash() => r'38d13c2f8a0b2c6b24cab83115370fdfdcb3e633';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [journal].
@ProviderFor(journal)
const journalProvider = JournalFamily();

/// See also [journal].
class JournalFamily extends Family<AsyncValue<Journal>> {
  /// See also [journal].
  const JournalFamily();

  /// See also [journal].
  JournalProvider call(
    String? id,
  ) {
    return JournalProvider(
      id,
    );
  }

  @override
  JournalProvider getProviderOverride(
    covariant JournalProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'journalProvider';
}

/// See also [journal].
class JournalProvider extends FutureProvider<Journal> {
  /// See also [journal].
  JournalProvider(
    String? id,
  ) : this._internal(
          (ref) => journal(
            ref as JournalRef,
            id,
          ),
          from: journalProvider,
          name: r'journalProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$journalHash,
          dependencies: JournalFamily._dependencies,
          allTransitiveDependencies: JournalFamily._allTransitiveDependencies,
          id: id,
        );

  JournalProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String? id;

  @override
  Override overrideWith(
    FutureOr<Journal> Function(JournalRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: JournalProvider._internal(
        (ref) => create(ref as JournalRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  FutureProviderElement<Journal> createElement() {
    return _JournalProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is JournalProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin JournalRef on FutureProviderRef<Journal> {
  /// The parameter `id` of this provider.
  String? get id;
}

class _JournalProviderElement extends FutureProviderElement<Journal>
    with JournalRef {
  _JournalProviderElement(super.provider);

  @override
  String? get id => (origin as JournalProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
