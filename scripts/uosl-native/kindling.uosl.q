// UOSL (native)
inherits sk_table;

trigger creation
{
  callback(this, 0x02, 0x66);
  return(0x00);
}

trigger callback(0x66)
{
  if(hasObjVar(this, "valueless"))
  {
    removeObjVar(this, "valueless");
  }
  return(0x00);
}

function int Q65E(obj user)
{
  loc Q4VS = getLocation(user);
  loc there = getLocation(this);
  loc Q62J = getLocation(user);
  obj Q47F = getBackpack(user);
  if(isAtHome(this))
  {
    systemMessage(user, "You can't ignite that, it belongs to someone else.");
    return(0x00);
  }
  if(isInContainer(this))
  {
    if(!findGoodSpotNearWithElev(Q62J, getZ(Q4VS) - 0x08, getZ(Q4VS) + 0x08, 0x02, 0x02, 0x01))
    {
      systemMessage(user, "There is not a spot nearby to place your campfire.");
      return(0x00);
    }
  }
  else
  {
    Q62J = there;
  }
  if(!testSkill(user, 0x0A))
  {
    barkTo(this, user, "You fail to ignite the campfire.");
    return(0x00);
  }
  obj fire = createGlobalObjectAt(0x0DE3, Q62J);
  setObjVar(fire, "campfire_burning", 0x01);
  attachScript(fire, "campfire");
  destroyOne(this);
  if(!isInContainer(this))
  {
    if(canHold(Q47F, this))
    {
      int Q4Q1 = putObjContainer(this, Q47F);
    }
    else
    {
      deleteObject(this);
    }
  }
  return(0x00);
}

trigger use
{
  return(Q65E(user));
}

trigger message("ignite")
{
  obj Q68S = args[0x00];
  int Q527 = Q65E(Q68S);
  return(0x00);
}