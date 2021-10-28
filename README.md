# firebase_instance_id
A Flutter plugin to retrieve the Firebase App Instance ID# device_unlock

## How does it work

App Instance Id is an unique identifier for an instance of the app. In other words, each user/installation has such a value. It is a 32-character hex number like a12bc3d456789efabc123456a8a5de56.

OBS.: The project should have firebase configured for this plugin to work.

## Sample code

```
import 'package:firebase_instance_id/firebase_instance_id.dart';

var instanceId = await FirebaseInstanceId.appInstanceId ?? 'Unknown installation id';
```
