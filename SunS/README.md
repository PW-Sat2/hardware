# SunS - Experimental Sun Sensor
The SunS was designed as a cheap, easy-to-build coarse Sun Sensor suitable for CubeSat application. It features two-axis measurement, wide-angle FOV, measurement accuracy better than 5 degrees and CubeSat standard compatible I2C bus.

![PW-Sat2 SunS FM Render](img/renders/EM4.04_FM/2.png)

# SunS versions

There are a few versions of SunS and EGSE (Electrical Ground Support Equipment):
    * **SunS DM1** - demonstration model of the SunS, main aim: a very first feasibility studies on repleacing solar cells with ambient light sensors (ALS),
    * **SunS EM3.03** - third engineering model of the SunS, however it's the first EM version after major system modification,
    * **SunS EM4.04** - improved version of EM3.03 in terms of schematic and PCB, all main components remained the same, fully operational, the design qualified as Flight Model design,
    * **SunS FM** - actually not a new design/version, but a new item build and qualified as flight model.

    NOTE: EM 1.01 utilizes solar cells intead of ambient light sensors, EM 2.02 was the second iteration of the sensor using solar cells (never produced, repleaced by SunS DM1).


# Software

* Embedded software for SunS [AVR microcontroller](https://github.com/PW-Sat2/avr/releases/tag/SunSv1.0)


# Credits

* Early, conceptual design: Inna Uwarowa
* Electronics of Test Stand (turntable), Demonstration Models Electronics (prototypes): Piotr Kuligowski
* Turntable mechanics: Artur Łukasik
* Mechanical design, photonics, calibration: Mateusz Sobiecki
* Electronics design and assembly, software design, calibration: Michał Gumiela
