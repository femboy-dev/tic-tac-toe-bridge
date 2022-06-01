class Position {
  final int horizontal;

  final int vertical;

  const Position.only({this.horizontal = 0, this.vertical = 0})
      : assert(horizontal >= 0),
        assert(vertical >= 0);

  const Position.all([int all = 0])
      : horizontal = all,
        vertical = all,
        assert(all >= 0);

  factory Position.json(dynamic json) {
    return Position.only(
      horizontal: json['horizontal'] as int,
      vertical: json['vertical'] as int,
    );
  }

  Position copyWith({
    int? horizontal,
    int? vertical,
  }) {
    return Position.only(
      vertical: vertical ?? this.vertical,
      horizontal: horizontal ?? this.horizontal,
    );
  }

  Map<String, dynamic> toJson() => {
        'horizontal': horizontal,
        'vertical': vertical,
      };

  @override
  bool operator ==(Object other) =>
      other is Position &&
      other.horizontal == horizontal &&
      other.vertical == vertical;

  @override
  String toString() => toJson().toString();

  @override
  int get hashCode => Object.hash(horizontal, vertical);
}
