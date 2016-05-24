// Real-C
#include "ENGINE.hpp"

TRIGGER( objectloaded )()
{
  setDefaultReturn(0x01);
  detachScript(this, "amnesty2");
  return(0x01);
}