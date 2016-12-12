// UOSL (native)
inherits spelskil;

function void Q5AA(obj corpse)
{
  list Q4E4;
  getContents(Q4E4, corpse);
  int num = numInList(Q4E4);
  for(int i = 0x00; i < num; i ++)
  {
    obj Q61K = Q4E4[i];
    if(isHair(Q61K))
    {
      deleteObject(Q61K);
    }
    else
    {
      int Q5NC = teleport(Q61K, getLocation(corpse));
    }
  }
  deleteObject(corpse);
  return();
}

function int Q5AF(obj Q68D)
{
  if(getObjType(Q68D) == 0x2006)
  {
    return(0x01);
  }
  return(0x00);
}

function int Q4SB(obj it, obj caster, int Q5UZ, obj target)
{
  int Q4NC = 0x04 * (0x3C + getSkillLevel(caster, 0x19) * 0x03);
  return(Q4NC);
}

function int Q4CT(obj caster, obj corpse)
{
  loc Q4AO = getLocation(caster);
  loc Q4EE = getLocation(corpse);
  int Q4IJ = getDistanceInTiles(getLocation(caster), getLocation(corpse));
  if(Q4IJ > 0x05)
  {
    return(0x00);
  }
  if(!Q5AF(corpse))
  {
    barkTo(caster, caster, "I must use a human corpse.");
    return(0x00);
  }
  return(0x01);
}

function int Q4MH(obj user, obj corpse)
{
  loc Q4VS = getLocation(user);
  loc there = Q4VS;
  list Q5DR;
  there = getLocation(corpse);
  faceHere(user, getDirectionInternal(Q4VS, there));
  int Q5UZ = 0x00;
  int Q4NC = Q4SB(this, user, Q5UZ, corpse);
  int Q68G = 0x021D;
  obj daemon = createGlobalNPCAt(Q68G, there, 0x00);
  if(daemon == NULL())
  {
    barkTo(user, user, "Something is in the way.");
    return(0x00);
  }
  doLocAnimation(there, 0x3728, 0x0A, 0x0A, 0x00, 0x00);
  doLocAnimation(there, 0x3728, 0x08, 0x14, 0x00, 0x00);
  attachScript(daemon, "destcrea");
  int Q5NC = Q558(daemon, user, 0x64, 0x01);
  Q5AA(corpse);
  faceHere(daemon, getDirectionInternal(there, Q4VS));
  callback(daemon, Q4NC, 0x08);
  return(0x01);
}

trigger creation
{
  setObjVar(this, "lookAtText", "Wand of Necromancy");
  return(0x01);
}

trigger use
{
  if(!isEditing(user))
  {
    return(0x00);
  }
  if(!isValid(user))
  {
    return(0x00);
  }
  if(getTopmostContainer(this) != user)
  {
    return(0x00);
  }
  targetObj(user, this);
  return(0x00);
}

trigger targetobj
{
  if(usedon == NULL())
  {
    return(0x00);
  }
  if(!isEditing(user))
  {
    return(0x00);
  }
  if(getTopmostContainer(this) != user)
  {
    return(0x00);
  }
  if(Q4CT(user, usedon))
  {
    int Q527 = Q4MH(user, usedon);
  }
  return(0x00);
}