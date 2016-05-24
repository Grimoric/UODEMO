// Real-C
#include "ENGINE.hpp"

#include "sk_table.h"

MEMBER list Q5FB;

FORWARD void cleanup();
FORWARD void Q4RJ(string , loc , loc );

TRIGGER( message , "canUseSkill" )(obj sender, list args)
{
  return(0x00);
}

TRIGGER( callback , 0x4D )()
{
  detachScript(this, "tracking");
  return(0x00);
}

TRIGGER( message , "useSkill" )(obj sender, list args)
{
  clearList(Q5FB);
  callback(this, 0x0A, 0x4D);
  int Q4Q1;
  Q4Q1 = testSkill(this, 0x26);
  int Q5TE = getSkillLevel(this, 0x26);
  if(Q5TE == 0x00)
  {
    systemMessage(this, "Tracking failed.");
    return(0x00);
  }
  loc Q66U = loc( getLocation(this) );
  loc Q469;
  list Q57U;
  int Q61W;
  list Q643 = list( 0x2122, "Animals", 0x20D8, "Creatures", 0x2106, "People" );
  selectType(this, this, 0x25, "What do you wish to track?", Q643);
  cleanup();
  return(0x00);
}

TRIGGER( typeselected , 0x25 )(obj user, int listindex, int objtype, int objhue)
{
  trackingTypeSelected(Q5FB, this, listindex, objtype, getLocation(this));
  return(0x00);
}

TRIGGER( typeselected , 0x29 )(obj user, int listindex, int objtype, int objhue)
{
  if(listindex == 0x00)
  {
    debugMessage("Selecttype aborted");
    cleanup();
    return(0x00);
  }
  if(0x00)
  {
    printList(Q5FB);
    obj Q4XN;
    string Q5WR;
    for(int i = 0x00; i < numInList(Q5FB); i ++)
    {
      Q4XN = Q5FB[i];
      Q5WR = objToStr(Q4XN);
      debugMessage("" + Q5WR + " " + getObjType(Q4XN) + " " + getName(Q4XN));
    }
    debugMessage("listindex = " + (listindex - 0x01));
    debugMessage("yes, I put it up after adding the clearlist");
  }
  obj trackee = Q5FB[listindex - 0x01];
  attachscript(this, "useristracking");
  setObjVar(this, "trackee", trackee);
  callback(this, 0x01, 0x50);
  callback(this, 0x96, 0x51);
  return(0x00);
}

FUNCTION void cleanup()
{
  clearList(Q5FB);
  if(hasScript(this, "useristracking"))
  {
    shortCallback(this, 0x01, 0x51);
  }
  return;
}

FUNCTION void Q4RJ(string description, loc Q4VS, loc there)
{
  int Q4IE = getDirectionInternal(Q4VS, there);
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