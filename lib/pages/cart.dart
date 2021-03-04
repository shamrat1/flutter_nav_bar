
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(
          url: Uri(scheme: "https",host:"test.anazbd.com" ,path:"/api/account/view"),
          method: 'GET',
          headers: {
            "Authorization" : "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxMSIsImp0aSI6Ijk0MDc4YjliZmYzNjFkNjAzOWNhMjMzNTRmOTMwMDExNzkxZjI3N2Y4NmIyMTQzOGI4N2U5YzBiZWQ3YzA3YmE3ZmNiZGRhODNmNTliYmNlIiwiaWF0IjoxNjE0ODQ4MDIzLCJuYmYiOjE2MTQ4NDgwMjMsImV4cCI6MTY0NjM4NDAyMywic3ViIjoiMzEiLCJzY29wZXMiOltdfQ.BVUhxES01l4pqMA7edUvNEQOIF_yMWRXLmspK2xUFu2WLaLQlr-DUIbLRTZYG7aVgLTzeDHgh84Klo_1SgiOWYLh_MHl71GDJii2ykIYe5-3tO4ihGLVghWzT2_22IMVRbsFmwqGoiWrkr2CTfFCzo490FVTOcOuB5CzLfUB125ZDx7AR-tMlx_yy7736hifyONyvN2hMXFHRElAeK_ZDKE0B9YUGsU6vjPv34iQpb2YEXHDc5V0jM-T3oCbvAv-xnQZXbO1vhC_6orsYilzraWNKV-8nKoueGCWX-jAXtC2rtxsGplQ_FvngkCk8lCHUqzzyZjiGBZxw1do544as2b4CFb166T1NOkvnXuyGGanSQVuuLtjeq4VUS458ccNGGkb35yURRRZKreX9QsXl9GLpE__ubtjPpXgMC_5Km4h9O5sKsYR6aUhS_YWnyrksGAwArNqfwEcFkuVue3Zqv1FpynjDM60W1lU7ARdGVjXGolXdu-A6uOMgkZf5sXPecTbyBTGKfpsCggfhRohThFhloSIXRdifz_MLb06tasQ3CIkOzda4A9oqI8TqkNWrvu0RNXlJ-yJ2144T_I0FspCc1oqHxKSl2_EdL8fjFqCXasx7WD5hWM8D8zRSa672E9C1AbES1vopvhxhZUQi6KVktKELo5mkFvirbxxJoY"
          }
        ),
      ),
    );
  }
}
