
radius = 100;
outerBorderThickness = 1;

innerRadius = 39;
innerBorderThickness = 1;

bottomThickness = 1;
height = 2 - bottomThickness;

holeDistanceFromSide = 10;
holeInnerRadius = 4;
holeBorderThickness = 1;




pillar(radius, outerBorderThickness, height);
pillar(innerRadius, innerBorderThickness, height);

difference() {
    translate([0, 0, -bottomThickness]) {
        pillar(innerRadius, radius - innerRadius, bottomThickness);
    }

    translate([radius - holeDistanceFromSide - holeInnerRadius / 2, 0,-bottomThickness]) {
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
/*


  
module segment(innerWidth = 50) {
    
    cube([holeDepth + deviderDepth, (outerWidth - innerWidth) / 2, height]);

    translate([0, 0, 0])
      cube([deviderDepth, outerWidth, height]);
  

    translate([0, outerWidth - (outerWidth - innerWidth) / 2, 0])
       cube([holeDepth + deviderDepth, (outerWidth - innerWidth) / 2, height]);

}


segments = 72;
sidePatternDomain = 15;

smallSegmentWidth = 10;
mediumSegmentWidth = 40;
largeSegmentWidth = 90;
// middel = 13
// klein = 9

for (i = [0:1:segments]) 
{   
    translate([i * (deviderDepth + holeDepth), 0, 0]) {
        
        if (i > sidePatternDomain && i < segments - sidePatternDomain)
        {
            if (i % 2 == 0) 
            {
                if (i % 3 == 0)
                {
                    segment(mediumSegmentWidth);
                } else {
                    segment(largeSegmentWidth);
                }
            } else {
                if (i % 3 == 0)
                {
                    segment(mediumSegmentWidth);
                } else { 
                    segment(smallSegmentWidth);
                }
            }
        } else {
            if (i % 2 == 1) //(i < segments / 2 ? 1 : 0)) 
            {
                segment(smallSegmentWidth);
            } else {
                segment(largeSegmentWidth);
            }
        }
        
    }
}

translate([(segments + 1) * (deviderDepth + holeDepth), 0, 0])
    cube([borderDepth, outerWidth, height]);

translate([-borderDepth + deviderDepth, 0, 0])
    cube([borderDepth - deviderDepth, outerWidth, height]);
    
    
    */