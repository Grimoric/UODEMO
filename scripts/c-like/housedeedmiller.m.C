// Real-C
#include "ENGINE.hpp"

#include "housedeed.h"

FUNCTION void Q4WV(obj Q5AO, loc Q5CV)
{
  obj Q63A;
  if(Q5AO != NULL())
  {
    setZ(Q5CV, getZ(Q5CV) + 0x07);
    setX(Q5CV, getX(Q5CV) - 0x02);
    setY(Q5CV, getY(Q5CV) - 0x02);
    Q63A = createGlobalObjectAt(0x192C, Q5CV);
    Q4X0(Q63A);
    setY(Q5CV, getY(Q5CV) + 0x01);
    Q63A = createGlobalObjectAt(0x192E, Q5CV);
    Q4X0(Q63A);
    setY(Q5CV, getY(Q5CV) + 0x01);
    Q63A = createGlobalObjectAt(0x1930, Q5CV);
    Q4X0(Q63A);
    setY(Q5CV, getY(Q5CV) - 0x02);
    setX(Q5CV, getX(Q5CV) + 0x02);
    Q63A = createGlobalObjectAt(0x0931, Q5CV);
    Q4X0(Q63A);
    setX(Q5CV, getX(Q5CV) + 0x01);
    Q63A = createGlobalObjectAt(0x0930, Q5CV);
    Q4X0(Q63A);
  }
  return;
}