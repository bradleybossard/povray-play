#include "colors.inc"    // The include files contain

camera {
  location <0, 2, -3>
  look_at  <0, 1,  2>
}


light_source { <2, 4, -3> color White}

sphere {
  <0, 1, 2>, 2
  texture {
    //pigment { color Yellow }
    pigment { color rgb <1.0, 0.8, 0.8> }
  }
}
