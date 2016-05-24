// Real-C
#include "ENGINE.hpp"

#include "globals.h"

MEMBER int num;

FUNCTION void Q4JA(obj it)
{
  if(hasScript(it, "counokay"))
  {
    detachScript(it, "decounselor");
    return;
  }
  num ++;
  if(num > 0x03)
  {
    systemMessage(it, "Your counselor status has been removed.");
    doSCommand(it, "ucoun me");
    detachScript(it, "decounselor");
  }
  else
  {
    systemMessage(it, "All counselors are being unmade.  You can log in " + (0x03 - num) + " more times");
    systemMessage(it, "without renewing until your counselor status is removed.");
    systemMessage(it, "To continue being a Counselor, please re-apply to the web page");
    systemMessage(it, "under Help and Guidance / Playguide / Counselors.");
  }
  return;
}

TRIGGER( creation )()
{
  callback(this, 0x05, 0x7C);
  return(0x01);
}

TRIGGER( objectloaded )()
{
  callback(this, 0x05, 0x7C);
  return(0x01);
}

TRIGGER( callback , 0x7C )()
{
  if(!isCounselor(this))
  {
    detachScript(this, "decounselor");
  }
  Q4JA(this);
  return(0x01);
}