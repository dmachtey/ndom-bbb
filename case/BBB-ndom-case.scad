wall_thickness=6.5;
base_thickness=2.0;
bb_depth=20;
bb_width=56.5;
bb_height=89.5;
bb_curve_corner=10;

peg_pow_front=16.5;
peg_pow_side=3.5;

peg_sd_front=7;
peg_sd_side=7;

peg_outer_radius=2.8;
peg_inner_radius=2.0;

module RoundedBB(extra_width,extra_height,depth,curve=bb_curve_corner) {
          minkowski() {
               cube([bb_width-curve+extra_width,bb_height-curve+extra_height,depth],center=true);
               cylinder(r=curve/2, height=depth, $fn=32);
          }
}

module BeagleBox(curve=bb_curve_corner) {
     union () {
     difference() {
          RoundedBB(wall_thickness, wall_thickness, bb_depth, curve);
          translate([0,0,base_thickness])
               RoundedBB(0, 0, bb_depth, curve-2);
     }
     translate([0,55+2.5,0.5])
            cube([bb_width+wall_thickness,23,bb_depth+1],center=true);

     // wall corrections
     translate([bb_width/2+wall_thickness/2-1.5,40,0.5])
          cube([3,23,bb_depth+1],center=true);

     translate([-bb_width/2-wall_thickness/2+1.5,40,0.5])
          cube([3,23,bb_depth+1],center=true);
     }
}

difference() {
     union() {
          difference() {
               BeagleBox();

               translate([0,0,-bb_depth/2+9]) {
                    // -- Bottom End --

                    // Power connector
                    %				translate([18,-bb_height/2,2.5])
                         cube([10,10,12],center=true);
                    translate( [18,-45,4] )
                         rotate( [90,0,0] )
                         cylinder( r=6, h=9, center=true );
                    translate([18,-bb_height/2,2.5])
                         cube([10,10,12],center=true);
                    // Ethernet port
                    translate([-2,-bb_height/2,3.5])
                         cube([16.5,10,14],center=true);

                    // Mini USB (Underneath)
                    // translate([-23,-bb_height/2-5,-16])     // protruding
                    // translate([-23,-bb_height/2,-9+0.334])  // thin layer underneath
                    //	cube([10,12,base_thickness-0.3333]);
                    translate([-23,-bb_height/2-10,-10])
                         cube([12,20,9]);
                    // original mini USB, doesn't fit cable
                    % translate([-22,-bb_height/2-10,-12])
                           cube([10,20,8]);

                    // -- Top reduction Damian--
                    translate([-56/2,40,8.01-1])
                           cube([56,30,17-12]);

                    // -- End reduction
                    translate([-48/2,47.9,-11])
                         cube([48,22,20]);


                    // SD Card slot
                    translate([-6.5-4,bb_height/2,-5.0])
                         cube([12,10,5], center=true); // was 3 in z
                    // Original SD slot
                    %				translate([-6.5,bb_height/2,-5.5])
                                         cube([12,10,2], center=true);
                    // thumb depression for inserting card
                    translate([-6.5-4,bb_height/2+3.5,-5.0])
                         scale( [1,2.3,0.5] )
                         rotate( [90,0,0] )
                         cylinder( r1=7, r2=0, h=6 );
                    // HDMI port
                    translate([-6.5+3.0,bb_height/2-9,-12.0])
                         cube([12,20,9]);
                    // USB port
                    translate([10.5,bb_height/2,2.0])
                         cube([16,10,8.5],center=true);
               }
          }

          // Pegs
          translate([0,0,-bb_depth/2+9]) {
               // Pegs on "power" end
               translate([-bb_width/2+peg_pow_side,-bb_height/2+peg_pow_front,-6])
                    cylinder(r=peg_outer_radius,h=2,$fn=32,center=true);
               translate([bb_width/2-peg_pow_side,-bb_height/2+peg_pow_front,-6])
                    cylinder(r=peg_outer_radius,h=2,$fn=32,center=true);

               // Pegs on "sd card" end
               translate([-bb_width/2+peg_sd_side,bb_height/2-peg_sd_front,-6])
                    cylinder(r=peg_outer_radius,h=2,$fn=32,center=true);
               translate([bb_width/2-peg_sd_side,bb_height/2-peg_sd_front,-6])
                    cylinder(r=peg_outer_radius,h=2,$fn=32,center=true);
          }
     }
     // Drill holes through pegs and floor
//	translate([0,0,-bb_depth/2+9]) {
     // Pegs on "power" end
//		translate([-bb_width/2+peg_pow_side,-bb_height/2+peg_pow_front,-5])
//			cylinder(r=peg_inner_radius,h=10,$fn=32,center=true);
//		translate([bb_width/2-peg_pow_side,-bb_height/2+peg_pow_front,-5])
//			cylinder(r=peg_inner_radius,h=10,$fn=32,center=true);

     // Pegs on "sd card" end
//		translate([-bb_width/2+peg_sd_side,bb_height/2-peg_sd_front,-5])
//			cylinder(r=peg_inner_radius,h=10,$fn=32,center=true);
//		translate([bb_width/2-peg_sd_side,bb_height/2-peg_sd_front,-5])
//			cylinder(r=peg_inner_radius,h=10,$fn=32,center=true);
//	}
}
