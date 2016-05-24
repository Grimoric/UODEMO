// Real-C
#include "ENGINE.hpp"

TRIGGER( use )(obj user)
{
  int Q4FS = getX(getLocation(this));
  int Q4FT = getY(getLocation(this));
  int Q4FU = getZ(getLocation(this));
  int Q5CG = Q4FU + 0x01;
  loc Q5C0 = loc( Q4FS, Q4FT, Q5CG );
  loc Q4N2 = loc( 0x14AF, 0x0244, 0x00 );
  list Q5DQ;
  if(!hasObjVar(this, "working"))
  {
    bark(this, "SOUND EFFECT");
    callback(this, 0x05, 0x01);
    int Q64U = teleport(this, Q5C0);
    messageToRange(Q4N2, 0x02, "unlocked", Q5DQ);
    setObjVar(this, "working", 0x01);
  }
  return(0x01);
}

TRIGGER( callback , 0x01 )()
{
  int Q4FS = getX(getLocation(this));
  int Q4FT = getY(getLocation(this));
  int Q4FU = getZ(getLocation(this));
  int Q5CG = Q4FU - 0x01;
  loc Q5C0 = loc( Q4FS, Q4FT, Q5CG );
  bark(this, "SOUND EFFECT");
  bark(this, "returning");
  if(hasObjVar(this, "working"))
  {
    removeObjVar(this, "working");
  }
  int Q64U = teleport(this, Q5C0);
  return(0x01);
}