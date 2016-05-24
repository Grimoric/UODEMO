// Real-C
#include "ENGINE.hpp"

TRIGGER( use )(obj user)
{
  list Q4PV = list( 0x07C9, 0x07CA, 0x07CB, 0x07CC );
  list Q5Z5;
  loc Q4OM;
  int Q5VV = 0x1498;
  int Q5VW = 0x029B;
  int Q4NW = 0x149F;
  int Q5W1 = 0x05;
  obj Q5IN;
  int Q5F5;
  int Q5IJ;
  int Q5Z8;
  int Q5ZA;
  if(!hasObjVar(this, "working"))
  {
    setObjVar(this, "working", 0x01);
    setType(this, 0x108D);
    callback(this, 0x02, 0x01);
    for(int Q51K = 0x00; Q51K < 0x02; Q51K ++)
    {
      Q5ZA = Q5VW + Q51K;
      for(int i = Q5VV; i < (Q4NW + 0x01); i ++)
      {
        Q4OM = loc( i, Q5ZA, Q5W1 );
        Q5IJ = 0x01;
        clearList(Q5Z5);
        getObjectsAt(Q5Z5, Q4OM);
        for(int Q518 = 0x00; Q518 < numInList(Q5Z5); Q518 ++)
        {
          Q5Z8 = getObjType(Q5Z5[Q518]);
          if((Q5Z8 == 0x07C9) || (Q5Z8 == 0x07CA) || (Q5Z8 == 0x07CB) || (Q5Z8 == 0x07CC))
          {
            Q5IJ = 0x00;
          }
        }
        if(Q5IJ == 0x01)
        {
          Q5F5 = Q4PV[random(0x00, (numInList(Q4PV) - 0x01))];
          Q5IN = createGlobalObjectAt(Q5F5, Q4OM);
          attachScript(Q5IN, "flame_bridge_tile");
        }
      }
    }
  }
  return(0x00);
}

TRIGGER( callback , 0x01 )()
{
  if(hasObjVar(this, "working"))
  {
    removeObjVar(this, "working");
  }
  if(getObjType(this) == 0x108E)
  {
    setType(this, 0x108C);
  }
  if(getObjType(this) == 0x108D)
  {
    setType(this, 0x108E);
    callBack(this, 0x02, 0x01);
  }
  return(0x00);
}