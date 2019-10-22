class UI
{
  int LayerTabSizeLineHeight;
  int LayerTabSizeLineWidth;
  color TabsColour = 153;
  float LayerTabSizeLineY;
  float LayerTabSizeLineX;
  float LayerTabSizeOffPos = 0.0;
  boolean LayerTabSizeLock = false;
  boolean LayerTabSizeLineOver = false;
  boolean Openobjecttypetab = true;

  UI()
  {
    LayerTabSizeLineX = displayWidth-345;
    LayerTabSizeLineY = 240;
    LayerTabSizeLineHeight = 2;
    LayerTabSizeLineWidth = 330;
  }

  void Draw() {
    rightsidesettingstabsback();
    //print(LayerTabSizeLineY);
  }
  void rightsidesettingstabsback() {
    fill(50);
    noStroke();
    rect(displayWidth-360, 0, 360, displayHeight);
    objectlayerstab();
    objecttypetab();
    TabSizesAndLines();
  }
  void objectlayerstab() {
    if (LayerTabSizeLineY <= 25) {
      Openobjecttypetab = false;
      LayerTabSizeLineWidth = 358;
      LayerTabSizeLineX = displayWidth-359;
      PFont Sanserif = createFont("SansSerif", 48);
      textFont(Sanserif);
      String LayersClosedTabText = "Layers";
      textSize(14);
      fill(153);
      text(LayersClosedTabText, displayWidth-355, 18);
      println("WEEEEE");
    } else if (LayerTabSizeLineY-10 >= 10) {
      LayerTabSizeLineWidth = 330;
      LayerTabSizeLineX = displayWidth-345;
      Openobjecttypetab = true;
    } 

    if (Openobjecttypetab == true) {
      fill(TabsColour);
      rect(displayWidth-355, displayHeight-(displayHeight-7), 350, LayerTabSizeLineY-5, 10);
    }
  }
  void objecttypetab() {
    fill(TabsColour);
    rect(displayWidth-355, (LayerTabSizeLineY-10)+20, 350, 300, 10);
  }
  void TabSizesAndLines() {
    if (mouseX > LayerTabSizeLineX-LayerTabSizeLineWidth && mouseX < LayerTabSizeLineX+LayerTabSizeLineWidth && 
      mouseY > LayerTabSizeLineY-LayerTabSizeLineHeight && mouseY < LayerTabSizeLineY+LayerTabSizeLineHeight) {
      LayerTabSizeLineOver = true;  
      if (!LayerTabSizeLock) {  
        stroke(200);
      }
    } else {
      stroke(153);
      LayerTabSizeLineOver = false;
    }
    rect(LayerTabSizeLineX, LayerTabSizeLineY, LayerTabSizeLineWidth, LayerTabSizeLineHeight);
  }
}
