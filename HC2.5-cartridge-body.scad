tolerance = 0.2;
drivewidth = 69.85;
drivelength = 100.2;
driveheight = 7;
driveexposed = tolerance*2;
bodylength = 90;
bodywidth = 73.05;
bodyheight = 10.2;
tabwidth1 = 90;
tablength1 = 13;
tabheight1 = 10.2;
tabradius2 = 27;
tabheight2 = 9;
difference() {
    union() {
        cube([bodywidth,bodylength,bodyheight],center=true); //the large rectangle containing the drive
        translate([0,bodylength/2+tablength1/2,0])
        cube([tabwidth1,tablength1,tabheight1],center=true); //the wide square tab
        translate([0,bodylength/2+tablength1,0])
        cylinder(tabheight2,tabradius2,tabradius2,center=true,$fn=1024);
    } //the cylindrical top tab
    translate([0,-(driveexposed*2),0])
    cube([drivewidth+tolerance,drivelength,driveheight+tolerance],center=true); //the drive cutout
}