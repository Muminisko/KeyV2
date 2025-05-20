include <./includes.scad>
 
legends = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"];
 
for (x = [0:1:3]) {
  for (y = [0:1:3]) {
    bar_support() rounded_cherry(0.45) tined_stem_support() row_profile("mt3") translate_u(x,y) legend(legends[y*4+x])   mt3_row() {
      // swap the debug()s to render     opposite part
      debug() key(true);
      /* debug() */ dished() {
        legends($inset_legend_depth);
      }
    }
  }
}


