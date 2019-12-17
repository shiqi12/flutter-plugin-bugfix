part of batterylevel; 

class BatteryLevelViewController {
   StreamController _flutterToEvaluteStream;
   MethodChannel _battery_view_channel;
   EventChannel _battery_view_event_channel; 
   StreamSubscription _eventSinkStreamSubscription;
  
   BatteryLevelViewController({@required int viewId, StreamController flutterToEvaluteStream})
   : _battery_view_channel = MethodChannel("flutter.io/batterylevel_view"),
    _flutterToEvaluteStream = flutterToEvaluteStream; 

   Future<void> sendMessageToNatvie(String message) async{
    
     return Future.value();
   }

   void bindNativeMethodCallBackHandler() {
     
   }

   Future<dynamic> _handler(MethodCall call) async {
  
   }

   Future<void> listentNativeContinuesEvents() async {
     
     _eventSinkStreamSubscription = _battery_view_event_channel.receiveBroadcastStream("eventSink2").cast<String>()
       .listen((data){
          _flutterToEvaluteStream.sink.add(data);
       });
       return Future.value();
   }
}