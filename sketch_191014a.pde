int GrdSize = 20;
int thrmdshtX = 4;
int thrmdshtY = 2;
int Colms; 
int Rows;
UI ui;
void setup() {
  //fullScreen(P3D);
  size(displayWidth, displayHeight, P3D);

  Colms = (displayHeight-480)/GrdSize;
  Rows = (displayHeight-480)/ GrdSize;

  ui = new UI();
}

void draw() 
{

  ThreeDMdlGrd();
  ui.Draw();
}

void ThreeDMdlGrd() {
  int centerColm = (GrdSize*Colms)/2;
  int centerRow = (GrdSize*Rows)/2;
  background(40);
  for (int x = 0; x < Colms; x++) {
    for (int y = 0; y < Rows; y++) {
      pushMatrix();
      translate(width/thrmdshtX, height/thrmdshtY);
      float threedmodelmouseX = map(mouseY, 100, 200, 200, 300);
      float threedmodelmouseY = map(mouseX, 100, 200, 200, 300);
      rotateX(threedmodelmouseX/200);
      rotateY(threedmodelmouseY/200);
      stroke(255);
      noFill();
      rect((x*GrdSize)-centerColm, (y*GrdSize)-centerRow, GrdSize, GrdSize);
      popMatrix();
    }
  }
}

void mousePressed() {
    if (ui.LayerTabSizeLineOver) { 
      ui.LayerTabSizeLock = true; 
      fill(255, 255, 255);
    } else {
      ui.LayerTabSizeLock = false;
    }
    ui.LayerTabSizeOffPos = mouseY-ui.LayerTabSizeLineY;
  }
void mouseDragged() {
  if (ui.LayerTabSizeLock) {
    if (ui.LayerTabSizeLineY >= 25) {
      ui.LayerTabSizeLineY = mouseY-ui.LayerTabSizeOffPos;
      if (ui.LayerTabSizeLineY < 25) {
        ui.LayerTabSizeLineY = 25;
      }
    }
  }
}
void mouseReleased() {
  ui.LayerTabSizeLock = false;
}
