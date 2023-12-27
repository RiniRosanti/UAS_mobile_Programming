import 'package:uas_mobile_programming/models/albummodel.dart';

class Concert extends Album {
  String label;
  Concert({
    required this.label,
    required super.image,
    required super.price,
  });
}
