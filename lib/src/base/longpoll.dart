import 'package:http/http.dart' as http;
import 'package:vklib/src/api.dart';
import 'package:vklib/src/base/event.dart';

abstract class BaseLongPoll {
  late API _api;
  late BaseEvent _eventWrapper;
  Map<String, dynamic>? _requests_query_params;
  String? _server_url;
  late http.Client _requestsSession;

  BaseLongPoll(
      API api,
      BaseEvent eventWrapper,
      // todo Set Type
      // newEventCallbacks,
      http.Client requestsSession) {
    _api = api;
    _eventWrapper = eventWrapper;
    _requests_query_params = _requests_query_params;
    _requestsSession = requestsSession;
  }

  void _setup();

  void _run_polling();

  void _resolve_failed();

  void close_session() {
    _requestsSession.close();
  }
}

// class BaseLongPoll(BaseEventFactory):
//     def __init__(
//         self,
//         *,
//         api: API,
//         event_wrapper: ty.Type[BaseEvent],
//         new_event_callbacks: ty.Optional[ty.List[EventsCallback]] = None,
//         requests_session: ty.Optional[aiohttp.ClientSession] = None,
//         json_parser: ty.Optional[BaseJSONParser] = None,
//     ):
//         self._event_wrapper = event_wrapper
//         self._baked_request: ty.Optional[ty.Awaitable] = None
//         self._requests_query_params: ty.Optional[dict] = None
//         self._server_url: ty.Optional[str] = None
//
//         BaseEventFactory.__init__(
//             self,
//             api=api,
//             new_event_callbacks=new_event_callbacks,
//             requests_session=requests_session,
//             json_parser=json_parser,
//         )
//
//     @abc.abstractmethod
//     async def _setup(self) -> None:
//         """
//         Обновляет или получает информацию о LongPoll сервере
//         и открывает соединение
//         """
//
//     async def _coroutine_run_polling(self) -> None:
//         await self._setup()
//         self._requests_query_params = ty.cast(
//             dict, self._requests_query_params
//         )
//         self._update_baked_request()
//         self._baked_request = ty.cast(asyncio.Task, self._baked_request)
//
//         while True:
//             try:
//                 response = await self._baked_request
//             except asyncio.TimeoutError:
//                 self._update_baked_request()
//                 continue
//             else:
//                 async with response:
//                     if "X-Next-Ts" in response.headers:
//                         self._requests_query_params.update(
//                             ts=response.headers["X-Next-Ts"]
//                         )
//                         self._update_baked_request()
//                         response = await self.parse_json_body(response)
//                     else:
//                         response = await self.parse_json_body(response)
//                         await self._resolve_faileds(response)
//                         self._update_baked_request()
//                         continue
//
//                 if not response["updates"]:
//                     continue
//
//                 for update in response["updates"]:
//                     event = self._event_wrapper(update)
//                     asyncio.create_task(self._run_through_callbacks(event))
//
//     async def _resolve_faileds(self, response: dict):
//         self._requests_query_params = ty.cast(
//             dict, self._requests_query_params
//         )
//         if response["failed"] == 1:
//             self._requests_query_params.update(ts=response["ts"])
//         elif response["failed"] in (2, 3):
//             await self._setup()
//         else:
//             raise ValueError("Invalid longpoll version")
//
//     def _update_baked_request(self) -> None:
//         self._server_url = ty.cast(str, self._server_url)
//         self._baked_request = self.requests_session.get(
//             self._server_url, params=self._requests_query_params
//         )
//         self._baked_request = asyncio.create_task(self._baked_request)
//
//     async def close_session(self) -> None:
//         await self._api.close_session()
//         await BaseEventFactory.close_session(self)
