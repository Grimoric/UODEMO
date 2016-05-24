// Real-C
#include "ENGINE.hpp"

#include "globals.h"

MEMBER int Q5M6;

TRIGGER( creation )()
{
  callback(this, 0x0708, 0x74);
  return(0x01);
}

FUNCTION int Q4ZC(obj Q4XN)
{
  loc Q51A = loc( 0x14AB, 0x0496, 0x00 );
  loc Q5AH = loc( getLocation(Q4XN) );
  if(getDistanceInTiles(Q51A, Q5AH) < 0x32)
  {
    return(0x01);
  }
  return(0x00);
}

FUNCTION void Q65W(obj Q4XN)
{
  loc Q4U3 = loc( 0x05E0, 0x05F9, 0x28 );
  if(hasObjVar(Q4XN, "UnJailLoc"))
  {
    Q4U3 = loc( getObjVar(Q4XN, "UnJailLoc") );
    removeObjVar(Q4XN, "UnJailLoc");
  }
  int Q527 = teleport(Q4XN, Q4U3);
  return;
}

TRIGGER( callback , 0x74 )()
{
  shortcallback(this, 0x01, 0x75);
  if(Q4ZC(this))
  {
    Q5M6 = 0x01;
    Q65W(this);
  }
  return(0x01);
}

TRIGGER( callback , 0x75 )()
{
  if(Q5M6)
  {
    systemMessage(this, "You have been released from jail");
  }
  if(hasObjVar(this, "UnJailLoc"))
  {
    removeObjVar(this, "UnJailLoc");
  }
  if(hasObjVar(this, "NoLogOut"))
  {
    removeObjVar(this, "NoLogOut");
  }
  detachScript(this, "jailcheck");
  return(0x01);
}