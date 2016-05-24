// Real-C
#include "ENGINE.hpp"

#include "spelskil.h"

FUNCTION void Q41A(obj user)
{
  removeCallback(user, 0x89);
  return;
}

FUNCTION void Q441(obj it)
{
  if(hasScript(it, "spellwords"))
  {
    detachScript(it, "spellwords");
  }
  return;
}

TRIGGER( message , "spellstartcast" )(obj sender, list args)
{
  callback(this, 0x05, 0x89);
  return(0x01);
}

TRIGGER( message , "spellcanstartcast" )(obj sender, list args)
{
  return(0x00);
}

TRIGGER( speech , "*" )(obj speaker, string arg)
{
  list args;
  split(args, arg);
  if(numInList(args) == 0x03)
  {
    string Q44J = args[0x00];
    string Q44K = args[0x01];
    string Q44L = args[0x02];
    if((Q44J == "Kal") && (Q44K == "Corp") && (Q44L == "Xen"))
    {
      Q41A(this);
      attachScript(speaker, "sumdead");
      list Q56O;
      appendToList(Q56O, this);
      appendToList(Q56O, speaker);
      message(speaker, "startcasting", Q56O);
    }
  }
  return(0x01);
}

TRIGGER( callback , 0x89 )()
{
  Q441(this);
  return(0x01);
}