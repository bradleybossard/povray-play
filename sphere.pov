#include "colors.inc"    // The include files contain
#include "stones.inc"    // The include files contain

camera {
  location <0, 2, -19>
  look_at  <0, 1,  2>
}


//light_source { <2, 4, -3> color White}
light_source { <2, 4, -3> color rgb <1.0, 0.2, 0.0>}

/*
box {
  <-1, 0,   -1>,  // Near lower left corner
  < 1, 0.5,  3>   // Far upper right corner
  texture {
    T_Stone25     // Pre-defined from stones.inc
    scale 4       // Scale by the same amount in all
                  // directions
  }
  rotate y*20     // Equivalent to "rotate <0,20,0>"
}
*/

/*
sphere {
  <0, 1, 2>, 2
  texture {
    //pigment { color Yellow }
    pigment { color rgb <1.0, 0.8, 0.8> }
  }
}
*/

/*
cone {
  <0, 1, 0>, 0.0    // Center and radius of one end
  <0, 3, 0>, 1.0    // Center and radius of other end
  texture { T_Stone25 scale 4 }
}

torus {
  2, 0.2              // major and minor radius
  rotate -90*x      // so we can see it from the top
  pigment { Green }
}
*/
/*
difference {
  torus {
    4, 1
    rotate x*-90  // so we can see it from the top
  }
  box { <-5, -5, -1>, <5, 0, 1> }
  pigment { Green }
}
*/

/*
plane { <0, 1, 0>, -1
  pigment {
    checker color Red, color Black
  }
}
*/

#declare Half_Torus = difference {
  torus {
    4, 1
    rotate -90*x  // so we can see it from the top
  }
  box { <-5, -5, -1>, <5, 0, 1> }
  pigment { Green }
}
#declare Flip_It_Over = 180*x;
#declare Torus_Translate = 8;  // twice the major radius


union {
  object { Half_Torus }
  object { Half_Torus
    rotate Flip_It_Over
    translate Torus_Translate*x
  }
}

 union {
    object { Half_Torus }
    object { Half_Torus
      rotate Flip_It_Over
      translate x*Torus_Translate
    }
    object { Half_Torus
      translate x*Torus_Translate*2
    }
    object { Half_Torus
      rotate Flip_It_Over
      translate x*Torus_Translate*3
    }
    object { Half_Torus
      rotate Flip_It_Over
      translate -x*Torus_Translate
    }
    object { Half_Torus
      translate -x*Torus_Translate*2
    }
    object { Half_Torus
      rotate Flip_It_Over
      translate -x*Torus_Translate*3
    }
    object { Half_Torus
      translate -x*Torus_Translate*4
    }
    //rotate y*45
    translate z*20
  }


