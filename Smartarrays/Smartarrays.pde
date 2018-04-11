//ArrayList<int> xPositions = new ArrayList<int>();

shooting_star b;
waves wave;

ArrayList<shooting_star> shooting_star = new ArrayList<shooting_star>();
PImage fish;
float x=0;
float y=0;

PVector pos = new PVector(0, 0);

import processing.sound.*;
SoundFile song;

void setup()
{
  fish = loadImage("fish.png");
  fish.resize(200, 200);
  size(800, 800, P2D);
  b = new shooting_star();
  wave = new waves();
  noStroke();
  song = new SoundFile(this, "g2g ttyl.mp3");
  song.play();

  colorMode(HSB, 360, 100, 100);
}

void draw()
{
  fill(23, 78, 99);
  ellipse(x, y, 100, 100);
  wave.Wave();
  //background(0);
  image(fish, width/2-200, height/2+10);
  b.Update();
  if (mousePressed)
  {
    shooting_star.add(new shooting_star(mouseX, mouseY, (int)random(250)));
  }

  //for (shooting_star i : shooting_star)
  //{
  //  i.Update();
  //}

  for (int i = shooting_star.size()-1; i>=0; i--)
  {
    shooting_star.get(i).Update();
    if (shooting_star.get(i).position.x > width)
    {
      shooting_star.remove(i);
    }
  }
}