class Usuario{
  int? _codigo;
  String? _nome;
  String? _login;
  String? _senha;

  Usuario({int? codigo, String? senha, String? login, String? nome}){
    _codigo = codigo;
    _login = login;
    _nome = nome;
    _senha = senha;
  }
  //getters
  int? get codigo => _codigo;
  String? get nome => _nome;
  String? get senha => _senha;

  String? get login{
    return _login;
  }
  //seters
  set nome(String? nome) => _nome = nome;
  set senha(String? senha) => _senha = senha;
  set codigo(int? codigo) => _codigo = codigo;

  //setters
  //escrita do set tradicional
  set login(String? login) {
    _login = login;
  }
}