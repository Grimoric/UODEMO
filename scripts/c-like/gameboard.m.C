// Real-C
#include "ENGINE.hpp"

TRIGGER( use )(obj user)
{
  if(containedBy(this) != NULL())
  {
    destroyContents(this);
    return(0x00);
  }
  return(0x01);
}

TRIGGER( wasdropped )(obj dropper)
{
  if(containedBy(this) != NULL())
  {
    destroyContents(this);
  }
  return(0x01);
}

TRIGGER( objectloaded )()
{
  if(containedBy(this) != NULL())
  {
    destroyContents(this);
  }
  return(0x01);
}