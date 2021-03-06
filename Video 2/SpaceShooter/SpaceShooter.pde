PImage bg, playerImage;

Player player;

void setup(){
  size(800, 600);
  
  bg = loadImage("res/bg.png");
  playerImage = loadImage("res/playerShip.png");
  
  player = new Player(playerImage, width/2-playerImage.width/2, height-playerImage.height, 10);
}

void draw(){
  background(0);
  wrap(bg, 0, 0, width, height);
  
  player.render();
  
  player.update();
}

void wrap(PImage img, float x1, float y1, float x2, float y2){
  for(float x = x1; x < x2; x+=img.width){
    for(float y = y1; y < y2; y+=img.height){
      image(img, x, y);
    }
  }
}

boolean[] keys = new boolean[5]; // W/UP, A/LEFT, S/DOWN, D/RIGHT, SPACE

void keyPressed(){
  if(key == 'w' || key == 'W' || keyCode == UP) keys[0] = true;
  if(key == 'a' || key == 'A' || keyCode == LEFT) keys[1] = true;
  if(key == 's' || key == 'S' || keyCode == DOWN) keys[2] = true;
  if(key == 'd' || key == 'D' || keyCode == RIGHT) keys[3] = true;
  if(key == ' ') keys[4] = true;
}

void keyReleased(){
  if(key == 'w' || key == 'W' || keyCode == UP) keys[0] = false;
  if(key == 'a' || key == 'A' || keyCode == LEFT) keys[1] = false;
  if(key == 's' || key == 'S' || keyCode == DOWN) keys[2] = false;
  if(key == 'd' || key == 'D' || keyCode == RIGHT) keys[3] = false;
  if(key == ' ') keys[4] = false;
}
