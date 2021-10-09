// This is a simple panel design with Cutouts by Trevor Smale
// T

echo(version=version());

// Intersection 1

difference() {

// Base rectangle

color("red")
    translate([0, 0, 0.5])
        linear_extrude(height = 2)
            square([20, 10], center = true);
           
// Boolean Difference Object 1
// Note: by adding $fn I can specify the number of facets of the cylinder

color("blue")
    translate([5, 0, 0])
        linear_extrude(height = 3)
            circle(r = 2, $fn=24, center = true);
            
// Boolean Difference Object 2
            
color("magenta")
    translate([-5, 0, 0])
        linear_extrude(height = 3)
            square([5, 5], center = true);
    
// Boolean Difference Object 3
// Corner Screw Hole

color("green")
    translate([9, 4, 0])
        linear_extrude(height = 3)
            circle(r = 0.5, $fn=24, center = true);

// Boolean Difference Object 4
// Corner Screw Hole

color("yellow")
    translate([9, -4, 0])
        linear_extrude(height = 3)
            circle(r = 0.5, $fn=24, center = true);
            
// Boolean Difference Object 5
// Corner Screw Hole

color("orange")
    translate([-9, 4, 0])
        linear_extrude(height = 3)
            circle(r = 0.5, $fn=24, center = true);

// Boolean Difference Object 6
// Corner Screw Hole

color("magenta")
    translate([-9, -4, 0])
        linear_extrude(height = 3)
            circle(r = 0.5, $fn=24, center = true);

}