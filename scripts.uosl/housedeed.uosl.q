// UOSL (native)
inherits housestuff;

function void Q4WV(obj Q5AO, loc Q5CV)
{
  return();
}

function obj Q4WU(obj Q4H5, obj user, loc place)
{
  int Q65M;
  if(!isHousingOkay(place, 0x01))
  {
    barkTo(user, user, "Housing can not be created in this area.");
    return(NULL());
  }
  if(!hasObjVar(Q4H5, "myhousetype"))
  {
    Q65M = 0x00;
  }
  else
  {
    Q65M = getobjvar_int(Q4H5, "myhousetype");
  }
  loc Q5CV = Q4X1(Q65M, place);
  Q5NG = (0x00 - 0x07);
  obj Q5AO = Q4X5(Q65M, Q5CV);
  if(Q5AO == NULL())
  {
    string Q58D = Q592(Q5NG, "house", "valid terrain");
    barkTo(user, user, Q58D);
    return(Q5AO);
  }
  Q4WV(Q5AO, Q5CV);
  setObjVar(Q5AO, "mydeed", Q4H5);
  return(Q5AO);
}

function int Q4WT(obj user, obj Q5AO, obj Q5AB, obj Q5AP, int bank)
{
  loc Q575 = getLocation(user);
  loc Q4VS = getLocation(Q5AB);
  moveDir(Q4VS, 0x04);
  list Q51X = 0x100E, 0x100F, 0x1010, 0x1013;
  int num = random(0x00, (numInList(Q51X) - 0x01));
  int Q51W = Q51X[num];
  obj key = NULL();
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
  if(Q47G == NULL())
  {
    key = createGlobalObjectAt(Q51W, Q575);
    barkTo(user, user, "A house key is now at my feet.");
  }
  else
  {
    key = createGlobalObjectIn(Q51W, Q47G);
    if(bank)
    {
      barkTo(user, user, "A house key is now in my safety deposit box.");
    }
    else
    {
      barkTo(user, user, "A house key is now in my backpack.");
    }
  }
  if(key == NULL())
  {
    bark(user, "Ack, a key could not be created!");
    deleteObject(Q5AO);
    return(0x00);
  }
  attachScript(key, "key");
  list Q5Z5;
  if(hasObjVar(Q5AO, "myhousedoors"))
  {
    getObjListVar(Q5Z5, Q5AO, "myhousedoors");
  }
  int Q55T = numInList(Q5Z5);
  for(int Q4EJ = 0x00; Q4EJ < Q55T; Q4EJ ++)
  {
    Q5AB = Q5Z5[Q4EJ];
    Q45B(Q5AB, key);
  }
  if(Q5AP != NULL())
  {
    Q45B(Q5AP, key);
  }
  attachScript(key, "housekey");
  return(0x01);
}

function int Q4WZ(obj Q5AO, obj Q4H5, obj user)
{
  transferAllResources(Q5AO, Q4H5);
  Q59B(Q5AO);
  obj Q5AB = NULL();
  if(hasObjVar(Q5AO, "myhousedoor"))
  {
    Q5AB = getobjvar_obj(Q5AO, "myhousedoor");
  }
  obj Q5AP = NULL();
  if(hasObjVar(Q5AO, "myhousesign"))
  {
    Q5AP = getobjvar_obj(Q5AO, "myhousesign");
  }
  string Q4F8 = getName(user);
  if(Q5AP != NULL())
  {
    setObjVar(Q5AP, "creatorId", user);
    setObjVar(Q5AP, "creatorName", Q4F8);
  }
  else
  {
    setObjVar(Q5AO, "creatorId", user);
    setObjVar(Q5AO, "creatorName", Q4F8);
  }
  int Q5NC = Q4WT(user, Q5AO, Q5AB, Q5AP, 0x00);
  Q5NC = Q4WT(user, Q5AO, Q5AB, Q5AP, 0x01);
  if(Q5AO != NULL())
  {
    deleteObject(Q4H5);
  }
  return(0x01);
}

trigger targetloc
{
  if(!isInMap(place))
  {
    return(0x00);
  }
  if(!Q58Z(user, this))
  {
    return(0x00);
  }
  obj Q5AO = Q4WU(this, user, place);
  if(Q5AO != NULL())
  {
    int Q5ND = Q4WZ(Q5AO, this, user);
  }
  return(0x01);
}

trigger use
{
  if(!Q58Z(user, this))
  {
    return(0x00);
  }
  int Q65M;
  if(!hasObjVar(this, "myhousetype"))
  {
    Q65M = 0x00;
  }
  else
  {
    Q65M = getobjvar_int(this, "myhousetype");
  }
  loc Q63N;
  loc Q48Y;
  int Q4XN = Q4WW(Q65M, 0x00);
  int Q69W = 0x00;
  if(getMultiExtents(Q4XN, Q63N, Q48Y))
  {
    Q69W = getY(Q48Y);
  }
  barkTo(user, user, "Where do you wish to build the house?");
  targetlocmulti(user, this, Q4XN, 0x00, Q69W, 0x00);
  return(0x01);
}

trigger creation
{
  int Q5AU = 0x00;
  if(!hasObjVar(this, "myhousetype"))
  {
    setObjVar(this, "myhousetype", Q5AU);
  }
  else
  {
    Q5AU = getobjvar_int(this, "myhousetype");
  }
  setObjVar(this, "mybasevalue", Q4WX(Q5AU));
  return(0x01);
}

trigger canbuy
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