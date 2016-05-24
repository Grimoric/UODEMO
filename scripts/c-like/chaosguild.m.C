// Real-C
#include "ENGINE.hpp"

#include "virtueguild.h"

TRIGGER( message , "addedToSpecialGuild" )(obj sender, list args)
{
  systemMessage(this, "To get your shield, ask any of Lord Blackthorn's Guards.");
  setObjVar(this/* comma added by the decompiler post-processor */, "displayGuildAbbr", 0x01);
  return(0x01);
}