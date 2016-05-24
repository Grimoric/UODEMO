// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( use )(obj user)
{
  int Q62A = getObjType(this);
  obj Q47F = getBackpack(user);
  obj Q4U4;
  obj Q552;
  obj Q67P;
  int Q67Q;
  int Q4Q1;
  int Q4R1;
  loc location = loc( getLocation(this) );
  switch(Q62A)
  {
  case 0x0D1E:
  case 0x0D1F:
  case 0x0D23:
  case 0x0D24:
    Q4Q1 = getResource(Q4R1, this, "fruit", 0x03, 0x02);
    if(Q4R1 > 0x00)
    {
      Q4U4 = createNoResObjectIn(0x0D1A, Q47F);
      returnResourcesToBank(this, 0x01, "fruit");
      systemMessage(user, "You pick some grapes and put them in your backpack.");
    }
    else
    {
      systemMessage(user, "None of the grapes are ripe enough.");
    }
    return(0x00);
    break;
  case 0x0D1B:
    Q67Q = 0x00;
    changeLoc(location, 0x00, 0x00 - 0x02, 0x00);
    break;
  case 0x0D1C:
    Q67Q = 0x00;
    changeLoc(location, 0x00, 0x02, 0x00);
    break;
  case 0x0D1D:
    Q67Q = 0x00;
    changeLoc(location, 0x00, 0x02, 0x00);
    break;
  case 0x0D20:
    Q67Q = 0x01;
    changeLoc(location, 0x00 - 0x02, 0x00, 0x00);
    break;
  case 0x0D21:
    Q67Q = 0x01;
    changeLoc(location, 0x02, 0x00, 0x00);
    break;
  case 0x0D22:
    Q67Q = 0x01;
    changeLoc(location, 0x02, 0x00, 0x00);
    break;
  }
  if(Q67Q)
  {
    Q67P = getFirstObjectOfType(location, 0x0D23);
    if(Q67P == NULL())
    {
      Q67P = getFirstObjectOfType(location, 0x0D24);
    }
  }
  else
  {
    Q67P = getFirstObjectOfType(location, 0x0D1E);
    if(Q67P == NULL())
    {
      Q67P = getFirstObjectOfType(location, 0x0D1F);
    }
  }
  if(Q67P == NULL())
  {
    return(0x00);
  }
  Q4Q1 = getResource(Q4R1, Q67P, "fruit", 0x03, 0x02);
  if(Q4R1 > 0x00)
  {
    Q4U4 = createNoResObjectIn(0x0D1A, Q47F);
    returnResourcesToBank(Q67P, 0x01, "fruit");
    systemMessage(user, "You pick some grapes and put them in your backpack.");
  }
  else
  {
    systemMessage(user, "None of the grapes are ripe enough.");
  }
  return(0x00);
}