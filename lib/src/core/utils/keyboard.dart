import 'dart:convert';

enum Color {
  /// The white button, indicates secondary action
  ///
  /// Hex color #FFFFFF

  SECONDARY,

  /// The blue button, indicates the main action
  ///
  /// Hex color #5181B8
  PRIMARY,

  /// The red button, indicates a dangerous or a negative action (reject, delete, etc...)
  ///
  /// Hex color #E64646
  NEGATIVE,

  /// The green button, indicates a agree, confirm, ...etc
  ///
  /// Hex color #4BB34B
  POSITIVE
}

List<String> _colors = ["secondary", "primary", "negative", "positive"];

typedef _Button = Map<String, dynamic>;

String _serializePayload(_Button rawPayload) {
  final payload = jsonEncode(rawPayload);
  if (payload.length > 255) throw RangeError('Maximum length of payload 255 characters');

  return payload;
}

class KeyboardBuilder {
  /// Does the keyboard close after pressing the button
  bool _isOneTime = false;

  /// The keyboard must be attached to the message
  bool _isInline = false;

  /// Rows with all buttons
  List _rows = [];

  /// Current row of buttons
  List _currentRow = [];

  /// Text button, can be colored
  ///
  ///```dart
  /// builder.textButton(
  ///   label: "Buy a coffee",
  ///   payload: {
  ///    "command": "buy"
  ///   },
  ///   color: Color.SECONDARY
  /// );
  /// ```
  KeyboardBuilder textButton({required String label, Color color = Color.SECONDARY, _Button payload = const {}}) {
    if (label.length > 40) throw RangeError("Maximum length of label 40 characters");

    return _addButton({
      "color": _colors[color.index],
      "action": {"label": label, "payload": _serializePayload(payload), "type": "text"}
    });
  }

  /// URL button
  ///
  /// ```dart
  /// builder.urlButton(
  ///  label: "Buy a coffee",
  ///  url: "https://coffee.mania/buy"
  /// );
  /// ```
  KeyboardBuilder urlButton({required String label, required String url, _Button payload = const {}}) {
    if (label.length > 40) throw RangeError('Maximum length of label 40 characters');

    return _addWideButton({
      "action": {"label": label, "payload": _serializePayload(payload), "link": url, "type": "open_link"}
    });
  }

  /// User location request button, occupies the entire keyboard width
  ///
  /// ```dart
  /// builder.locationRequestButton(
  ///  payload: {
  ///   "command": "order_delivery"
  ///  }
  /// );
  /// ```
  KeyboardBuilder locationRequestButton({_Button payload = const {}}) => _addWideButton({
        "action": {"payload": _serializePayload(payload), "type": "location"}
      });

  /// VK Pay button, occupies the entire keyboard width
  ///
  /// Accepts generic `Map` or `String`
  /// ```dart
  /// builder.payButton<String>(
  ///  hash: {
  ///   "action": "transfer-to-group",
  ///   "group_id": 1,
  ///   "aid": 10
  ///  }
  /// );
  /// ```
  KeyboardBuilder payButton<T>({required T hash}) {
    final rawHash = hash is Map ? Uri.dataFromBytes(List.from(hash.entries)).toString() : hash;
    
    return _addWideButton({"hash": rawHash, "type": "vkpay"});
  }

  /// VK Apps button, occupies the entire keyboard width
  ///
  /// ```dart
  /// builder.applicationButton(
  ///  label: "LiveWidget",
  ///  appId: 6232540,
  ///  ownerId: -157525928
  /// );
  /// ```
  KeyboardBuilder applicationButton({required String label, required int appId, required int ownerId, String? hash}) {
    if (label.length > 40) throw RangeError('Maximum length of label 40 characters');
    return _addWideButton({
      "action": {"label": label, "app_id": appId, "owner_id": ownerId, if (hash != null) "hash": hash, "type": "open_app"}
    });
  }

  /// Allows without sending a message from the user
  /// to receive a notification of a button click and perform the necessary action
  ///
  /// ```dart
  /// builder.callbackButton(
  ///  label: 'Buy a coffee',
  ///  payload: {
  ///   "command": "buy",
  ///   "item": "coffee"
  ///  }
  /// );
  /// ```
  KeyboardBuilder callbackButton({required String label, _Button payload = const {}, Color color = Color.SECONDARY}) {
    if (label.length > 40) throw RangeError('Maximum length of label 40 characters');

    return _addButton({
      "color": _colors[color.index],
      "action": {"label": label, "payload": _serializePayload(payload), "type": "callback"}
    });
  }

