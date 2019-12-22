$fn=100;
module main() {
    
    difference() {
    cylinder(h =10, r1 = 80/2, r2 = 80/2, center = true);
    cylinder(h =10, r1 = 1, r2 = 1, center = true);
    //circlefitSpokes( 60, 10, 60, 10 );
    rotate_extrude($fn=100)translate([(80/2)+(4/2),0,0])circle(r=6);

}
    
    }



 

   
        
                //main();
       
               
               circlefitSpokes( 70, 10, 20, 14);
            
            


module circlefitSpokes( diameter, hubDiameter, width, outerHoleDiameter ) {
	echo( "Circlefit Style..." ); 

	padding = 0; 
	paddedHoleRadius = (diameter-hubDiameter)/4;
	holeRadius = paddedHoleRadius - padding/2;
	hubRadius = hubDiameter/2; 

	// Figure out how many circles will fit. 
	circles = floor(360/(2*(asin(paddedHoleRadius/(paddedHoleRadius+hubRadius)))));
	difference() {
		//cylinder( h=width, r= diameter/2, center = true ); 
        main();
		for ( i = [0 : circles-1] ) {
		   	 rotate( i * (360/circles), [0, 0, 1])
		   	 translate([hubRadius + paddedHoleRadius, 0, 0])
		   	 cylinder(h=width+1, r=holeRadius, center=true);
		}

		// Smaller holes to conserve filament
	   	rotate( 360/circles/2, [0, 0, 1])
		for ( i = [0 : circles-1] ) {
		   	 rotate( i * (360/circles), [0, 0, 1])
		   	 translate([diameter/2-outerHoleDiameter/2, 0, 0])
		   	 cylinder(h=width+1, r=outerHoleDiameter/2, center=true);
		}
	}
}