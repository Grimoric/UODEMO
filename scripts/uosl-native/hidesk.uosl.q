// UOSL (native)
inherits spelskil;

member loc where;

trigger message("canUseSkill")
{
  return(0x00);
}

trigger callback(0x4D)
{
  detachScript(this, "hidesk");
  return(0x00);
}

trigger callback(0x54)
{
  Q661(this);
  return(0x00);
}

trigger callback(0x94)
{
  if(getLocation(this) != where)
  {
    Q662(this, 0x00);
  }
  else
  {
    callback(this, 0x01, 0x94);
  }
  return(0x01);
}

function int Q4V8(list them, obj it)
{
  int num = numInList(them);
  for(int i = 0x00; i < num; i ++)
  {
    obj Q4CZ = them[i];
    if(canSeeObj(it, Q4CZ))
    {
      return(0x01);
    }
  }
  return(0x00);
}

function int Q49Y(obj it)
{
  int Q5ES = getNumTargets(it) + getNumAttackers(it);
  list Q475;
  list Q473;
  getTargets(Q475, it);
  getAttackers(Q473, it);
  if(Q4V8(Q475, it))
  {
    return(0x00);
  }
  if(Q4V8(Q473, it))
  {
    return(0x00);
  }
  return(0x01);
}

trigger message("useSkill")
{
  callback(this, 0x0A, 0x4D);
  if(!Q49Y(this))
  {
    barkToHued(this, this, 0x22, "You can't seem to hide right now.");
    return(0x00);
  }
  loc Q4VS = getLocation(this);
  int Q5KA = getSkillLevel(this, 0x15);
  list Q5FP;
  getObjectsInRangeWithFlags(Q5FP, Q4VS, 0x02, 0x40);
  int Q5FO = numInList(Q5FP);
  int Q4VY = Q5KA + Q5FO;
  int Q4B2 = random(0x01, 0x64);
  if(Q4B2 <= Q4VY)
  {
    where = getLocation(this);
    callback(this, 0x01, 0x94);
    hide(this);
    barkToHued(this, this, 0x01F4, "You have hidden yourself well.");
  }
  else
  {
    barkToHued(this, this, 0x22, "You can't seem to hide here.");
  }
  int test = testSkill(this, 0x15);
  callback(this, 0x012C, 0x54);
  return(0x00);
}

trigger message("uninvis")
{
  Q662(this, 0x00);
  return(0x01);
}