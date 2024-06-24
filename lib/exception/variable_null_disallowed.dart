class VariableNullDisallowed implements Exception {

  const VariableNullDisallowed([this.message]);

  final String? message;

  @override
  String toString() {
    String result = 'VariableNullDisallowed';
    if (message is String) return '$result: $message';
    return result;
  }

}