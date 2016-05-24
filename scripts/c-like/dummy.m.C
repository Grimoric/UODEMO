// Real-C
#include "ENGINE.hpp"

TRIGGER( objectloaded )()
{
  attachScript(this, "masterdummy");
  return(0x01);
}

TRIGGER( creation )()
{
  attachScript(this, "masterdummy");
  return(0x01);
}