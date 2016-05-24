// Real-C
#include "ENGINE.hpp"

#include "globals.h"

FORWARD void Q4RJ(string , int );
FORWARD void Q47N(obj , int );

TRIGGER( callback , 0x50 )()
{
  obj trackee = getObjVar(this, "trackee");
  if(!isValid(trackee))
  {
    systemMessage(this, "You have lost your quarry.");
    callback(this, 0x01, 0x51);
    return(0x00);
  }
  loc Q61U = loc( getLocation(this) );
  loc Q644 = loc( getLocation(trackee) );
  int Q4G4 = getDirectionInternal(Q61U, Q644);
  int lastDirection;
  if(hasObjVar(this, "lastDirection"))
  {
    lastDirection = getObjVar(this, "lastDirection");
    if(lastDirection != Q4G4)
    {
      setObjVar(this, "lastDirection", Q4G4);
      Q47N(trackee, Q4G4);
    }
  }
  else
  {
    setObjVar(this, "lastDirection", Q4G4);
    Q47N(trackee, Q4G4);
  }
  callback(this, 0x01, 0x50);
  return(0x00);
}

TRIGGER( callback , 0x51 )()
{
  removeObjVar(this, "trackee");
  removeObjVar(this, "lastDirection");
  detachScript(this, "useristracking");
  return(0x00);
}

TRIGGER( speech , "stop" )(obj speaker, string arg)
{
  if(speaker == this)
  {
    callback(this, 0x01, 0x51);
  }
  return(0x00);
}

FUNCTION void Q47N(obj trackee, int Q4IE)
{
  string Q47R = getName(trackee) + " is ";
  Q4RJ(Q47R, Q4IE);
  ebarkTo(this, this, Q47R);
  return;
}

FUNCTION void Q4RJ(string description, int Q4IE)
{
  switch(Q4IE)
  {
  case 0x00:
    description = description + "to the North.";
    break;
  case 0x01:
    description = description + "to the Northeast.";
    break;
  case 0x02:
    description = description + "to the East.";
    break;
  case 0x03:
    description = description + "to the Southeast.";
    break;
  case 0x04:
    description = description + "to the South.";
    break;
  case 0x05:
    description = description + "to the Southwest.";
    break;
  case 0x06:
    description = description + "to the West.";
    break;
  case 0x07:
    description = description + "to the Northwest.";
    break;
  default:
    debugMessage("getDirection: invalid direction returned.");
    description = description + " in some direction.";
    break;
  }
  return;
}