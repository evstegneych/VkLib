# VK SDK for Dart.

VK SDK for Dart allows you to use the VK API easily.

###### Inspired by [Dart-vkio](!https://github.com/nitreojs/dart-vkio) and [vk-io](https://github.com/negezor/vk-io)

## Install
Add to your pubspec.yaml
```yaml
dependencies:
  VkLib: 
    git: git//:github.com/Waitrum/VkLib.git
```

## Features
 ```Художественный фильм "Спиздили"```
 
 - Methods
    - Account
    - Ads
    - Apps
    - Board
    - Database
    - Docs
    - Fave
    - Friends
    - ~~Gifts~~
    - ~~Groups~~
    - ~~Leads~~
    - ~~Likes~~
    - ~~Market~~
    - Messages
    - ~~Newsfeed~~
    - ~~Notes~~
    - ~~Notifications~~
    - ~~Pages~~
    - ~~Photos~~
    - ~~Polls~~
    - ~~Search~~
    - ~~Secure~~
    - ~~Stats~~
    - ~~Status~~
    - ~~Storage~~
    - ~~Users~~
    - ~~Utils~~
    - ~~Video~~
    - ~~VK Donut~~
    - ~~Podcasts~~
    - ~~LeadForms~~
    - ~~PrettyCards~~
    - ~~Store~~
    - ~~Stories~~
    - ~~AppWidgets~~
    - ~~Streaming~~
    - ~~Orders~~
    - ~~Wall~~
    - ~~Widgets~~
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



