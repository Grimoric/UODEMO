// Real-C
#include "ENGINE.hpp"

TRIGGER( objectloaded )()
{
  detachScript(this, "shipradargump");
  return(0x01);
}