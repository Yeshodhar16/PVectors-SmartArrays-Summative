class waves
{
  float x=0;
  float y=0;
  float xoff = 0.0;

  void Wave() 
  {
    colorMode(HSB);
    background(204);
    xoff = xoff + .01;
    float n = noise(xoff) * width;
    x=0;
    while (x < width)
    {
      strokeWeight(3);
      stroke(238, 71, 70, 150);
      line(x, 200+100*noise(x/1000, y), x, height);
      stroke(206, 86, 83, 200);
      line(x, 250+100*noise(x/750, y), x, height);
      stroke(195, 86, 86, 200);
      line(x, 300+100*noise(x/500, y), x, height);
      stroke(186, 86, 86, 200);
      line(x, 350+100*noise(x/250, y), x, height);
      stroke(176, 90, 92, 200);
      line(x, 400+100*noise(x/100, y), x, height);
      x=x+1;
    }

    y+=0.02;
  }
}