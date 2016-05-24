// UOSL (enhanced)
inherits spelskil;

function int Q41S(int listindex, obj usedon)
{
  if(listindex == 0x00)
  {
    return(0x00);
  }
  if(!isDead(usedon))
  {
    return(0x00);
  }
  if((!hasObjVar(usedon, "resurrectLocation")) || (!hasObjVar(usedon, "resurrectCaster")))
  {
    return(0x00);
  }
  loc Q4VS = getLocation(usedon);
  loc there = getObjVar(usedon, "resurrectLocation");
  obj caster = getObjVar(usedon, "resurrectCaster");
  if(Q4VS != there)
  {
    systemMessage(usedon, "Thou hast wandered too far from the site of thy resurrection!");
    return(0x00);
  }
  loc target = getLocation(usedon);
  int Q4XW = getHeight(usedon);
  if(0x07 != canExistAt(target, Q4XW, 0x01))
  {
    systemMessage(usedon, "Thou can not be resurrected there!");
    return(0x00);
  }
  return(0x01);
}

function void Q43V(obj usedon)
{
  removeObjVar(usedon, "resurrectLocation");
  removeObjVar(usedon, "resurrectCaster");
  removeObjVar(usedon, "resurrectType");
  removeObjVar(usedon, "resurrectDesc");
  return;
}

function void Q43U(obj usedon)
{
  setMobFlag(usedon, 0x02, 0x00);
  Q43V(usedon);
  detachScript(usedon, "resmenu");
  return;
}

function void Q4KW(obj usedon)
{
  string desc = getObjVar(usedon, "resurrectDesc");
  list Q59P;
  appendToList(Q59P, 0x00);
  appendToList(Q59P, "YES - You choose to try to come back to life now.");
  appendToList(Q59P, 0x01);
  appendToList(Q59P, "NO - You prefer to remain a ghost for now.");
  selectType(usedon, this, 0x2D, desc, Q59P);
  return;
}

trigger creation()
{
  callback(this, 0xB4, 0x7E);
  setMobFlag(this, 0x02, 0x01);
  Q4KW(this);
  return(0x01);
}

trigger logout()
{
  Q43U(this);
  return(0x01);
}

trigger objectloaded()
{
  Q43U(this);
  return(0x01);
}

trigger online()
{
  Q43U(this);
  return(0x01);
}

trigger callback<0x7E>()
{
  Q43U(this);
  return(0x01);
}

trigger typeselected<0x2D>(obj user, int listindex, int objtype, int objhue)
{
  if(!Q41S(listindex, user))
  {
    Q43U(this);
    return(0x01);
  }
  int Q65M = getObjVar(this, "resurrectType");
  switch(objtype)
  {
  case 0x00:
    sfx(getLocation(user), 0x0214, 0x00);
    int Q527 = resurrect(user, 0x00);
    if(Q65M > 0x00)
    {
      setCurHP(user, 0x0A);
      if(Q65M > 0x01)
      {
        if(isInArea("heal", getLocation(this), 0x00))
        {
          setCurHP(user, getMaxHP(user));
          setCurFatigue(user, getMaxFatigue(user));
        }
      }
    }
    callback(this, 0x00, 0x48);
    break;
  case 0x01:
  default:
    break;
  }
  Q43U(this);
  return(0x01);
}