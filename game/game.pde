PImage background;
PImage tables;
PImage illuminati;
PImage key_blue;
PImage key_red;
PImage garlic;
PImage eggs;
PImage chocolate;
PImage holo_cookies;
PImage illum_eyebeam;
PImage book;
PImage pan_blue;
PImage pan_red;
PImage garlic_class_image;
PImage chocolate_class_image;
PImage eggs_class_image;
int pan_blueX = -130;
int blue_bookX = -700;
int pan_redX = 694;
int red_bookX = 645+700;

Garlic BlueGarlic;
Garlic RedGarlic;
Chocolate BlueChoco;
Chocolate RedChoco;
Eggs BlueEggs;
Eggs RedEggs;

boolean[] keyArray = new boolean[20]; // {`, 1, 2, 3, 8, 9, 0, -, w, i, a, s, d,f, j, k, l, ;, x, .}
void setup () {
  size(1024, 768);
  background = loadImage("background.jpg");
  tables = loadImage("tables.png");
  pan_blue = loadImage("pan_blue.png");
  pan_red = loadImage ("pan_red.png");
  illuminati = loadImage ("illuminati.png");
  key_blue = loadImage ("key_blue.png");
  key_red = loadImage ("key_red.png");
  holo_cookies = loadImage ("foods/cookie_hologram.png");
  illum_eyebeam = loadImage ("illuminati_eyebeam.png");
  illum_eyebeam.resize(257, 792);
  book = loadImage("cookbook.png");
  garlic = loadImage ("foods/garlic_fullcolor.png");
  eggs = loadImage ("foods/eggs_fullcolor.png");
  eggs.resize(90, 70);
  garlic.resize(100, 80);
  chocolate = loadImage ("foods/chocolate_fullcolor.png");
  garlic_class_image = loadImage ("foods/garlic_fullcolor.png");
  chocolate_class_image = loadImage ("foods/chocolate_fullcolor.png");
  eggs_class_image = loadImage ("foods/eggs_fullcolor.png");
  chocolate.resize(100, 90);
  BlueGarlic = new Garlic(100, 400);
  BlueChoco = new Chocolate(100, 400);
  BlueEggs = new Eggs(100, 400);
  RedGarlic = new Garlic(800, 400);
  RedChoco = new Chocolate(800, 400); 
  RedEggs = new Eggs(800, 400);
}

void draw () {
  image(background, 0,0);
  rotate(-0.05);
  image(book, blue_bookX, height/8-70);
  rotate(.1);
  image(book, red_bookX, height/10-100);
  rotate(-0.05);
  image(pan_blue, pan_blueX , height/4+20);
  image(pan_red, pan_redX, height/4+20);

  image(tables, 0, 0);
  image(illuminati, width/2-126,-25);
  blend(illum_eyebeam, width/2-126, -25, 257, 792, width/2-163, height-300, 326, 298, SCREEN);
  
  image(holo_cookies, width/2-163, height-300);
  image(illum_eyebeam, width/2-130, 50);
  for (int i = 0; i < 300; i += 100) {
    image(key_blue, i, height-90); 
  }
  for (int j = 733; j <1033; j += 100) { 
    image(key_red, j, height-90);
  }
  image(eggs, 199, height-75);
  image(eggs, width-92, height-75); 
  image(garlic,-10, height-80);
  image(garlic, width-300, height-80);
  image(chocolate, 99, height-85);
  image(chocolate, width-195, height-85);
  
  textSize(30);
  text("1", 65, height-10);
  text("2", 165, height-10);
  text("3", 265, height-10);
  text("8", width-225, height-10);
  text("9", width-125, height-10);
  text("0", width-25, height-10);
  noCursor();
  
  if(keyArray[1]) {
    BlueGarlic.display();
  }
  if(keyArray[2]) {
    BlueChoco.display();
  }
  if(keyArray[3]) {
    BlueEggs.display();
  }
  if(keyArray[4]) {
    RedGarlic.display();
  }
  if(keyArray[5]) {
    RedChoco.display();
  }
  if(keyArray[6]) {
    RedEggs.display();
  }
}


void keyPressed () {
     if(key == '`'){
       disbluebook();
     }
     if(key == '1') {
       keyArray[1] = true;
       keyArray[2] = false;
       keyArray[3] = false;
     }
     if(key == '2') {
       keyArray[2] = true;
       keyArray[1] = false;
       keyArray[3] = false;
     }
     if(key == '3') {
       keyArray[3] = true;
       keyArray[1] = false;
       keyArray[2] = false;
     }
     if(key == '8') {
      keyArray[4] = true;
      keyArray[5] = false;
      keyArray[6] = false; 
     }
     if(key == '9') {
      keyArray[5] = true;
      keyArray[4] = false;
      keyArray[6] = false;
     }
     if(key == '0') {
      keyArray[6] = true;
      keyArray[4] = false;
      keyArray[5] = false;
     }
     if(key == '-') {
      disredbook();
}
}

