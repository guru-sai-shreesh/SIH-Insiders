import 'dart:convert';

import 'package:http/http.dart' as http;


Future Getdata(url) async {
  http.Response Response = await http.get(Uri.parse(url));
  return Response.body;
}


sendData(carno,stationid,start,end,charge,amount,modelid) async {


  var Response = await Getdata(
      'https://8189-2409-4070-4dbb-3247-20ff-ab54-b26-821a.ngrok.io/new/?carnumber=${carno}&stationID=${stationid}&start=${start}&end=${end}&charge=${charge}&amount=${amount}&modelid=${modelid}');

  print(Response);
  return Response;
}
