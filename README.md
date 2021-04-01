# VK SDK for Dart.

VK SDK for Dart allows you to use the VK API easily.

## Install

## Features

## Usage

```dart
import 'package:vklib/vklib.dart';

void main() async {
  var vk = VkLib(token: '<token>');
  await vk.api.request(
    'messages.send',
    {
      'user_id': 1,
      'message': 'Hello'
    },
  );
}
```



