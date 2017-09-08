String bottle =" bottle of beer on the wall ";
String no =" no more bottles of beer on the wall ";
String wall=" bottles of beer on the wall ";
String pass=" take one down pass it around ";
String beer=" bottles of beer ";
String poop="bottle of beer";

for (int i = 2; i>=1; i--) {
  print(i);
  
  if (i==1) {
    print(bottle);
  } else {
    print(wall);
  }
  
  
  print(i);
  if (i==1){
  print(bottle);
  }
  else{
    print(beer);
  }
  print(i-1);
  print(wall);


  if (i==0) {
    print(no);
  }
}

