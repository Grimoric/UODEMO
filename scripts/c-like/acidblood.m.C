// Real-C
#include "ENGINE.hpp"

#include "sndfx.h"

TRIGGER( washit )(obj attacker, int damamt)
{
  if(damamt < 0x03)
  {
    return(0x01);
  }
  obj Q687 = getWeapon(attacker);
  if(Q687 == NULL())
  {
    return(0x01);
  }
  if(isRanged(Q687))
  {
    return(0x01);
  }
  int Q4XB = getCurHP(Q687);
  Q4XB = Q4XB - 0x01;
  setCurHP(Q687, Q4XB);
  ebarkTo(attacker, attacker, "*Acid blood scars your weapon!*");
  return(0x01);
}