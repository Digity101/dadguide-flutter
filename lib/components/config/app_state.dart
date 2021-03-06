import 'package:rxdart/rxdart.dart';

/// Represents the overall status of the app.
enum AppStatus {
  /// App is still doing basic init.
  initializing,

  /// App finished init but no database/icons are available, onboarding required.
  onboarding,

  /// App finished init but the database was out of date, upgrading required.
  upgrading,

  /// The database is loaded and the app is ready to go.
  ready,
}

/// Publishes status events for the app.
final appStatusSubject = BehaviorSubject.seeded(AppStatus.initializing);
