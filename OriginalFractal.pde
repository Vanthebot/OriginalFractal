public void setup()
{
  size(500, 500);
  rectMode(CENTER);
}

public void draw()
{
  background(0);
  stroke(255);
  fractal(250, 250, 480);

}

public void fractal(int x, int y, int size)
{
  fill((int)(Math.random()*100)+10,(int)(Math.random()*100)+10, 255);
  ellipse(x, y, size, size);
  ellipse(x/2, y, size, size);
  ellipse(x+x/2, y, size, size);
  if (size > 10)
  {
    fractal(x, y-size/2, size/2);
    fractal(x, y+size/2, size/2);
  }
}
