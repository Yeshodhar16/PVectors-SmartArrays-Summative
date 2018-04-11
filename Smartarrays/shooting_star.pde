class shooting_star
{
  PVector position;
  PVector dir;
  color c;

  shooting_star()
  {
    position = new PVector(width/2, height/2);
    dir = new PVector(1, 0);
  }
  shooting_star(float _mX, float _mY, color _c)
  {
    colorMode(HSB,360,100,100);
    position = new PVector(width/2, height/2+150);
    dir =  new PVector(_mX - position.x, _mY - position.y);
    dir.normalize();
    c = color(random(360), 100, random(50));
  }
  void Update()
  {
    fill(c);
    ellipse(position.x, position.y, 10, 10);
    position.add(dir);
  }
}