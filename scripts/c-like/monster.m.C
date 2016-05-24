// Real-C
#include "ENGINE.hpp"

TRIGGER( creation )()
{
  if(isInArea("zoo", getLocation(this), 0x00))
  {
    setLoiterMode(this, 0x01);
    setBehavior(this, 0x02);
    removeObjVar(this, "petCanTame");
  }
  return(0x01);
}