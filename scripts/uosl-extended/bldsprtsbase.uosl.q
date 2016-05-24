// UOSL (enhanced)
inherits spelskil;

member loc Q4E1;
member obj Q57L;

function obj Q553(loc location, obj Q5UY, obj caster)
{
  obj spirit = createGlobalNPCAt(0x023E, location, 0x00);
  if(spirit != NULL())
  {
    copyControllerInfo(spirit, caster);
    attachScript(spirit, "bspiritai");
    attachScript(spirit, "destcrea");
    setObjVar(spirit, "summonDifficulty", 0x01F4);
    callback(spirit, 0x78, 0x08);
    if(!getCompileFlag(0x01))
    {
      Q5UL(spirit, location, 0x02, 0x00);
    }
    int Q4XF = doNPCHandleStates(spirit);
  }
  return(spirit);
}

function int Q4IZ(obj user, loc place)
{
  int Q5NC = 0x00;
  int damage;
  loc Q4VS = getLocation(user);
  faceHere(user, getDirectionInternal(Q4VS, place));
  list Q5FG;
  getObjectsAt(Q5FG, place);
  if(numInList(Q5FG) == 0x00)
  {
    doLocAnimation(place, 0x3728, 0x0A, 0x0A, 0x00, 0x00);
    Q57L = user;
    Q4E1 = place;
    if(!getCompileFlag(0x01))
    {
      Q5UL(user, place, 0x02, 0x00);
    }
    obj Q5VB = Q553(Q4E1, this, user);
    if(isValid(Q5VB))
    {
      Q5NC = 0x01;
    }
  }
  else
  {
    barkTo(user, user, "That location is blocked.");
  }
  Q5UQ(this);
  return(Q5NC);
}