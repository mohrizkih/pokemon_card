/// Defines the details regarding card set legality
class SetLegalities {
  SetLegalities({
    required this.unlimited,
    required this.expanded,
  });

  factory SetLegalities.fromJson(Map<String, dynamic> json) {
    return SetLegalities(
      unlimited: json['unlimited'],
      expanded: json['expanded'],
    );
  }

  /// Whether this set is legal for Unlimited play
  ///
  /// Example: "legal"
  final String? unlimited;

  /// Whether this set is legal for Expanded play
  ///
  /// Example: "legal"
  final String? expanded;
}
