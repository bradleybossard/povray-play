  #include "colors.inc"
  #include "textures.inc"

  camera {
    location  <-4, 3, -9>
    look_at   <0, 0, 0>
    angle 48
  }

  #declare Lightbulb = union {
    merge {
      sphere { <0,0,0>,1 }
      cylinder {
        <0,0,1>, <0,0,0>, 1
        scale <0.35, 0.35, 1.0>
        translate  0.5*z
      }
      texture {
        pigment {color rgb <1, 1, 1>}
        finish {ambient .8 diffuse .6}
      }
    }
    cylinder {
      <0,0,1>, <0,0,0>, 1
      scale <0.4, 0.4, 0.5>
      texture { Brass_Texture }
      translate  1.5*z
    }
    rotate -90*x
    scale .5
  }


/*
  light_source {
    <0, 2, 0>
    color White
    looks_like { Lightbulb }
  }

  light_source {
    <0, 2, 0>
    color White
    area_light <1, 0, 0>, <0, 1, 0>, 2, 2
    adaptive 1
    jitter
    looks_like { Lightbulb }
  }

  light_source {
    <0, 2, 0>
    color White
    looks_like { Lightbulb }
  }

  light_source {
    <0, 2, 0>
    color White
    area_light <1, 0, 0>, <0, 1, 0>, 2, 2
    adaptive 1
    jitter
    looks_like { Lightbulb }
  }



  sphere {
    <0, 1, 2>, 2
    texture {
      pigment { color Yellow } //Yellow is pre-defined in COLORS.INC
      finish { phong 1 }
    }
  }
*/

light_source { <2, 4, -3> color White}
/*
  sphere {
    <0, 1, 2>, 2
    texture {
      pigment { color Yellow }
      normal { bumps 0.4 scale 0.2 }
      finish { phong 1 }
    }
  }
*/


  sphere {
    <0, 1, 2>, 2
    texture {
      pigment {
        wood
        color_map {
          [0.0 color DarkTan]
          [0.9 color DarkBrown]
          [1.0 color VeryDarkBrown]
        }
        turbulence 0.05
        scale <0.2, 0.3, 1>
      }
      finish { phong 1 }
    }
  }

  sphere {
    <0, 3, 2>, 2
    texture {
      pigment {
        wood
        color_map {
          [0.0 color Red]
          [0.5 color Red]
          [0.5 color Blue]
          [1.0 color Blue]
        }
        scale <0.2, 0.3, 1>
      }
      finish { phong 1 }
    }
  }
