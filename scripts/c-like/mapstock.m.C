// Real-C
#include "ENGINE.hpp"

#include "globals.h"

TRIGGER( creation )()
{
  int Q69G = 0x00;
  int Q69P = 0x00;
  int Q69I = 0x00;
  int Q69R = 0x00;
  int Q68U = 0x00;
  int Q4VQ = 0x00;
  if(hasObjVar(this, "mapx1"))
  {
    Q69G = getObjVar(this, "mapx1");
    removeObjVar(this, "mapx1");
  }
  if(hasObjVar(this, "mapy1"))
  {
    Q69P = getObjVar(this, "mapy1");
    removeObjVar(this, "mapy1");
  }
  if(hasObjVar(this, "mapx2"))
  {
    Q69I = getObjVar(this, "mapx2");
    removeObjVar(this, "mapx2");
  }
  if(hasObjVar(this, "mapy2"))
  {
    Q69R = getObjVar(this, "mapy2");
    removeObjVar(this, "mapy2");
  }
  if(hasObjVar(this, "mapwidth"))
  {
    Q68U = getObjVar(this, "mapwidth");
    removeObjVar(this, "mapwidth");
  }
  if(hasObjVar(this, "mapheight"))
  {
    Q4VQ = getObjVar(this, "mapheight");
    removeObjVar(this, "mapheight");
  }
  if(Q69G < 0x00)
  {
    Q69G = 0x00;
  }
  if(Q69I > 0x13FF)
  {
    Q69I = 0x144F;
  }
  if(Q69P < 0x00)
  {
    Q69P = 0x00;
  }
  if(Q69R > 0x0FFF)
  {
    Q69R = 0x0FFF;
  }
  setMapProperties(this, 0x00, Q69G, Q69P, Q69I, Q69R, Q68U, Q4VQ);
  detachScript(this, "mapstock");
  return(0x01);
}