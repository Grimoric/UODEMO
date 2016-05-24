// UOSL (enhanced)
inherits shipstuff;

function int Q5SF(obj Q4H5, obj user, obj Q5AO, int bank)
{
  loc Q4VS = getLocation(user);
  list Q51X = 0x100E, 0x100F, 0x1010, 0x1013;
  int num = random(0x00, (numInList(Q51X) - 0x01));
  int Q51W = Q51X[num];
  obj Q47G = NULL();
  if(bank)
  {
    fixBank(user);
    Q47G = getItemAtSlot(user, 0x1D);
    if(Q47G == NULL())
    {
      Q47G = getBackpack(user);
      bank = 0x00;
    }
  }
  else
  {
    Q47G = getBackpack(user);
  }
  obj key = NULL();
  if(Q47G == NULL())
  {
    key = createGlobalObjectAt(Q51W, Q4VS);
    barkTo(user, user, "A ship's key is now at my feet.");
  }
  else
  {
    key = createGlobalObjectIn(Q51W, Q47G);
    if(bank)
    {
      barkTo(user, user, "A ship's key is now in my safety deposit box.");
    }
    else
    {
      barkTo(user, user, "A ship's key is now in my backpack.");
    }
  }
  if(key == NULL())
  {
    barkTo(user, user, "Ack, a key could not be created!");
    return(0x00);
  }
  attachScript(key, "key");
  attachScript(key, "shipkey");
  list Q5Z5;
  if(hasObjVar(Q5AO, "myhousedoors"))
  {
    getObjListVar(Q5Z5, Q5AO, "myhousedoors");
  }
  obj Q5AB;
  int Q55T = numInList(Q5Z5);
  for(int Q4EJ = 0x00; Q4EJ < Q55T; Q4EJ ++)
  {
    Q5AB = Q5Z5[Q4EJ];
    Q45B(Q5AB, key);
  }
  return(0x01);
}

trigger targetloc(obj user, loc place, int objtype)
{
  if(!isInMap(place))
  {
    return(0x00);
  }
  if(!Q58Z(user, this))
  {
    return(0x00);
  }
  int Q5SR;
  if(getDistanceInTiles(place, getLocation(user)) > 0x06)
  {
    barkTo(user, user, "That location is too far away.");
    return(0x01);
  }
  if(!hasObjVar(this, "myshiptype"))
  {
    Q5SR = 0x00;
  }
  else
  {
    Q5SR = getObjVar(this, "myshiptype");
  }
  Q5NG = 0x00 - 0x05;
  obj Q5AO = Q5SD(Q5SR, place);
  if(Q5AO == NULL())
  {
    string Q58D = Q592(Q5NG, "ship", "water");
    barkTo(user, user, Q58D);
    return(0x01);
  }
  transferAllResources(Q5AO, this);
  obj Q62O = NULL();
  if(hasObjVar(Q5AO, "myshiptillerman"))
  {
    Q62O = getObjVar(Q5AO, "myshiptillerman");
  }
  if(Q62O != NULL())
  {
    setObjVar(Q62O, "creatorId", user);
    string Q4F8 = getName(user);
    setObjVar(Q62O, "creatorName", Q4F8);
  }
  int Q5NC = Q5SF(this, user, Q5AO, 0x00);
  Q5NC = Q5SF(this, user, Q5AO, 0x01);
  deleteObject(this);
  return(0x01);
}

trigger use(obj user)
{
  if(!Q58Z(user, this))
  {
    return(0x00);
  }
  int Q5SR;
  if(!hasObjVar(this, "myshiptype"))
  {
    Q5SR = 0x00;
  }
  else
  {
    Q5SR = getObjVar(this, "myshiptype");
  }
  int multi = Q5SS(Q5SR, 0x00);
  barkTo(user, user, "Where do you wish to place the ship?");
  targetlocmulti(user, this, multi, 0x00, 0x00, 0x00);
  return(0x01);
}

trigger creation()
{
  int Q5AU = 0x00;
  if(!hasObjVar(this, "myshiptype"))
  {
    setObjVar(this, "myshiptype", Q5AU);
  }
  else
  {
    Q5AU = getObjVar(this, "myshiptype");
  }
  setObjVar(this, "mybasevalue", Q5S0(Q5AU));
  return(0x01);
}

trigger canbuy(obj buyer, obj seller, int quantity)
{
  if(!getCompileFlag(0x02))
  {
    return(0x01);
  }
  if(!Q590(buyer, this))
  {
    return(0x00);
  }
  return(0x01);
}