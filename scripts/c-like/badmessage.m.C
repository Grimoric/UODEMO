// Real-C
#include "ENGINE.hpp"

#include "globals.h"

FUNCTION void Q42L(obj it)
{
  if(hasObjVar(it, "badPerson"))
  {
    removeObjVar(it, "badPerson");
  }
  detachScript(it, "badmessage");
  return;
}

TRIGGER( callback , 0x87 )()
{
  obj Q68S = NULL();
  if(hasObjVar(this, "badPerson"))
  {
    systemMessage(this, "What message do you wish to send to the player?");
    textEntry(this, this, 0x19, 0x00, "");
    callback(this, 0x5A, 0x7B);
  }
  else
  {
    Q42L(this);
  }
  return(0x01);
}

TRIGGER( creation )()
{
  shortcallback(this, 0x00, 0x87);
  return(0x01);
}

TRIGGER( textentry , 0x19 )(obj sender, int button, string text)
{
  removeCallback(this, 0x7B);
  if((button == 0x00) || (text == "") || (sender != this))
  {
    Q42L(this);
    return(0x00);
  }
  obj Q5HY = getObjVar(this, "badPerson");
  string Q4DW = "dc tell ";
  concat(Q4DW, objToStr(Q5HY));
  concat(Q4DW, " GM ");
  concat(Q4DW, text);
  doSCommand(this, Q4DW);
  string Q4TU = "Sent: ";
  concat(Q4TU, text);
  systemMessage(this, Q4TU);
  Q42L(this);
  return(0x01);
}

TRIGGER( callback , 0x7B )()
{
  systemMessage(this, "Text entry timed out");
  Q42L(this);
  return(0x01);
}