// Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];

  print(list);
  print(list2);
  print(list2.length);
  var list1 = [1, 2, null];
  print(list1);

  var list3 = [0, ...?list1];
  print(list3);
  print(list3.length);

  var nimList = ['2', '3', '4', '1', '7', '2', '0', '0', '9', '4'];
  var fullList = [...list3, ...nimList];

  print(nimList);
  print(fullList);

  // Jika promoActive = true
  var promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print("promoActive = true -> $nav");

  // Jika promoActive = false
  promoActive = false;
  nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print("promoActive = false -> $nav");

  var login = 'Manager';
  var nav2 = [
    'Home',
    'Furniture',
    'Plants',
    if (login case 'Manager') 'Inventory',
  ];
  print("login = Manager -> $nav2");

  login = 'Admin';
  nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
  print("login = Admin -> $nav2");

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}
