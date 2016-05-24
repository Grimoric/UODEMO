// Real-C
#include "ENGINE.hpp"

#include "add_door_to_key.h"

TRIGGER( creation )()
{
  list Q5DQ;
  if(!hasObjVar(this, "whatIUnlock"))
  {
    setObjVar(this, "whatIUnlock", Q5DQ);
  }
  return(0x01);
}

TRIGGER( speech , "add_door" )(obj speaker, string arg)
{
  if(isEditing(speaker))
  {
    barkTo(this, speaker, "Which door do you want to add to my keylist?");
    targetObj(speaker, this);
  }
  return(0x00);
}

TRIGGER( speech , "finished" )(obj speaker, string arg)
{
  if(isEditing(speaker))
  {
    bark(this, "okay");
    detachScript(this, "autokey");
  }
  return(0x00);
}

TRIGGER( targetobj )(obj user, obj usedon)
{
  if(usedon == NULL())
  {
    return(0x00);
  }
  if(isEditing(user))
  {
    Q45B(usedon, this);
    bark(this, "Added door to my keylist.");
  }
  return(0x00);
}