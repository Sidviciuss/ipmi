PImage fondo1;
PImage fondo2;
PImage fondo3;
PImage fondo4;
PImage fondo5;
PImage logo;

PFont crash;

float logoX= 700;
float textoPantalla1Y = 600;
float textoPantalla2Y = 600;
float textoPantalla3Y = 600;

int pantalla = 0;
int tiempo;
int fade = 255;


void setup() {

  size(640, 480);

  // cargar imagenes y la fuente de texto
  fondo1 = loadImage("fondobase.jpg");
  fondo2 = loadImage("fondoA.png");
  fondo3 = loadImage("fondoB.png");
  fondo4 = loadImage("fondoC.png");
  logo = loadImage("crash.png");
  fondo5 = loadImage("fondoD.png");

  crash = createFont("crash-a-like.ttf", 32);

  tiempo = millis();
}

void draw() {

  background(0);

  // PANTALLAS

  if (pantalla == 0) {

    portada();

  }

  else if (pantalla == 1) {

    diapo1();

  }

  else if (pantalla == 2) {

    diapo2();

  }

  else if (pantalla == 3) {

    diapo3();

  }

  else if (pantalla == 4) {

    diapo4();

  }

}

// PORTADA

void portada() {

  // imagen de fondo
  image(fondo1, 0, 0, 640, 480);
  fill(0, 90);
  rect(0, 0, 640, 480);

  // logo y su animacion

  image(logo, logoX, 20, 220, 90);
  
  logoX = logoX - 4;

  if (logoX < 20) {

    logoX = 20;

  }

  // BOTON
  
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

  fill(0);

  textFont(crash);

  textSize(24);

  textAlign(CENTER);

  text("COMENZAR", 510, 423);

  textAlign(LEFT);

}

void diapo1() {

  image(fondo2, 0, 0, 640, 480);

  fill(0, 70);
  rect(0, 0, 640, 480);

  fill(80, 80, 80, 190);

  rect(40, textoPantalla1Y - 60, 560, 250);

  fill(255);

  textFont(crash);

  textAlign(CENTER);

  textSize(26);

  text("HISTORIA", 320, textoPantalla1Y);

  textSize(15);

  text("Crash, sus amigos y el equipo de Cortex", 320, textoPantalla1Y + 45);

  text("son abducidos por el Emperador Velo XXVII,", 320, textoPantalla1Y + 75);

  text("un tirano alienigena obsesionado con las", 320, textoPantalla1Y + 105);

  text("carreras de karts. Velo les impone competir", 320, textoPantalla1Y + 135);

  text("en un torneo galactico o destruira la Tierra.", 320, textoPantalla1Y + 165);

  textAlign(LEFT);

  // animacion diapositiva 1

  textoPantalla1Y = textoPantalla1Y - 5;

  if (textoPantalla1Y < 150) {

    textoPantalla1Y = 150;

  }

  // fade

  fill(0, fade);

  rect(0, 0, 640, 480);

  fade = fade - 4;

  if (fade < 0) {

    fade = 0;

  }

  // transicion

  if (millis() - tiempo > 9000) {

    pantalla = 2;

    tiempo = millis();

    fade = 255;

  }

}

void diapo2() {

  image(fondo3, 0, 0, 640, 480);

  fill(0, 70);
  rect(0, 0, 640, 480);

  fill(80, 80, 80, 190);

  rect(40, textoPantalla2Y - 60, 560, 250);

  fill(255, 180, 0);

  textFont(crash);

  textAlign(CENTER);

  textSize(26);

  text("TORNEO GALACTICO", 320, textoPantalla2Y);

  textSize(15);

  text("Divididos entre el Equipo Bandicoot y", 320, textoPantalla2Y + 45);

  text("el Equipo Cortex, los corredores viajan", 320, textoPantalla2Y + 75);

  text("por Terra, Barin, Fenomena y Teknee,", 320, textoPantalla2Y + 105);

  text("enfrentando pistas con lava, hielo,", 320, textoPantalla2Y + 135);

  text("gravedad alterada y tecnologia futurista.", 320, textoPantalla2Y + 165);

  textAlign(LEFT);

  // animacion diapositiva 2

  textoPantalla2Y = textoPantalla2Y - 5;

  if (textoPantalla2Y < 150) {

    textoPantalla2Y = 150;

  }

  // fade

  fill(0, fade);

  rect(0, 0, 640, 480);

  fade = fade - 4;

  if (fade < 0) {

    fade = 0;

  }

  // transicion

  if (millis() - tiempo > 9000) {

    pantalla = 3;

    tiempo = millis();

    fade = 255;

  }

}

void diapo3() {

  image(fondo4, 0, 0, 640, 480);

  fill(0, 70);
  rect(0, 0, 640, 480);

  fill(80, 80, 80, 190);

  rect(40, textoPantalla3Y - 60, 560, 250);

  fill(255);

  textFont(crash);

  textAlign(CENTER);

  textSize(26);

  text("LA BATALLA FINAL", 320, textoPantalla3Y);

  textSize(15);

  text("Tras derrotar a todos los campeones,", 320, textoPantalla3Y + 45);

  text("Crash y sus amigos vencen al mismisimo", 320, textoPantalla3Y + 75);

  text("Emperador Velo, quien revela ser un", 320, textoPantalla3Y + 105);

  text("pequeno alienigena verde escondido", 320, textoPantalla3Y + 135);

  text("dentro de un enorme cuerpo robotico.", 320, textoPantalla3Y + 165);

  textAlign(LEFT);

  // animacion diapositiva 3

  textoPantalla3Y = textoPantalla3Y - 5;

  if (textoPantalla3Y < 150) {

    textoPantalla3Y = 150;

  }

  // fade

  fill(0, fade);

  rect(0, 0, 640, 480);

  fade = fade - 4;

  if (fade < 0) {

    fade = 0;

  }

  // transicion

  if (millis() - tiempo > 9000) {

    pantalla = 4;

    tiempo = millis();

    fade = 255;

  }

}

void diapo4() {

  image(fondo5, 0, 0, 640, 480);

  fill(0, 150);
  rect(0, 0, 640, 480);

  fill(255, 180, 0);

  textFont(crash);

  textAlign(CENTER);

  textSize(40);

  text("GRACIAS", 320, 120);

  textSize(20);

  text("Fin de la presentacion", 320, 220);

  // boton 
  
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

  text("REINICIAR", 320, 358);

  // fade

  fill(0, fade);

  rect(0, 0, 640, 480);

  fade = fade - 4;

  if (fade < 0) {

    fade = 0;

  }

  textAlign(LEFT);

}

void mousePressed() {

  // boton de comenzar

  if (pantalla == 0 &&
      mouseX > 420 &&
      mouseX < 600 &&
      mouseY > 390 &&
      mouseY < 440) {

    pantalla = 1;

    tiempo = millis();

    fade = 255;

  }

  // boton de reinicio

  else if (pantalla == 4 &&
           mouseX > 220 &&
           mouseX < 420 &&
           mouseY > 320 &&
           mouseY < 380) {

    pantalla = 0;
    textoPantalla1Y = 600;
    textoPantalla2Y = 600;
    textoPantalla3Y = 600;

    tiempo = millis();

    fade = 255;
    
    logoX = 700;
    
  }

}
