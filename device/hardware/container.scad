$fn=150;

radius = 100;
outerBorderThickness = 1.5;

innerRadius = 39;
innerBorderThickness = 1;

bottomThickness = 1;
height = 50 - bottomThickness;

holeDistanceFromSide = 10;
holeInnerRadius = 3.5;
holeBorderThickness = 1;




pillar(radius, outerBorderThickness, height);
pillar(innerRadius, innerBorderThickness, height);

difference() {
    translate([0, 0, -bottomThickness]) {
        pillar(innerRadius, radius - innerRadius + outerBorderThickness, bottomThickness);
    }

    translate([radius - holeDistanceFromSide - holeInnerRadius / 2, 0, -bottomThickness]) {
        cylinder(bottomThickness, holeInnerRadius, holeInnerRadius);
    }
    translate([0, radius - holeDistanceFromSide - holeInnerRadius / 2, -bottomThickness]) {
        cylinder(bottomThickness, holeInnerRadius, holeInnerRadius);
    }

    translate([-(radius - holeDistanceFromSide - holeInnerRadius / 2), 0, -bottomThickness]) {
        cylinder(bottomThickness, holeInnerRadius, holeInnerRadius);
    }

    translate([0, -(radius - holeDistanceFromSide - holeInnerRadius / 2), -bottomThickness]) {
        cylinder(bottomThickness, holeInnerRadius, holeInnerRadius);
    }

}


translate([radius - holeDistanceFromSide - holeInnerRadius / 2, 0, 0]) {
    pillar(holeInnerRadius, holeBorderThickness, height);
}

translate([0, radius - holeDistanceFromSide - holeInnerRadius / 2, 0]) {
    pillar(holeInnerRadius, holeBorderThickness, height);
}

translate([-(radius - holeDistanceFromSide - holeInnerRadius / 2), 0, 0]) {
    pillar(holeInnerRadius, holeBorderThickness, height);
}

translate([0, -(radius - holeDistanceFromSide - holeInnerRadius / 2), 0]) {
    pillar(holeInnerRadius, holeBorderThickness, height);
}






module pillar(innerRadius, thickness, height) {
    difference() {
        cylinder(height, innerRadius + thickness, innerRadius + thickness);
        cylinder(height, innerRadius, innerRadius);
    }
}