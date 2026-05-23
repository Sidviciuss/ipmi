PImage fondo1;
PImage fondo2;
PImage fondo3;
PImage fondo4;
PImage fondo5;
PImage logo;

PFont crash;

float logoX= 700;
float textoHistoriaY = 600;
float textoPersonajesY = 600;
float textoPistasY = 600;


int pantalla = 0;

int tiempo;

// ANIMACIONES

int fade = 255;


void setup() {

  size(640, 480);

  // IMAGENES
  fondo1 = loadImage("fondobase.jpg");
  fondo2 = loadImage("fondoA.png");
  fondo3 = loadImage("fondoB.png");
  fondo4 = loadImage("fondoC.png");
  logo = loadImage("crash.png");
  fondo5 = loadImage("fondoD.png");

  // FUENTE
  crash = createFont("crash-a-like.ttf", 32);

  tiempo = millis();
}

void draw() {

  background(0);

  // ===================================
  // PANTALLAS
  // ===================================

  if (pantalla == 0) {

    portada();

  }

  else if (pantalla == 1) {

    historia();

  }

  else if (pantalla == 2) {

    personajes();

  }

  else if (pantalla == 3) {

    pistas();

  }

  else if (pantalla == 4) {

    finalPantalla();

  }

}

//
// ===================================
// PORTADA
// ===================================
//

void portada() {

  // FONDO
  image(fondo1, 0, 0, 640, 480);

  // OVERLAY
  fill(0, 90);
  rect(0, 0, 640, 480);

  // =================================
  // LOGO
  // =================================

  image(logo, logoX, 20, 220, 90);

  // MOVIMIENTO

  logoX = logoX - 4;

  // LIMITE FINAL

  if (logoX < 20) {

    logoX = 20;

  }

  // =================================
  // BOTON
  // =================================

  if (mouseX > 420 &&
    mouseX < 600 &&
    mouseY > 390 &&
    mouseY < 440) {

  fill(255, 0, 0);

}

else {

  fill(255, 140, 0);

}

rect(420, 390, 180, 50);

  // TEXTO BOTON

  fill(0);

  textFont(crash);

  textSize(24);

  textAlign(CENTER);

  text("COMENZAR", 510, 423);

  textAlign(LEFT);

}

//
// ===================================
// HISTORIA
// ===================================
//

void historia() {

  // FONDO
  image(fondo2, 0, 0, 640, 480);

  // OVERLAY OSCURO SUAVE
  fill(0, 70);
  rect(0, 0, 640, 480);

  // =================================
  // RECUADRO TRANSPARENTE
  // =================================

  fill(80, 80, 80, 180);

  rect(70, textoHistoriaY - 60, 500, 180);

  // =================================
  // TEXO
  // =================================

  fill(255);

  textFont(crash);

  textSize(30);

  textAlign(CENTER);

  text("HISTORIA", 320, textoHistoriaY);

  textSize(18);

  text("Crash y sus amigos", 320, textoHistoriaY + 50);

  text("deben competir contra", 320, textoHistoriaY + 80);

  text("Nitros Oxide.", 320, textoHistoriaY + 110);

  textAlign(LEFT);

  // =================================
  // ANIMACION
  // =================================

  textoHistoriaY = textoHistoriaY - 3;

  // LIMITE

  if (textoHistoriaY < 180) {

    textoHistoriaY = 180;

  }

  // =================================
  // FADE
  // =================================

  fill(0, fade);

  rect(0, 0, 640, 480);

  fade = fade - 4;

  if (fade < 0) {

    fade = 0;

  }

  // =================================
  // CAMBIO DE PANTALLA
  // =================================

  if (millis() - tiempo > 7000) {

    pantalla = 2;

    tiempo = millis();

    fade = 255;

  }

}

//
// ===================================
// PERSONAJES
// ===================================
//

