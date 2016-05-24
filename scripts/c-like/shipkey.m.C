// Real-C
#include "ENGINE.hpp"

TRIGGER( creation )()
{
  setObjVar(this, "predesc", "a ship key");
  setObjVar(this, "lookAtText", "a ship key");
  return(0x01);
}