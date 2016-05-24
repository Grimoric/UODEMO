// Real-C
#include "ENGINE.hpp"

#include "sndfx.h"

MEMBER obj subject;
MEMBER loc Q5JJ;
MEMBER loc Q5JK;
MEMBER loc Q5HH;
MEMBER loc Q5HI;
MEMBER loc Q5HJ;
MEMBER loc Q5HK;
MEMBER obj Q4WE;
MEMBER obj Q4WF;
MEMBER obj Q4WG;
MEMBER obj Q4WH;

FORWARD int Q4KD();
FORWARD void Q5GF();
FORWARD void Q4EP();

TRIGGER( speech , "Relvinian" )(obj speaker, string arg)
{
  list Q5HT;
  setObjVar(speaker, "spokeName", 0x01);
  getMobsAt(Q5HT, getLocation(this));
  for(int i = 0x00; i < numInList(Q5HT); i ++)
  {
    if(hasObjVar(Q5HT[i], "spokeName"))
    {
      removeObjVar(Q5HT[i], "spokeName");
      subject = Q5HT[i];
      callback(this, 0x01, 0x2F);
      return(0x00);
    }
  }
  if(isValid(speaker))
  {
    removeObjVar(speaker, "spokeName");
  }
  return(0x00);
}

TRIGGER( speech , "relvinian" )(obj speaker, string arg)
{
  list Q5HT;
  setObjVar(speaker, "spokeName", 0x01);
  getMobsAt(Q5HT, getLocation(this));
  for(int i = 0x00; i < numInList(Q5HT); i ++)
  {
    if(hasObjVar(Q5HT[i], "spokeName"))
    {
      removeObjVar(Q5HT[i], "spokeName");
      subject = Q5HT[i];
      callback(this, 0x01, 0x2F);
      return(0x00);
    }
  }
  if(isValid(speaker))
  {
    removeObjVar(speaker, "spokeName");
  }
  return(0x00);
}

TRIGGER( speech , "RELVINIAN" )(obj speaker, string arg)
{
  list Q5HT;
  setObjVar(speaker, "spokeName", 0x01);
  getMobsAt(Q5HT, getLocation(this));
  for(int i = 0x00; i < numInList(Q5HT); i ++)
  {
    if(hasObjVar(Q5HT[i], "spokeName"))
    {
      removeObjVar(Q5HT[i], "spokeName");
      subject = Q5HT[i];
      callback(this, 0x01, 0x2F);
      return(0x00);
    }
  }
  if(isValid(speaker))
  {
    removeObjVar(speaker, "spokeName");
  }
  return(0x00);
}

TRIGGER( callback , 0x2F )()
{
  if(Q4KD() == 0x01)
  {
    Q5GF();
  }
  else
  {
    Q4EP();
  }
  return(0x00);
}

FUNCTION int Q4KD()
{
  list Q514;
  int success = 0x00;
  int Q61T;
  Q5HH = loc( 0x0470, 0x08B6, 0x14 );
  Q5HI = loc( 0x046D, 0x08B9, 0x14 );
  Q5HJ = loc( 0x046A, 0x08B6, 0x14 );
  Q5HK = loc( 0x046D, 0x08B3, 0x14 );
  getObjectsAt(Q514, Q5HH);
  for(int i = 0x00; i < numInList(Q514); i ++)
  {
    Q61T = getObjType(Q514[i]);
    if(Q61T == 0x0F0E)
    {
      obj Q45Q = Q514[i];
      success ++;
    }
  }
  clearList(Q514);
  getObjectsAt(Q514, Q5HI);
  for(i = 0x00; i < numInList(Q514); i ++)
  {
    Q61T = getObjType(Q514[i]);
    if(Q61T == 0x1F2B)
    {
      obj fire = Q514[i];
      success ++;
    }
  }
  getObjectsAt(Q514, Q5HJ);
  for(i = 0x00; i < numInList(Q514); i ++)
  {
    Q61T = getObjType(Q514[i]);
    if(Q61T == 0x19B8)
    {
      obj Q4NE = Q514[i];
      success ++;
    }
  }
  clearList(Q514);
  getObjectsAt(Q514, Q5HK);
  for(i = 0x00; i < numInList(Q514); i ++)
  {
    Q61T = getObjType(Q514[i]);
    if(Q61T == 0x0FFA)
    {
      obj water = Q514[i];
      success ++;
    }
  }
  if(success >= 0x04)
  {
    deleteObject(Q45Q);
    Q4WE = createGlobalObjectAt(0x1ECD, Q5HH);
    deleteObject(fire);
    Q4WF = createGlobalObjectAt(0x1ECD, Q5HI);
    deleteObject(Q4NE);
    Q4WG = createGlobalObjectAt(0x1ECD, Q5HJ);
    deleteObject(water);
    Q4WH = createGlobalObjectAt(0x1ECD, Q5HK);
    return(0x01);
  }
  return(0x00);
}

FUNCTION void Q5GF()
{
  list portcullis;
  Q5JJ = loc( 0x33, 0x46, 0x00 );
  Q5JK = loc( 0x33, 0x45, 0x00 );
  getObjectsAt(portcullis, Q5JJ);
  for(int i = 0x00; i < numInList(portcullis); i ++)
  {
    int Q61T = getObjType(portcullis[i]);
    if(Q61T == 0x06F6)
    {
      deleteObject(portcullis[i]);
    }
  }
  clearList(portcullis);
  getObjectsAt(portcullis, Q5JK);
  for(i = 0x00; i < numInList(portcullis); i ++)
  {
    Q61T = getObjType(portcullis[i]);
    if(Q61T == 0x06F6)
    {
      deleteObject(portcullis[i]);
    }
  }
  callback(this, 0x012C, 0x1B);
  return;
}

TRIGGER( callback , 0x1B )()
{
  obj Q5JL = createGlobalObjectAt(0x06F6, Q5JJ);
  obj Q5JM = createGlobalObjectAt(0x06F6, Q5JK);
  deleteObject(Q4WE);
  deleteObject(Q4WF);
  deleteObject(Q4WG);
  deleteObject(Q4WH);
  return(0x00);
}

FUNCTION void Q4EP()
{
  int Q4NC;
  loc Q5XN = loc( 0x2E, 0x4D, 0x00 );
  doLocAnimation(Q5XN, 0x3728, 0x08, 0x14, 0x00, 0x00);
  obj daemon = createGlobalNPCAt(0x022F, Q5XN, 0x00);
  sfx(Q5XN, 0x0216, 0x00);
  setType(daemon, 0x0A);
  attachScript(daemon, "destcrea");
  Q4NC = 0x0384;
  callback(daemon, Q4NC, 0x08);
  doDamage(subject, daemon, 0x00);
  return;
}