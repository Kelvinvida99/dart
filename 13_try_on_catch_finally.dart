void main() async {
  print('Inicio');

  try {
    final value = await httpGet('https://google.com');
    print(value);
  } on Exception catch(err) {
    print('Tenemos una exception: $err');
  } catch (err) {
    print('tenemos un error');
  } finally {
    print('Fin del try catch');
  }

  print('Fin');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  throw Exception('No hay parametros de URL');
  //throw 'Error de la peticion';
  //return 'Tenemos un valor';
}
