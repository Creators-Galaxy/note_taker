class EmailAddress {
  final String value;

  const EmailAddress({
    required this.value,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EmailAddress &&
          runtimeType == other.runtimeType &&
          value == other.value);

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return 'EmailAddress{ value: $value,}';
  }

  EmailAddress copyWith({
    String? value,
  }) {
    return EmailAddress(
      value: value ?? this.value,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value': value,
    };
  }

  factory EmailAddress.fromMap(Map<String, dynamic> map) {
    return EmailAddress(
      value: map['value'] as String,
    );
  }
}
