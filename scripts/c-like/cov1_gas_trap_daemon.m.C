// Real-C
#include "ENGINE.hpp"

#include "globals.h"

MEMBER loc trapLocation;
MEMBER loc Q5XX;
MEMBER list Q5DQ;

TRIGGER( creation )()
{
  trapLocation = loc( 0x1539, 0x0759, 0x00 );
  Q5XX = loc( 0x1533, 0x0753, 0x0D );
  return(0x00);
}

TRIGGER( message , "flipped" )(obj sender, list args)
{
  list Q5XW;
  int Q5Y1 = 0x1092;
  int Q5XT = 0x1091;
  loc Q5XY = loc( 0x1531, 0x0753, 0x0D );
  loc Q5Y0 = loc( 0x1532, 0x0753, 0x0D );
  loc Q5XZ = loc( 0x1533, 0x0753, 0x0D );
  loc Q5XV = loc( 0x1534, 0x0753, 0x0D );
  loc Q5XU = loc( 0x1535, 0x0753, 0x0D );
  getObjectsAt(Q5XW, Q5XY);
  if(hasObjVar(this, "working"))
  {
    removeObjVar(this, "working");
    shortCallback(this, 0x01, 0x24);
    return(0x00);
  }
  for(int i = 0x00; i < numInList(Q5XW); i ++)
  {
    if(hasScript(Q5XW[i], "cov1_gas_trap_switch"))
    {
      if(getObjType(Q5XW[i]) == Q5Y1)
      {
        if(hasObjVar(this, "covSwitchOneDown"))
        {
          removeObjVar(this, "covSwitchOneDown");
        }
      }
      if(getObjType(Q5XW[i]) == Q5XT)
      {
        if(!hasObjVar(this, "covSwitchOneDown"))
        {
          setObjVar(this, "covSwitchOneDown", 0x01);
        }
      }
    }
  }
  clearList(Q5XW);
  getObjectsAt(Q5XW, Q5Y0);
  for(i = 0x00; i < numInList(Q5XW); i ++)
  {
    if(hasScript(Q5XW[i], "cov1_gas_trap_switch"))
    {
      if(getObjType(Q5XW[i]) == Q5Y1)
      {
        if(hasObjVar(this, "covSwitchTwoDown"))
        {
          removeObjVar(this, "covSwitchTwoDown");
        }
      }
      if(getObjType(Q5XW[i]) == Q5XT)
      {
        if(!hasObjVar(this, "covSwitchTwoDown"))
        {
          setObjVar(this, "covSwitchTwoDown", 0x01);
        }
      }
    }
  }
  clearList(Q5XW);
  getObjectsAt(Q5XW, Q5XZ);
  for(i = 0x00; i < numInList(Q5XW); i ++)
  {
    if(hasScript(Q5XW[i], "cov1_gas_trap_switch"))
    {
      if(getObjType(Q5XW[i]) == Q5Y1)
      {
        if(hasObjVar(this, "covSwitchThreeDown"))
        {
          removeObjVar(this, "covSwitchThreeDown");
        }
      }
      if(getObjType(Q5XW[i]) == Q5XT)
      {
        if(!hasObjVar(this, "covSwitchThreeDown"))
        {
          setObjVar(this, "covSwitchThreeDown", 0x01);
        }
      }
    }
  }
  clearList(Q5XW);
  getObjectsAt(Q5XW, Q5XV);
  for(i = 0x00; i < numInList(Q5XW); i ++)
  {
    if(hasScript(Q5XW[i], "cov1_gas_trap_switch"))
    {
      if(getObjType(Q5XW[i]) == Q5Y1)
      {
        if(hasObjVar(this, "covSwitchFourDown"))
        {
          removeObjVar(this, "covSwitchFourDown");
        }
      }
      if(getObjType(Q5XW[i]) == Q5XT)
      {
        if(!hasObjVar(this, "covSwitchFourDown"))
        {
          setObjVar(this, "covSwitchFourDown", 0x01);
        }
      }
    }
  }
  clearList(Q5XW);
  getObjectsAt(Q5XW, Q5XU);
  for(i = 0x00; i < numInList(Q5XW); i ++)
  {
    if(hasScript(Q5XW[i], "cov1_gas_trap_switch"))
    {
      if(getObjType(Q5XW[i]) == Q5Y1)
      {
        if(hasObjVar(this, "covSwitchFiveDown"))
        {
          removeObjVar(this, "covSwitchFiveDown");
        }
      }
      if(getObjType(Q5XW[i]) == Q5XT)
      {
        if(!hasObjVar(this, "covSwitchFiveDown"))
        {
          setObjVar(this, "covSwitchFiveDown", 0x01);
        }
      }
    }
  }
  if((hasObjVar(this, "covSwitchOneDown")) && (hasObjVar(this, "covSwitchThreeDown")) && (hasObjVar(this, "covSwitchFiveDown")) && (!hasObjVar(this, "covSwitchTwoDown")) && (!hasObjVar(this, "covSwitchFourDown")))
  {
    messageToRange(trapLocation, 0x0A, "cov_disarm", Q5DQ);
    callback(this, 0x1E, 0x24);
    setObjVar(this, "working", 0x01);
  }
  return(0x00);
}

TRIGGER( callback , 0x24 )()
{
  if(hasObjVar(this, "working"))
  {
    removeObjVar(this, "working");
    if(hasObjVar(this, "covSwitchOneDown"))
    {
      removeObjVar(this, "covSwitchOneDown");
    }
    if(hasObjVar(this, "covSwitchTwoDown"))
    {
      removeObjVar(this, "covSwitchTwoDown");
    }
    if(hasObjVar(this, "covSwitchThreeDown"))
    {
      removeObjVar(this, "covSwitchThreeDown");
    }
    if(hasObjVar(this, "covSwitchFourDown"))
    {
      removeObjVar(this, "covSwitchFourDown");
    }
    if(hasObjVar(this, "covSwitchFiveDown"))
    {
      removeObjVar(this, "covSwitchFiveDown");
    }
    messageToRange(trapLocation, 0x0A, "cov_reload", Q5DQ);
    messageToRange(Q5XX, 0x0A, "cov_reset", Q5DQ);
  }
  return(0x00);
}

TRIGGER( message , "unconditionalDisarm" )(obj sender, list args)
{
  if(!hasObjVar(this, "working"))
  {
    messageToRange(trapLocation, 0x0A, "cov_disarm", Q5DQ);
    callback(this, 0x1E, 0x24);
    setObjVar(this, "working", 0x01);
  }
  return(0x00);
}