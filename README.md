# VK SDK for Dart.

VK SDK for Dart allows you to use the VK API easily.

## Install

Add to your pubspec.yaml

```yaml
dependencies:
  VkLib: ^0.2.2
```

## Features

```Художественный фильм "Спиздили"```

- LongPoll
  - [x] Bots
  - [ ] User

## Todo

- BotsLongPoll Context
- Another Auth Method
- Optimization For Mobile Devices
- Useful Bot API
- UserLongPoll
- Logger

## Usage

```dart
import 'package:vklib/vklib.dart';

void main() async {
  var vk = VkLib(token: '%token');

  var lp = BotsLongPoll(vk.api);

  lp.on(BotsEventsEnum.MessageNew, (event) async {
    print(event.object);
    await vk.api.messages.send(
      user_id: 1,
      message: 'Hello',
    );
  });

  lp.start();
}
```



