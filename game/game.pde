PImage background;
PImage tables;
PImage pan_blue;
PImage pan_red;
PImage illuminati;
PImage key_blue;
PImage key_red;
PImage garlic;
PImage eggs;
PImage chocolate;
PImage holo_cookies;
PImage illum_eyebeam;
PImage book;
int pan_blueX = -130;
int blue_bookX = -700;
int pan_redX = 694;
int red_bookX = 645+700;
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
  chocolate.resize(100, 90);
  
}

void draw () {
  image(background, 0,0);
  image(book, blue_bookX, height/8-70);
  image(book, red_bookX, height/8-70);
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
  
 
}


void keyPressed () {
  if (key == '`' && pan_blueX > -400) {
    pan_blueX -= 700;
    blue_bookX +=700;
  } else if (key == '`') {
       pan_blueX += 700;
       blue_bookX -= 700;
  }
  if (key == '-' && pan_redX <1024) {
    pan_redX += 700;
    red_bookX -= 700;
  }  else if (key == '-') {
    pan_redX -= 700;
    red_bookX += 700;
  }
}
