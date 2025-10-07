void main() {

  var gifts = <String, String>{
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings',
    'name': 'Aida Rahma Fadhila',   
    'nim': '2341720094'     
  };

  var nobleGases = <int, String>{
    2: 'helium',
    10: 'neon',
    18: 'argon',
    99: 'Aida Rahma Fadhila',   
    100: '2341720094'    
  };

  var mhs1 = Map<String, String>();
  mhs1['first'] = 'partridge';
  mhs1['second'] = 'turtledoves';
  mhs1['fifth'] = 'golden rings';
  mhs1['name'] = 'Aida Rahma Fadhila';   
  mhs1['nim'] = '2341720094';     

  var mhs2 = Map<int, String>();
  mhs2[2] = 'helium';
  mhs2[10] = 'neon';
  mhs2[18] = 'argon';
  mhs2[99] = 'Aida Rahma Fadhila';   
  mhs2[100] = '2341720094';   
  
  print("gifts: $gifts");
  print("nobleGases: $nobleGases");
  print("mhs1: $mhs1");
  print("mhs2: $mhs2");
}
