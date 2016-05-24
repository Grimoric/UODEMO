// Real-C
#include "ENGINE.hpp"

TRIGGER( speech , "descr" )(obj speaker, string arg)
{
  string desc;
  loc Q5M7;
  loc Q4VS = loc( getLocation(speaker) );
  int x = (getLocalizedDesc(desc, Q5M7, Q4VS, Q4VS));
  bark(this, desc);
  return(0x00);
}