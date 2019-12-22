$fn=100;
difference() {
    cylinder(h = 6, r1 = 25/2, r2 = 25/2, center = true);
    cylinder(h =10, r1 = 1, r2 = 1, center = true);
    rotate_extrude($fn=100)translate([(25/2)+(0.8/2),0,0])circle(r=2);
}