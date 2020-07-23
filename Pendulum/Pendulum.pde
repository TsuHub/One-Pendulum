float raio = 100;
float x1, y1;
float a1 = PI;
float diametro = 14;

float a1_v = 0;
float g = 2;

void setup()
{
  size(400, 400);
}

void draw()
{
  background(255);
  
  translate(200, 200);
  
  x1 = raio * sin(a1);
  y1 = raio * cos(a1);
  
  line(0, 0, x1, y1);
  strokeWeight(2);
  stroke(0);
  ellipse(x1, y1, diametro, diametro);
  fill(0);
  
  float num1 = -g * (2 * diametro) * sin(a1);
  float num2 = -g * sin(a1 - 2);
  float num3 = -2 * sin(a1);
  float num4 = a1_v * a1_v * raio * cos(a1);
  float den  = raio * (2 * diametro);
  float a1_a = (num1 + num2 + num3 * num4) / den;
  
  a1_v += a1_a;
  a1 += a1_v;
  
  text("Powered by Tsuy", 90, 190);
}
