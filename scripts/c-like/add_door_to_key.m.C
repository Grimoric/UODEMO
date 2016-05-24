// Real-C
#include "ENGINE.hpp"

#include "lock_it.h"

FUNCTION int Q45B(obj Q4MZ, obj key)
{
  list Q5Z5;
  int Q51N = getObjType(key);
  switch(Q51N)
  {
  case 0x100E:
  case 0x100F:
  case 0x1010:
  case 0x1012:
  case 0x1013:
    break;
  default:
    bark(key, "Honestly, I'm not a key.");
    return(0x00);
    break;
  }
  if(hasObjVar(key, "whatIUnlock"))
  {
    getObjListVar(Q5Z5, key, "whatIUnlock");
  }
  appendToList(Q5Z5, Q4MZ);
  setObjVar(key, "whatIUnlock", Q5Z5);
  return(0x01);
}

FUNCTION int Q51O(obj key, obj Q4MZ)
{
  if(!hasObjVar(key, "whatIUnlock"))
  {
    return(0x00);
  }
  list Q665;
  getObjListVar(Q665, key, "whatIUnlock");
  if(isInList(Q665, Q4MZ))
  {
    return(0x01);
  }
  return(0x00);
}

FUNCTION int Q51Q(obj key, obj Q4MZ)
{
  if(!hasObjVar(Q4MZ, "isLocked"))
  {
    int one = getObjVar(Q4MZ, "lockLevel");
    setObjVar(Q4MZ, "isLocked", one);
    return(0x01);
  }
  removeObjVar(Q4MZ, "isLocked");
  return(0x00);
}