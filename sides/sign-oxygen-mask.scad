
$fs = 0.01;


// Roundedcube function inspired by Daniel Upshaw
module roundedcube(size = [1,1,1], center = true, radius = 0.5) {
    // Create 4 cylinders for all corners of the cube, then the hull of them is made
    hull() {
        translate([size[0]/2-radius, size[1]/2-radius, 0])cylinder(h = size[2], r = radius, center = true);
        translate([-size[0]/2+radius, size[1]/2-radius, 0])cylinder(h = size[2], r = radius, center = true);
        translate([size[0]/2-radius, -size[1]/2+radius, 0])cylinder(h = size[2], r = radius, center = true);
        translate([-size[0]/2+radius, -size[1]/2+radius, 0])cylinder(h = size[2], r = radius, center = true);
    }
}




difference() {
translate([0,0,0.5])
roundedcube([100,17,1], true, 1.5);

translate([0,0,0.5])
linear_extrude(1)
text("OXYGEN MASK", size=8.4, font="DejaVu Sans:style=Bold", halign = "center", valign="center");
    
}


translate([0,0,20])
linear_extrude(0.5)
text("OXYGEN MASK", size=8.4, font="DejaVu Sans:style=Bold", halign = "center", valign="center");