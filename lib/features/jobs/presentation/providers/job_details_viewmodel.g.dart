// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_details_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$jobDetailsViewModelHash() =>
    r'b1acf3c281922e75a26a0d2705613b1d68331f30';

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

abstract class _$JobDetailsViewModel
    extends BuildlessAutoDisposeAsyncNotifier<Job> {
  late final String jobId;

  Future<Job> build({
    required String jobId,
  });
}

/// See also [JobDetailsViewModel].
@ProviderFor(JobDetailsViewModel)
const jobDetailsViewModelProvider = JobDetailsViewModelFamily();

/// See also [JobDetailsViewModel].
class JobDetailsViewModelFamily extends Family<AsyncValue<Job>> {
  /// See also [JobDetailsViewModel].
  const JobDetailsViewModelFamily();

  /// See also [JobDetailsViewModel].
  JobDetailsViewModelProvider call({
    required String jobId,
  }) {
    return JobDetailsViewModelProvider(
      jobId: jobId,
    );
  }

  @override
  JobDetailsViewModelProvider getProviderOverride(
    covariant JobDetailsViewModelProvider provider,
  ) {
    return call(
      jobId: provider.jobId,
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
  String? get name => r'jobDetailsViewModelProvider';
}

/// See also [JobDetailsViewModel].
class JobDetailsViewModelProvider
    extends AutoDisposeAsyncNotifierProviderImpl<JobDetailsViewModel, Job> {
  /// See also [JobDetailsViewModel].
  JobDetailsViewModelProvider({
    required this.jobId,
  }) : super.internal(
          () => JobDetailsViewModel()..jobId = jobId,
          from: jobDetailsViewModelProvider,
          name: r'jobDetailsViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$jobDetailsViewModelHash,
          dependencies: JobDetailsViewModelFamily._dependencies,
          allTransitiveDependencies:
              JobDetailsViewModelFamily._allTransitiveDependencies,
        );

  final String jobId;

  @override
  bool operator ==(Object other) {
    return other is JobDetailsViewModelProvider && other.jobId == jobId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, jobId.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Future<Job> runNotifierBuild(
    covariant JobDetailsViewModel notifier,
  ) {
    return notifier.build(
      jobId: jobId,
    );
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
