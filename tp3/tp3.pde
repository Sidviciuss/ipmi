//https://youtu.be/CkVXzjIas-A
PImage referencia;
boolean efectoRandom = false;
float anguloOrbita = 0;

void setup() {

  size(800, 400);

  referencia = loadImage("ilusion.jpg");
}

void draw() {

  background(0);

  anguloOrbita += 5;

// Imagen de referencia
  image(referencia, 0, 0, 400, 400);

  // Réplica
  dibujarIlusion(600, 200);

 
}

// Funcion que no retorna valor

void dibujarIlusion(float centroX, float centroY) {

  for (int fila = -3; fila < 19; fila++) {

    for (int columna = -3; columna < 19; columna++) {

      float x = 440 + columna * 20;
      float y = 40 + fila * 20;

      float diametro = calcularDiametro(x, y, centroX, centroY);

// Efecto aleatorio
      if (efectoRandom) {

        diametro += random(-4, 4);

      }

      float dMouse = dist(mouseX, mouseY, x, y);

      float xDibujo = x;
      float yDibujo = y;

// Interaccion con el mouse
      if (dMouse < 80) {

        diametro += map(dMouse, 0, 80, 10, 0);

        fill(255, 0, 0);
// Orbita alrededor de su posicion
        xDibujo = x + cos(radians(anguloOrbita)) * 5;
        yDibujo = y + sin(radians(anguloOrbita)) * 5;

      } else {

        fill(255);

      }

      noStroke();

      ellipse(xDibujo, yDibujo, diametro, diametro);

    }
  }
}


// funcion que retorna valor

float calcularDiametro(float x, float y, float centroX, float centroY) {

  float distancia = dist(x, y, centroX, centroY);

  return map(distancia, 0, 220, 2, 24);

}

void keyPressed() {

// Activar / desactivar efecto aleatorio

  if (key == ' ') {

    efectoRandom = !efectoRandom;

  }

// Reiniciar

  if (key == 'r' || key == 'R') {

    efectoRandom = false;

    anguloOrbita = 0;

  }

}
