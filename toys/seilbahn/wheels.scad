
difference() {
    cylinder(h = 3, r1 = 16.1/2, r2 = 16.1/2, center = true);
    cylinder(h =10, r1 = 1, r2 = 1, center = true);
    rotate_extrude($fn=100)translate([(16.1/2)+(1.5/2),0,0])circle(r=1.5);
}