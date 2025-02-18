void main() async {
  print('Inicio');

  try {
    final value = await httpGet('https://google.com');
    print(value);
  } catch (err) {
    print('tenemos un error');
  }

  print('Fin');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  throw 'Error de la peticion';
  //return 'Tenemos un valor';
}
