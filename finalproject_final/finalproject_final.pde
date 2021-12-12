// Final Project 
// I included many instrument sound effects and some random ones too. I included a metronome which is 100 beats per minute. This project also includes a microphone visualizer. 
// Instructions - Piano: a = C4, s = D4, d = E4, f = F4, g = G4, h = A4, j = B4
// Drums - Snare = z, Cymbal = x
// Bass - Bitcrush = c, bass = v
// Clap = b
// metronome = Hover over the button with your mouse and click
// This project is capslock sensitive, so make sure you have your caps lock off


PImage piano, cymball;

 import processing.sound.*;
  import gifAnimation.*;
SoundFile metronome, C4, D4, E4, F4, G4, A4, B4, snare, cymbal, bitcrush, bass, clap;
Waveform waveform;
Waveform waveform2;
Gif musicnote;

AudioIn in;


int samples = 100;


void setup() {
  size(640, 480, P2D);

C4 = new SoundFile(this, "C4.mp3"); 
D4 = new SoundFile(this, "D4.mp3"); 
E4 = new SoundFile(this, "E4.mp3"); 
F4 = new SoundFile(this, "F4.mp3"); 
G4 = new SoundFile(this, "G4.mp3"); 
A4 = new SoundFile(this, "A4.mp3"); 
B4 = new SoundFile(this, "B4.mp3"); 
snare = new SoundFile(this, "snare.wav"); 
cymbal = new SoundFile(this, "cymbal.wav"); 
metronome = new SoundFile(this, "metronome.mp3");
bitcrush = new SoundFile(this, "bitcrush.wav");
bass = new SoundFile(this, "808.wav");
clap = new SoundFile(this, "clap.wav");
in = new AudioIn(this, 0);
  
  in.play();



 waveform = new Waveform(this, samples);
 waveform.input(in);









}

void draw() {
  textMode(CENTER);
  imageMode(CENTER);
  rectMode(CENTER);
 
  background(0);
cymball = loadImage("cymball.png");
  image(cymball, 550, 365);

   stroke(255);
  strokeWeight(2);
  noFill();


  waveform.analyze();

  beginShape();
  for(int i = 0; i < samples; i++)
  {
    vertex(
      map(i, 0, samples, 0, width),
      map(waveform.data[i], -1, 1, 0, height) // https://processing.org/reference/libraries/sound/Waveform.html
   
    );

}
    endShape();

 stroke(255);
  strokeWeight(1);

  fill(255);
  rect(230, 400, 30, 155);
  
    fill(255);
  rect(260, 400, 30, 155);
  
  fill(255);
  rect(290, 400, 30, 155);
  
   fill(255);
  rect(320, 400, 30, 155);
  
  
  fill(255);
  rect(350, 400, 30, 155);
  
  fill(255);
  rect(380, 400, 30, 155);
  
  fill(255);
  rect(410, 400, 30, 155);

  // black notes 
    
    fill(0);
  rect(244, 365, 20, 85);
  
   fill(0);
  rect(274, 365, 20, 85);
  
   fill(0);
  rect(334, 365, 20, 85);
  
  fill(0);
  rect(364, 365, 20, 85);
  
  // drum snare
  fill(207, 185, 151);
  ellipse(100, 365, 70, 70);
  
  
  // bitcrush bass
  fill(0, 0, 200);
  ellipse(100, 250, 70, 70);
  
  // bass 808
  
  fill(200, 0, 0);
  ellipse(550, 250, 70, 70);
  
   // clap
  
  fill(0, 200, 0);
  ellipse(320, 250, 70, 70);
  
  // metronome
    fill(0, 200, 0);
  rect(320, 50, 150, 40);
    fill(0, 0, 0);
text("metronome", 265, 58);
textSize(20);
 
 fill(200, 0, 0);
  rect(450, 50, 70, 40);
 
  fill(255);
text("snare", 72, 420);
textSize(20);

fill(255);
text("bitcrush", 66, 310);
textSize(20);

fill(255);
text("clap", 300, 310);
textSize(20);

fill(255);
text("cymbal", 517, 420);
textSize(20);

fill(255);
text("bass", 522, 310);
textSize(20);


if(mouseX > 240 && mouseX < 400 && mouseY > 30 && mouseY < 70){
  fill(20);
  rect(320, 50, 150, 40);
}
  if(mouseX > 410 && mouseX < 500 && mouseY > 30 && mouseY < 70){
 fill(50, 0, 0);
  rect(450, 50, 70, 40);
 
}
if (keyPressed) {
  if (key == 'a') {
fill(20);
  rect(230, 400, 30, 155);
    }
if (keyPressed) {
  if (key == 's') {
fill(20);
  rect(260, 400, 30, 155);
  }
if (keyPressed) {
  if (key == 'd') {
  fill(20);
  rect(290, 400, 30, 155);
  }
if (keyPressed) {
  if (key == 'f') {
 fill(20);
  rect(320, 400, 30, 155);
  }
if (keyPressed) {
  if (key == 'g') {
fill(20);
  rect(350, 400, 30, 155);
  
  }
if (keyPressed) {
  if (key == 'h') {
  fill(20);
  rect(380, 400, 30, 155);
  }
  if (keyPressed) {
  if (key == 'j') {
   fill(20);
  rect(410, 400, 30, 155);

  }
if (keyPressed) {
  if (key == 'z') {
   fill(20);
  ellipse(100, 365, 70, 70);
}
if (keyPressed) {
  if (key == 'x') {
   fill(20);
  ellipse(550, 365, 70, 70);

  }
   if (keyPressed) {
  if (key == 'c') {
   fill(0, 0, 100);
  ellipse(100, 250, 70, 70);
  }
    if (keyPressed) {
  if (key == 'v') {
   fill(100, 0, 0);
  ellipse(550, 250, 70, 70);
}
  if (keyPressed) {
  if (key == 'b') {
   fill(0, 100, 0);
  ellipse(320, 250, 70, 70);
   }
}
    }
}
}
}
}
}
}
} 
}
}
}
}


void mousePressed() {
  if(mouseX > 240 && mouseX < 400 && mouseY > 30 && mouseY < 70){
  metronome.play();

}
if(mouseX > 410 && mouseX < 580 && mouseY > 30 && mouseY < 70){
  metronome.stop();
}
}
void keyPressed() {
if (keyPressed) {
  if (key == 'a') {
     C4.play();
}
if (keyPressed) {
  if (key == 's') {
     D4.play();
}
if (keyPressed) {
  if (key == 'd') {
     E4.play();
}
if (keyPressed) {
  if (key == 'f') {
     F4.play();
}
if (keyPressed) {
  if (key == 'g') {
     G4.play();
}
if (keyPressed) {
  if (key == 'h') {
     A4.play();
  }
  if (keyPressed) {
  if (key == 'j') {
     B4.play();
  }
   if (keyPressed) {
  if (key == 'z') {
  snare.play();
}
if (keyPressed) {
  if (key == 'x') {
  cymbal.play();
}
  if (keyPressed) {
  if (key == 'c') {
bitcrush.play();
  }
   if (keyPressed) {
  if (key == 'v') {
bass.play();
  }
if (keyPressed) {
  if (key == 'b') {
clap.play();
  }
}
  }
}
}
}
}
}
}
}
}
}
}
}
