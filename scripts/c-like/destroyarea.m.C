// Real-C
#include "ENGINE.hpp"

TRIGGER( speech , "*" )(obj speaker, string arg)
{
  if(speaker != this)
  {
    return(0x01);
  }
  if(!isEditing(this))
  {
    return(0x01);
  }
  list Q69B;
  split(Q69B, arg);
  if(numInList(Q69B) != 0x04)
  {
    barkTo(this, this, "say 'x1 y1 x2 y2' to use this");
    return(0x00);
  }
  string Q69H = Q69B[0x00];
  string Q69Q = Q69B[0x01];
  string Q69J = Q69B[0x02];
  string Q69S = Q69B[0x03];
  int Q69G = Q69H;
  int Q69P = Q69Q;
  int Q69I = Q69J;
  int Q69R = Q69S;
  loc where;
  list Q5FJ;
  int Q4HW = 0x00;
  for(int y = Q69P; y <= Q69R; y ++)
  {
    setY(where, y);
    for(int x = Q69G; x <= Q69I; x ++)
    {
      setX(where, x);
      getObjectsAtInZRange(Q5FJ, where, 0x00 - 0x80, 0x7F);
      int Q55T = numInList(Q5FJ);
      for(int i = 0x00; i < Q55T; i ++)
      {
        obj Q60Q = Q5FJ[i];
        if((!thinksItsAtHome(Q60Q)) && (!isPlayer(Q60Q)) && (!isMultiComp(Q60Q)))
        {
          deleteObject(Q60Q);
          Q4HW ++;
        }
      }
    }
  }
  barkTo(this, this, "destroyed " + Q4HW + "objects.");
  return(0x00);
}