void personajes() {

  // FONDO
  image(fondo3, 0, 0, 640, 480);

  // OSCURECER UN POCO
  fill(0, 70);
  rect(0, 0, 640, 480);

  // =================================
  // RECUADRO
  // =================================

  fill(80, 80, 80, 180);

  rect(70, textoPersonajesY - 60, 500, 180);

  // =================================
  // TEXTO
  // =================================

  fill(255, 180, 0);

  textFont(crash);

  textAlign(CENTER);

  textSize(30);

  text("PERSONAJES", 320, textoPersonajesY);

  textSize(18);

  text("Crash, Coco y Cortex", 320, textoPersonajesY + 50);

  text("son algunos de los", 320, textoPersonajesY + 80);

  text("corredores del torneo.", 320, textoPersonajesY + 110);

  textAlign(LEFT);

  // =================================
  // ANIMACION
  // =================================

  textoPersonajesY = textoPersonajesY - 2;

  if (textoPersonajesY < 180) {

    textoPersonajesY = 180;

  }

  // =================================
  // FADE
  // =================================

  fill(0, fade);

  rect(0, 0, 640, 480);

  fade = fade - 4;

  if (fade < 0) {

    fade = 0;

  }

  // =================================
  // CAMBIO
  // =================================

  if (millis() - tiempo > 5000) {

    pantalla = 3;

    tiempo = millis();

    fade = 255;

  }

}
//
// ===================================
// PISTAS
// ===================================
//

void pistas() {

  // FONDO
  image(fondo4, 0, 0, 640, 480);

  // OSCURECER
  fill(0, 70);
  rect(0, 0, 640, 480);

  // =================================
  // RECUADRO
  // =================================

  fill(80, 80, 80, 180);

  rect(70, textoPistasY - 60, 500, 180);

  // =================================
  // TEXTO
  // =================================

  fill(255);

  textFont(crash);

  textAlign(CENTER);

  textSize(30);

  text("CIRCUITOS", 320, textoPistasY);

  textSize(18);

  text("Las carreras ocurren", 320, textoPistasY + 50);

  text("en distintos planetas", 320, textoPistasY + 80);

  text("y escenarios espaciales.", 320, textoPistasY + 110);

  textAlign(LEFT);

  // =================================
  // ANIMACION
  // =================================

  textoPistasY = textoPistasY - 2;

  if (textoPistasY < 180) {

    textoPistasY = 180;

  }

  // =================================
  // FADE
  // =================================

  fill(0, fade);

  rect(0, 0, 640, 480);

  fade = fade - 4;

  if (fade < 0) {

    fade = 0;

  }

  // =================================
  // CAMBIO
  // =================================

  if (millis() - tiempo > 5000) {

    pantalla = 4;

    tiempo = millis();

    fade = 255;

  }

}
//
// ===================================
// FINAL
// ===================================
//

void finalPantalla() {

  image(fondo5, 0, 0, 640, 480);

  fill(0, 150);
  rect(0, 0, 640, 480);

  fill(255, 180, 0);

  textFont(crash);

  textSize(40);

  text("GRACIAS", 180, 120);

  textSize(20);

  text("Fin de la presentacion", 180, 220);

  // BOTON

  if (mouseX > 220 &&
    mouseX < 420 &&
    mouseY > 320 &&
    mouseY < 380) {

  fill(255, 0, 0);

}

else {

  fill(255, 120, 0);

}

rect(220, 320, 200, 60);

  fill(0);

  textSize(24);

  text("REINICIAR", 240, 360);

  // FADE

  fill(0, fade);
  rect(0, 0, 640, 480);

  fade = fade - 4;

  if (fade < 0) {

    fade = 0;

  }

}

//
// ===================================
// CLICK
// ===================================
//

void mousePressed() {

  // BOTON COMENZAR

  if (pantalla == 0 &&
      mouseX > 420 &&
      mouseX < 600 &&
      mouseY > 390 &&
      mouseY < 440) {

    pantalla = 1;

    tiempo = millis();

    fade = 255;

  }

  // BOTON REINICIAR

  else if (pantalla == 4 &&
           mouseX > 220 &&
           mouseX < 420 &&
           mouseY > 320 &&
           mouseY < 380) {

    pantalla = 0;
    textoHistoriaY = 600;
    textoPersonajesY = 600;
    textoPistasY = 600;

    tiempo = millis();

    fade = 255;
    
    logoX = 700;
    

  }

}
