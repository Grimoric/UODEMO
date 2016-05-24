// Real-C
#include "ENGINE.hpp"

#include "multidecay.h"

TRIGGER( destroyed )()
{
  Q4WS(this);
  return(0x01);
}

TRIGGER( message , "vendordelete" )(obj sender, list args)
{
  obj vendor = args[0x00];
  Q4X2(this, vendor);
  return(0x01);
}