int numPuntos = 6; 
Punto[] puntos = new Punto[numPuntos]; 
void setup(){ 
  size (100, 100); 
  smooth(); 
  noStroke(); 
  for(int i = 0; i< puntos.length; i++){ 
    float x = 10 + i*16; 
    float rate = 0.5 + i*0.05; 
    puntos[i] = new Punto(x, 50, 16, rate); 
  }
}
void draw(){ 
  fill(0, 12); 
  rect(0, 0, width, height); 
  fill(255); 
  for (int i = 0; i<puntos.length; i++){ 
    puntos[i].mover(); 
    puntos[i].mostrar(); 
  }
}
class Punto{ 
  float x, y; 
  float diametro; 
  float vel; 
  int dir = 1; 
  
  Punto (float xpos, float ypos, float dia, float sp){ 
    x = xpos; 
    y = ypos; 
    diametro = dia; 
    vel = sp; 
  }
  void mover(){ 
    y += (vel*dir); 
    if ((y > (height - diametro/2)) || (y < diametro/2)){ 
      dir *= -1; 
    }
  }
  void mostrar(){ 
    ellipse(x, y, diametro, diametro); 
  }
}
