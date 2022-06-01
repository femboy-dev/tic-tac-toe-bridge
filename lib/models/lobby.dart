import 'package:tic_tac_toe_bridge/tic_tac_toe_bridge.dart';

class Lobby {
  final LobbyState state;

  final List<Identifier> players;

  const Lobby({
    required this.state,
    required this.players,
  });

  factory Lobby.json(dynamic json) => Lobby(
        state: LobbyState.json(json['state']),
        players: (json['players'] as List<dynamic>)
            .map((e) => Identifier(e as String))
            .toList(),
      );

  @override
  String toString() => toJson().toString();

  Map<String, dynamic> toJson() => {
        'state': LobbyState.json(state),
        'players': players.map((e) => e.toString()).toList(),
      };
}