  /// Saves the current row of buttons in the general rows
  KeyboardBuilder row() {
    if (_currentRow.length == 0) return this;
    if (_currentRow.length > 5) throw RangeError("Max count of buttons at columns 5");

    _rows.add(_currentRow);
    _currentRow = [];

    return this;
  }

  /// Sets the keyboard to close after pressing
  ///
  /// ```dart
  ///  builder.oneTime();
  ///
  ///  builder.oneTime(false);
  /// ```
  KeyboardBuilder oneTime([bool enable = true]) {
    _isOneTime = enable;
    return this;
  }

  /// Sets the keyboard inline
  ///
  /// ```dart
  ///  builder.inline();
  ///
  ///  builder.inline(false);
  /// ```
  KeyboardBuilder inline([bool enable = true]) {
    _isInline = enable;
    return this;
  }

  /// Clones the builder with all the settings
  KeyboardBuilder clone() {
    final builder = KeyboardBuilder();
    builder.oneTime(_isOneTime);
    builder.inline(_isInline);
    builder._rows = [..._rows];
    builder._currentRow = [..._currentRow];
    return builder;
  }

  /// Returns a string to keyboard a VK
  @override
  String toString() {
    final maxRowsLength = _isInline ? 6 : 10;
    if (_rows.length > maxRowsLength) throw RangeError("Max count of keyboard rows $maxRowsLength");
    final buttons = _currentRow.length != 0 ? [..._rows, _currentRow] : _rows;

    return jsonEncode(_isInline ? {"buttons": buttons, "inline": true} : {"buttons": buttons, "one_time": _isOneTime});
  }

  /// Adds a button to the current row
  KeyboardBuilder _addButton(_Button button) {
    _currentRow.add(button);
    return this;
  }

  /// Adds a wide button to the new row
  KeyboardBuilder _addWideButton(_Button button) {
    if (_currentRow.length >= 2) row();

    _addButton(button);
    if (_currentRow.length == 2) row();

    return this;
  }
}

class Keyboard {
  /// Returns keyboard builder
  static KeyboardBuilder builder() => KeyboardBuilder();

  /// Assembles a builder of buttons
  static KeyboardBuilder keyboard(List<dynamic> rows) {
    final builder = KeyboardBuilder();

    for (var row in rows) {
      final List buttons = row is List ? row : [row];

      for (var button in buttons) {
        final options = button["options"];
        final kind = button["kind"];

        if (kind == 'text') {
          builder.textButton(label: options["label"], payload: options["payload"], color: options["color"]);
          continue;
        }
        if (kind == 'url') {
          builder.urlButton(label: options["label"], url: options["url"], payload: options["payload"]);
          continue;
        }
        if (kind == 'location_request') {
          builder.locationRequestButton(payload: options["payload"]);
          continue;
        }
        if (kind == 'vk_pay') {
          builder.payButton(hash: button["options"]["hash"]);
          continue;
        }
        if (kind == 'vk_application') {
          builder.applicationButton(label: options["label"], appId: options["app_id"], ownerId: options["owner_id"], hash: options["hash"]);
          continue;
        }
        if (kind == 'callback') {
          builder.callbackButton(label: options["label"], payload: options["payload"], color: options["color"]);
          continue;
        }
        throw RangeError('Unsupported type button');
      }
      builder.row();
    }

    return builder;
  }

  /// Text button, can be colored
  static _Button textButton({required String label, Color color = Color.SECONDARY, _Button payload = const {}}) {
    return {
      "options": {
        "label": label,
        "payload": payload,
        "color": color,
      },
      "kind": 'text'
    };
  }

  /// URL button
  static _Button urlButton({required String label, required String url, _Button payload = const {}}) {
    return {
      "options": {"label": label, "payload": payload, "link": url},
      "kind": 'url'
    };
  }

  /// User location request button, occupies the entire keyboard width
  static _Button locationRequestButton({_Button payload = const {}}) {
    return {
      "options": {"payload": payload},
      "kind": 'location_request'
    };
  }

  /// VK Pay button, occupies the entire keyboard width
  static _Button payButton({required dynamic hash}) {
    return {
      "options": {"hash": hash},
      "kind": 'vk_pay'
    };
  }

  /// VK Apps button, occupies the entire keyboard width
  static _Button applicationButton({required String label, required int appId, required int ownerId, String? hash}) {
    return {
      "options": {
        "label": label,
        "app_id": appId,
        "owner_id": ownerId,
        if (hash != null) "hash": hash,
      },
      "kind": 'vk_application'
    };
  }

  /// Allows without sending a message from the user
  /// to receive a notification of a button click and perform the necessary action
  static _Button callbackButton({required String label, _Button payload = const {}, Color color = Color.SECONDARY}) => {
        "options": {"label": label, "payload": payload, "color": color},
        "kind": 'callback'
      };
}
