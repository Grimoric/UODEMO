// Real-C
#include "ENGINE.hpp"

#include "globals.h"

FUNCTION string Q43A(obj this)
{
  obj Q4XN;
  int Q65M;
  int Q5MV;
  string Q4RC;
  string Q5UI;
  loc location;
  obj Q5IY;
  string Q5J0;
  int Q45N;
  int Q5NC;
  int Q5ND;
  string desc;
  loc Q5M7;
  Q5NC = getHint(this, 0x03, Q65M, Q4XN, Q5MV, Q4RC, Q5UI, location, Q5IY, Q5J0, Q45N);
  if(Q5NC)
  {
    string Q63A;
    string Q63B;
    Q63A = "I have heard rumors that ";
    if(Q5J0 == "")
    {
      Q63A = Q63A + Q4RC;
      Q63A = Q63A + " is ";
    }
    else
    {
      Q63A = Q63A + Q5J0;
      Q63A = Q63A + " has ";
      Q63A = Q63A + Q4RC;
    }
    desc = "";
    Q5ND = getLocalizedDesc(Q63B, Q5M7, location, getLocation(this));
    loc Q4D0 = loc( location );
    if(Q5ND > 0x00)
    {
      if((Q5ND == 0x02) || (Q5ND == 0x04))
      {
        desc = desc + "here ";
      }
      desc = desc + "in ";
      desc = desc + Q63B;
      if(Q5ND == 0x03)
      {
        Q4D0 = loc( Q5M7 );
      }
    }
    if(desc != "")
    {
      Q63A = Q63A + " ";
      Q63A = Q63A + desc;
      Q63A = Q63A + ", ";
    }
    loc Q4VS = loc( getLocation(this) );
    string Q4ID = getDirection(Q4VS, Q4D0);
    Q63A = Q63A + Q4ID;
    Q63A = Q63A + ".";
  }
  else
  {
    Q63A = "I have heard no rumors.";
  }
  return(Q63A);
}

FUNCTION string Q43B(obj this)
{
  obj Q4XN;
  int Q65M;
  int Q5MV;
  string Q4RC;
  string Q5UI;
  loc location;
  obj Q5IY;
  string Q5J0;
  int Q45N;
  int Q5NC;
  int Q5ND;
  string desc;
  loc Q5M7;
  Q5NC = getHint(this, 0x03, Q65M, Q4XN, Q5MV, Q4RC, Q5UI, location, Q5IY, Q5J0, Q45N);
  if(Q5NC)
  {
    string Q63A;
    string Q63B;
    Q63A = objToStr(Q4XN);
    Q63A = Q63A + " ";
    Q63B = Q5MV;
    Q63A = Q63A + Q63B;
    Q63A = Q63A + " ";
    Q63A = Q63A + Q4RC;
    Q63A = Q63A + " ";
    Q63A = Q63A + Q5UI;
    Q63A = Q63A + " ";
    Q63B = getX(location);
    Q63A = Q63A + Q63B;
    Q63A = Q63A + " ";
    Q63B = getY(location);
    Q63A = Q63A + Q63B;
    Q63A = Q63A + " ";
    Q63B = getZ(location);
    Q63A = Q63A + Q63B;
    Q63A = Q63A + " ";
    Q63B = objToStr(Q5IY);
    Q63A = Q63A + Q63B;
    Q63A = Q63A + " ";
    Q63A = Q63A + Q5J0;
    Q63A = Q63A + " ";
    Q63B = Q45N;
    Q63A = Q63A + Q63B;
    Q63A = Q63A + " ";
    desc = "";
    Q5ND = getLocalizedDesc(Q63B, Q5M7, location, getLocation(this));
    if(Q5ND > 0x00)
    {
      if(Q5ND == 0x02)
      {
        desc = desc + "here ";
      }
      desc = desc + "in ";
      desc = desc + Q63B;
    }
    Q63A = Q63A + "+";
    Q63A = Q63A + desc;
    Q63A = Q63A + "+ ";
    Q63B = getX(Q5M7);
    Q63A = Q63A + Q63B;
    Q63A = Q63A + " ";
    Q63B = getY(Q5M7);
    Q63A = Q63A + Q63B;
    Q63A = Q63A + " ";
    Q63B = getZ(Q5M7);
    Q63A = Q63A + Q63B;
    Q63A = Q63A + " ";
  }
  else
  {
    Q63A = "None";
  }
  return(Q63A);
}

TRIGGER( speech , "*" )(obj speaker, string arg)
{
  list args;
  split(args, arg);
  string Q698;
  string hint;
  int Q55T = numInList(args);
  int i;
  for(i = 0x00; i < Q55T; i ++)
  {
    Q698 = args[i];
    if(Q698 == "hint")
    {
      hint = Q43A(this);
      bark(this, hint);
      return(0x01);
    }
    if(Q698 == "hinttest")
    {
      hint = Q43B(this);
      bark(this, hint);
      return(0x01);
    }
  }
  return(0x00);
}