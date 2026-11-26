GOKTURK FlightGear Canards FINAL

Use this package with the ASCII Simulink path:

  canard_test_motion -> Saturation -> canard_udp_packet -> UDP Send

FlightGear protocol:

  Protocol/canards.xml

Run argument:

  --generic=socket,in,30,,5503,udp,canards

Do not use canards_binary.xml with this package.

Install:

1) Copy:
   flightgear_canards_FINAL\Aircraft\RocketTest

   to:
   C:\Users\aliki\FlightGear\Downloads\fgdata_2024_1\Aircraft\RocketTest

2) Copy:
   flightgear_canards_FINAL\Protocol\canards.xml

   to:
   C:\Users\aliki\FlightGear\Downloads\fgdata_2024_1\Protocol\canards.xml

3) Start FlightGear with:
   flightgear_canards_FINAL\runfg_canards_FINAL.bat

Canard axes:

  Canard_1: center (-0.090,0,0), axis (0,0,+1)
  Canard_2: center (-0.090,0,0), axis (0,+1,0)
  Canard_3: center (-0.090,0,0), axis (0,0,-1)
  Canard_4: center (-0.090,0,0), axis (0,-1,0)

If one canard rotates in the opposite direction, change only its <factor>
from 1 to -1 in Aircraft/RocketTest/Models/rocket.xml.
