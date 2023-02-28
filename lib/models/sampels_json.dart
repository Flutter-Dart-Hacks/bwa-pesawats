import 'dart:convert';

class ObjectData {
  final Object object;
  ObjectData({
    required this.object,
  });

  ObjectData copyWith({
    Object? object,
  }) {
    return ObjectData(
      object: object ?? this.object,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'object': object.toMap(),
    };
  }

  factory ObjectData.fromMap(Map<String, dynamic> map) {
    return ObjectData(
      object: Object.fromMap(map['object'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory ObjectData.fromJson(String source) =>
      ObjectData.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'ObjectData(object: $object)';

  @override
  bool operator ==(covariant ObjectData other) {
    if (identical(this, other)) return true;

    return other.object == object;
  }

  @override
  int get hashCode => object.hashCode;
}

class Object {
  final String a;
  final String c;
  Object({
    required this.a,
    required this.c,
  });

  Object copyWith({
    String? a,
    String? c,
  }) {
    return Object(
      a: a ?? this.a,
      c: c ?? this.c,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'a': a,
      'c': c,
    };
  }

  factory Object.fromMap(Map<String, dynamic> map) {
    return Object(
      a: map['a'] as String,
      c: map['c'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Object.fromJson(String source) =>
      Object.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Object(a: $a, c: $c)';

  @override
  bool operator ==(covariant Object other) {
    if (identical(this, other)) return true;

    return other.a == a && other.c == c;
  }

  @override
  int get hashCode => a.hashCode ^ c.hashCode;
}
