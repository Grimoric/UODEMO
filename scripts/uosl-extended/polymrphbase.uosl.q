// UOSL (enhanced)
inherits sumdaem;

member int picking;
member obj Q62D;

forward void Q4MU(obj user, int Q4NC);

function int Q43R(obj user, int newType)
{
  int Q5NC = 0x00;
  if(Q50G(user))
  {
    if(newType >= 0x00)
    {
      if(isRiding(user))
      {
        int Q52Q = unRide(user);
      }
      if(!(hasObjVar(Q62D, "oldBodyType")))
      {
        setObjVar(Q62D, "oldBodyType", getObjType(Q62D));
      }
      if(!(hasObjVar(Q62D, "oldHue")))
      {
        setObjVar(Q62D, "oldHue", getHue(Q62D));
      }
      setType(user, newType);
      setHue(user, 0x00);
      int Q4NC = (getSkillLevel(user, 0x19) / 0x05) * 0x05;
      if(isScroll())
      {
        Q4NC = 0x3C;
      }
      Q4MU(user, Q4NC);
      Q5NC = 0x01;
    }
  }
  Q5UQ(this);
  return(Q5NC);
}

function void Q43S(obj user, int newType)
{
  Q43R(user, newType);
  return;
}

trigger typeselected<0x1B>(obj user, int listindex, int objtype, int objhue)
{
  if(picking == 0x00)
  {
    return(0x00);
  }
  picking = 0x00;
  if(listindex == 0x00)
  {
    return(0x00);
  }
  int newType = 0x00 - 0x01;
  switch(objtype)
  {
  case 0x20D8:
    newType = 0x12;
    break;
  case 0x20F5:
    newType = 0x1D;
    break;
  case 0x20DE:
    newType = 0x23;
    break;
  case 0x20DF:
    newType = 0x01;
    break;
  case 0x20E9:
    newType = 0x37;
    break;
  case 0x20CD:
    newType = 0x0190;
    break;
  case 0x20CE:
    newType = 0x0191;
    break;
  case 0x20CF:
    newType = 0xD3;
    break;
  case 0x20DB:
    newType = 0xD4;
    break;
  case 0x20E1:
    newType = 0xD5;
    break;
  case 0x20D1:
    newType = 0xD0;
    break;
  case 0x20D3:
    newType = 0x09;
    break;
  case 0x20D5:
    newType = 0xD9;
    break;
  case 0x20D9:
    newType = 0x04;
    break;
  case 0x20E0:
    newType = 0x11;
    break;
  case 0x20E8:
    newType = 0x33;
    break;
  case 0x20EA:
    newType = 0xE1;
    break;
  case 0x2119:
    newType = 0xD6;
    break;
  default:
    systemMessage(user, "Unknown body type");
    break;
  }
  Q43S(Q62D, newType);
  return(0x00);
}

function void Q4MV(obj user)
{
  list monsters = 0x20CF, "Bear, Black", 0x20DB, "Bear, Grizzly", 0x20E1, "Bear, Polar", 0x20D1, "Chicken", 0x20D3, "Daemon", 0x20D5, "Dog", 0x20D8, "Ettin", 0x20D9, "Gargoyle", 0x20F5, "Gorilla", 0x20CD, "Human, Male", 0x20CE, "Human, Female", 0x20DE, "Lizard Man", 0x20DF, "Ogre", 0x20E0, "Orc", 0x2119, "Panther", 0x20E8, "Slime", 0x20E9, "Troll", 0x20EA, "Wolf";
  Q62D = user;
  picking = 0x01;
  selectType(user, this, 0x1B, "Choose a Creature", monsters);
  return;
}

function void Q4MU(obj user, int Q4NC)
{
  obj Q5F4;
  obj Q69F;
  list Q5FH;
  int Q51J;
  if(hasScript(Q62D, "remincognito"))
  {
    list Q5DR;
    message(Q62D, "undoincognito", Q5DR);
  }
  for(int x = 0x01; x < 0x11; x ++)
  {
    Q5F4 = getItemAtSlot(Q62D, x);
    if(isValid(Q5F4))
    {
      debugMessage("removing items");
      Q51J = putObjContainer(Q5F4, Q62D);
      appendToList(Q5FH, Q5F4);
      setObjVar(Q5F4, "objSlot", x);
      if(!Q51J)
      {
        debugMessage("item stacker error");
      }
    }
  }
  setObjVar(user, "notMyItems", Q5FH);
  attachScript(user, "polychec");
  callback(user, Q4NC, 0x14)/* semicolon added by the decompiler post-processor */;
  return;
}