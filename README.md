# VK SDK for Dart.

VK SDK for Dart allows you to use the VK API easily.

###### Inspired by [Dart-vkio](!https://github.com/nitreojs/dart-vkio) | [vk-io](https://github.com/negezor/vk-io) | vkquick

## Install

Add to your pubspec.yaml

```yaml
dependencies:
  VkLib:
    git: git//:github.com/Waitrum/VkLib.git
```

## Features

```Художественный фильм "Спиздили"```

- LongPoll
  - [x] Bots
  - [ ] User

- Not added Methods
  - VK Donut
  - Podcasts
  - LeadForms
  - PrettyCards
    - Store
    - AppWidgets

## Usage

```dart
import 'package:vklib/vklib.dart';

void main() async {
  var vk = VkLib(token: '<token>');
  await vk.api.messages.send(
    {
      'user_id': 1,
      'message': 'Hello'
    },
  );
}
```



