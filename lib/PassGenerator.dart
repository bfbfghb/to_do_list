import 'dart:math';

class PassGenerator{
  static var pass;
  void createPass(){
  var random = new Random();
  List listadeCaracteres = ['a','1','2','3','4','5','6','7','8','9','0','@','#','!','\$','%','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'];
  List<String> listPass = [];
  for (var i = 0; i < 16; i++) {
    int aleatorio = random.nextInt(42);
    var pegarsenha =  listadeCaracteres[aleatorio];
    listPass.add(pegarsenha); 
  }
  pass = "${listPass[0]}${listPass[1]}${listPass[2]}${listPass[3]}${listPass[4]}${listPass[5]}${listPass[6]}${listPass[7]}${listPass[8]}${listPass[9]}${listPass[10]}${listPass[11]}${listPass[12]}${listPass[13]}${listPass[14]}${listPass[15]}".toUpperCase();
  } 
}