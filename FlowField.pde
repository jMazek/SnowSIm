class FlowField {
  PVector[][] flowfield;
  int scl = 20;
  int cols = height/scl;
  int rows = width/scl;
  float inc = 0.01;
  float zoff = 0;
  PVector v;

  FlowField () {
    flowfield = new PVector[cols][rows];
    float yoff = 0;
    for (int j = 0; j < rows; j++) {
      float xoff = 0;
      for (int i = 0; i < cols; i++) {
        float angle = map(noise(xoff, yoff), 0, 1, PI, 2*PI);
        v = new PVector();
        v = PVector.fromAngle(angle);
        v.normalize();
        flowfield [i][j] = v ;
        xoff += inc;
      }
      yoff += inc;
      zoff += (inc/15);
    }
  }
}