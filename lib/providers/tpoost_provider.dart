import 'package:flutter/foundation.dart';

import '../models/product_model.dart';
import '../DATA_BASE.dart';

class TPoostProvider with ChangeNotifier {
  final List<Products> _items = [];

  List<Products> get items {
    return [..._items];
  }
}
