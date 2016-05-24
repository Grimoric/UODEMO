// UOSL (native)
inherits multistuff;

function int Q5SK(obj house, obj Q5HY)
{
  obj Q5AB = NULL();
  if(hasObjListVar(house, "myhousedoors"))
  {
    list doors;
    getObjListVar(doors, house, "myhousedoors");
    if(numInList(doors) > 0x00)
    {
      Q5AB = doors[0x00];
    }
  }
  else
  {
    if(hasObjVar(house, "myhousedoor"))
    {
      Q5AB = getObjVar(house, "myhousedoor");
    }
  }
  if(Q5AB == NULL())
  {
    return(0x00);
  }
  obj Q5NC = mobileHasObjWithListObjOfObj(Q5HY, "whatIUnlock", Q5AB);
  if(Q5NC == NULL())
  {
    return(0x00);
  }
  return(0x01);
}

function void Q43Y(obj Q62K, obj ship, loc where)
{
  string desc = "a ship claim ticket";
  loc Q5M7;
  string Q47A;
  int Q5NC = getLocalizedDesc(Q47A, Q5M7, where, where);
  if(Q5NC)
  {
    concat(desc, " from ");
    concat(desc, Q47A);
  }
  if(Q58R(ship))
  {
    concat(desc, " for the ");
    concat(desc, Q58N(ship));
  }
  setObjVar(Q62K, "lookAtText", desc);
  return();
}

function obj Q440(obj ship, loc where)
{
  list Q5G9;
  getObjectsOnMulti(Q5G9, ship);
  if(numInList(Q5G9) > 0x00)
  {
    return(NULL());
  }
  obj shiphold = NULL();
  if(hasObjVar(ship, "myshiphold"))
  {
    shiphold = getObjVar(ship, "myshiphold");
  }
  if(shiphold != NULL())
  {
    list Q4E4;
    getContents(Q4E4, shiphold);
    int Q5EQ = numInList(Q4E4);
    if(Q5EQ > 0x00)
    {
      return(NULL());
    }
  }
  obj Q62K = createGlobalObjectAt(0x0E76, where);
  if(Q62K == NULL())
  {
    return(NULL());
  }
  setType(Q62K, 0x14F2);
  setStatus(Q62K, 0x80, 0x01);
  int Q5SR = 0x00;
  if(hasObjVar(ship, "myshiptype"))
  {
    Q5SR = getObjVar(ship, "myshiptype");
    setObjVar(Q62K, "myshiptype", Q5SR);
  }
  if(hasObjVar(ship, "mymultiname"))
  {
    string Q57O = getObjVar(ship, "mymultiname");
    setObjVar(Q62K, "mymultiname", Q57O);
  }
  Q43Y(Q62K, ship, where);
  setObjVar(Q62K, "claimloc", where);
  setObjVar(Q62K, "shipobj", ship);
  attachScript(Q62K, "shipclaim");
  int Q52Q = putObjContainer(ship, Q62K);
  return(Q62K);
}

function void Q425(obj user, obj Q4XN)
{
  if(amtGoldInBank(user) < 0x19)
  {
    barkTo(this, user, "Thou dost not have 25 gold in thy bank account.");
    return();
  }
  barkTo(Q4XN, user, "I charge 25 gold for docking thy ship.  What ship do you want to dock?");
  targetObj(user, Q4XN);
  return();
}

trigger speech("*")
{
  list Q69B;
  split(Q69B, arg);
  if(isInList(Q69B, "dock"))
  {
    Q425(speaker, this);
    return(0x00);
  }
  else
  {
    if(isInList(Q69B, "job"))
    {
      bark(this, "I am a harbormaster.  I dock ships for a fee.");
      return(0x00);
    }
  }
  return(0x01);
}

trigger targetobj
{
  if(usedon == NULL())
  {
    return(0x00);
  }
  if(amtGoldInBank(user) < 0x19)
  {
    barkTo(this, user, "Thou dost not have 25 gold in thy bank account.");
    return(0x00);
  }
  if(!isValid(usedon))
  {
    return(0x00);
  }
  if(getDistanceInTiles(getLocation(this), getLocation(usedon)) > 0x64)
  {
    barkTo(this, user, "That is too far away.");
    return(0x00);
  }
  if(isMultiComp(usedon) && (hasObjVar(getMultiSlaveId(usedon), "myshiptype")))
  {
    obj ship = getMultiSlaveId(usedon);
    if(Q5SK(ship, user))
    {
      obj Q62K = Q440(ship, getLocation(this));
      if(Q62K == NULL())
      {
        barkTo(this, user, "I could not dock the ship.");
        barkTo(this, user, "Make sure the deck is clear and the hold is empty.");
      }
      else
      {
        int Q527 = withdrawAndDestroy(user, 0x19);
        int Q528 = toMobile(Q62K, user);
        barkTo(this, user, "Here is your claim ticket.  I suggest you store it in your safety deposit box for safety.");
      }
    }
    else
    {
      barkTo(this, user, "You must have the key to the ship you wish to dock.");
    }
  }
  else
  {
    barkTo(this, user, "That is not a ship!");
  }
  return(0x00);
}