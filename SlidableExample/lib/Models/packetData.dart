import 'package:diyetisyen/Models/Packets.dart';
import 'package:flutter/material.dart';
const Color container1 = Color(0xFFC4B7E8);
const Color container2 = Color(0xFF948BB0);
const Color container3 = Color(0xFF6E6782);

class PacketData {
  static const packets = <Packets>[
    Packets(
      name: 'Books',
      go: 'Go Read',
      container: container1,
    ),
    Packets(
      name: 'Movies',
      go: 'go watch',
      container: container2,
    ),
    Packets(
      name: 'Musics',
      go: 'Go Listen',
      container: container3,
    ),
  ];
}