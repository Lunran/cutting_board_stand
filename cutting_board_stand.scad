width = 120;
depth = 75;
height = 75;
frame_tn = 3;
board_tn = 18;

difference() {
     rotate([90,0,90])linear_extrude(height=width) polygon(points=[[0,0], [depth,0], [depth/2,height]]);
     union () {
          translate([frame_tn,frame_tn,0]) cube([width-frame_tn*2, depth-frame_tn*2, height]);
          translate([0,depth/2-board_tn/2,height/2]) cube([width, board_tn, height]);
          translate([width/2,depth/2-board_tn/2,height/4]) cube([width, board_tn, height]);
     }
}
