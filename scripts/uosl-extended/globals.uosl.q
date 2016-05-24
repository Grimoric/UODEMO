// UOSL (enhanced)
function int isOnAnyMulti(obj Q68S)
{
  return(isAnyMultiBelow(getLocation(Q68S)) != NULL());
}

function int Q4ZQ(loc where)
{
  return(isAnyMultiBelow(where) != NULL());
}

function int Q4ZR(obj Q44K, obj Q44L)
{
  return(isAnyMultiBelow(getLocation(Q44K)) == isAnyMultiBelow(getLocation(Q44L)));
}

function int Q4ZZ(obj Q44K, loc Q4G3)
{
  return(isAnyMultiBelow(getLocation(Q44K)) == isAnyMultiBelow(Q4G3));
}

function int Q4ZS(obj Q68S, obj multi)
{
  return(isAnyMultiBelow(getLocation(Q68S)) == multi);
}

function obj Q4SA(loc Q4G3)
{
  return(isAnyMultiBelow(Q4G3));
}

function obj Q4S9(obj it)
{
  return(isAnyMultiBelow(getLocation(it)));
}

function int Q4BL(obj user, string Q5H3, int Q480)
{
  if(Q480)
  {
    string Q5CR;
    Q5CR = Q5H3;
    concat(Q5CR, " has been temporarily disabled.");
    systemMessage(user, Q5CR);
    return(0x01);
  }
  return(0x00);
}

function int Q4BD(obj pet, obj boss)
{
  list Q48U;
  if(!hasObjListVar(pet, "myBoss"))
  {
    return(0x00);
  }
  getObjListVar(Q48U, pet, "myBoss");
  return(isInList(Q48U, boss));
}

function int Q41R(obj user, obj usedon)
{
  if(usedon == NULL())
  {
    return(0x00);
  }
  if(user == usedon)
  {
    systemMessage(user, "Thou can not resurrect thyself.");
    return(0x00);
  }
  if(isDead(user))
  {
    systemMessage(user, "The resurrecter must be alive.");
    return(0x00);
  }
  if(canSeeObj(user, usedon) == 0x01)
  {
    if(isPlayer(usedon))
    {
      if(!isDead(usedon))
      {
        systemMessage(user, "Target is not dead.");
        return(0x00);
      }
      loc target = getLocation(usedon);
      int Q4XW = getHeight(usedon);
      if(0x07 != canExistAt(target, Q4XW, 0x01))
      {
        systemMessage(user, "Target can not be resurrected at that location.");
        return(0x00);
      }
      loc Q671 = getLocation(user);
      if((getDistanceInTiles(Q671, target) > 0x01) || (!Q4ZR(user, usedon)))
      {
        systemMessage(user, "Target is not close enough.");
        return(0x00);
      }
      return(0x01);
    }
    else
    {
      systemMessage(user, "Target is not a being.");
      return(0x00);
    }
  }
  else
  {
    systemMessage(user, "Target cannot be seen.");
    return(0x00);
  }
  return(0x00);
}

function void Q426(obj user, obj usedon, int Q65M, string desc)
{
  setObjVar(usedon, "resurrectLocation", getLocation(usedon));
  setObjVar(usedon, "resurrectCaster", user);
  setObjVar(usedon, "resurrectType", Q65M);
  setObjVar(usedon, "resurrectDesc", desc);
  attachScript(usedon, "resmenu");
  return;
}

function int Q4SM(obj Q68S)
{
  int Q5NC;
  if(hasObjVar(Q68S, "origNotoriety"))
  {
    Q5NC = getObjVar(Q68S, "origNotoriety");
  }
  else
  {
    Q5NC = getNotoriety(Q68S);
  }
  return(Q5NC);
}

function int Q4SN(obj Q68S)
{
  return(getNotorietyLevelByNot(Q4SM(Q68S)));
}

function int Q5MA(list Q5AG)
{
  int Q4NB = 0x00;
  list Q4EB;
  copyList(Q4EB, Q5AG);
  clearList(Q5AG);
  obj it;
  int num = numInList(Q4EB);
  for(int i = 0x00; i < num; i ++)
  {
    it = Q4EB[i];
    if(isInList(Q5AG, it))
    {
      Q4NB ++;
    }
    else
    {
      appendToList(Q5AG, it);
    }
  }
  return(Q4NB);
}

function void Q662(obj Q61K, int Q5MG)
{
  if(isInvisible(Q61K))
  {
    setInvisible(Q61K, 0x00);
  }
  if(Q5MG)
  {
    if(hasScript(Q61K, "hidesk"))
    {
      detachScript(Q61K, "hidesk");
    }
  }
  return;
}

function void Q661(obj Q61K)
{
  Q662(Q61K, 0x01);
  return;
}

function void hide(obj Q61K)
{
  if(!isInvisible(Q61K))
  {
    setInvisible(Q61K, 0x01);
  }
  return;
}

function void Q5RC(obj Q4P2, obj caster)
{
  setObjVar(Q4P2, "caster", caster);
  return;
}

function obj Q4RM(obj Q4P2)
{
  obj Q68S = NULL();
  if(hasObjVar(Q4P2, "caster"))
  {
    Q68S = getObjVar(Q4P2, "caster");
  }
  return(Q68S);
}

function int Q5ZJ(obj Q68S, int skill, int Q4IA, int Q46N)
{
  return(getSkillSuccessChance(Q68S, skill, Q4IA, Q46N) - random(0x00, 0x03E7));
}

function void Q4MN(obj Q68D, loc where)
{
  attachScript(Q68D, "teleobj");
  list Q5Z0;
  appendToList(Q5Z0, where);
  message(Q68D, "teleobj", Q5Z0);
  return;
}

function void Q581(obj it, int Q5DU, int Q5DV, int Q5DW, int Q5DX)
{
  int Q5AX;
  int Q5AY;
  int Q5AZ;
  int Q5B0;
  getWeaponClass(it, Q5AX, Q5AY, Q5AZ, Q5B0);
  Q5AX = Q5AX + Q5DU;
  Q5AY = Q5AY + Q5DV;
  Q5AZ = Q5AZ + Q5DW;
  Q5B0 = Q5B0 + Q5DX;
  setWeaponClass(it, Q5AX, Q5AY, Q5AZ, Q5B0);
  return;
}

function void Q56V(obj recipient, string Q56R, list args)
{
  if(isValid(recipient))
  {
    message(recipient, Q56R, args);
    return;
  }
  obj Q4DT = createNoResObjectAt(0x01, getLocation(this));
  setObjVar(Q4DT, "recipient", recipient);
  attachScript(Q4DT, "comprobe");
  prependToList(args, Q56R);
  message(Q4DT, "addMessage", args);
  int Q4Q1 = teleport(Q4DT, getRelayLoc(recipient));
  clearList(args);
  if(isValid(Q4DT))
  {
    message(Q4DT, "teleported", args);
  }
  return;
}

function int isHumanBodyType(int Q65M)
{
  return((Q65M == 0x0190) || (Q65M == 0x0191));
}

function int Q4ZB(obj it)
{
  if(isCorpse(it))
  {
    int Q65M = getCorpseBodyType(it);
    if(isHumanBodyType(Q65M))
    {
      return(0x01);
    }
  }
  return(0x00);
}

function int Q50D(obj victim)
{
  if(!isMobile(victim))
  {
    return(0x00);
  }
  int Q5YT = getObjType(victim);
  switch(Q5YT)
  {
  case 0x18:
  case 0x1A:
  case 0x32:
  case 0x38:
  case 0x03:
    return(0x01);
    break;
  default:
    return(0x00);
    break;
  }
  return(0x00);
}

function void Q4HU(obj corpse)
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
  return;
}

function loc Q42E(loc where)
{
  loc Q5HP;
  list Q5HN = 0x0FE6, 0x0FE7, 0x0FE8, 0x0FE9, 0x0FEA, 0x0FEB, 0x0FEC, 0x0FED, 0x0FEE;
  loc blah = where;
  if(objectsNearby(Q5HN, blah, 0x06, 0x0FEA))
  {
    Q5HP = blah;
    return(Q5HP);
  }
  list Q5HO = 0x120E, 0x120F, 0x1210, 0x1211, 0x1212, 0x1213, 0x1214, 0x1215, 0x1216;
  if(objectsNearby(Q5HO, blah, 0x06, 0x1216))
  {
    Q5HP = blah;
    return(Q5HP);
  }
  return(Q5HP);
}

function int Q41Y(obj user, int Q4KF, loc Q5HP)
{
  list Q4AB = 0x0A26, 0x0A27, 0x0A28, 0x0A29, 0x142F, 0x1433, 0x1437, 0x1853, 0x1857, 0x1C16;
  list Q514;
  int count = 0x00;
  getObjectsInRange(Q514, Q5HP, 0x02);
  int Q50Z = numInList(Q514);
  int Q4AA = numInList(Q4AB);
  for(int i = 0x00; i < Q50Z; i ++)
  {
    int Q513 = getObjType(Q514[i]);
    for(int Q518 = 0x00; Q518 < Q4AA; Q518 ++)
    {
      if(Q513 == (Q4AB[Q518]))
      {
        count ++;
        if(Q4KF)
        {
          useItem(user, Q514[i]);
        }
      }
    }
  }
  return(count);
}

function void Q48E(obj Q61K)
{
  Q662(Q61K, 0x00);
  list Q5DT;
  message(Q61K, "uninvis", Q5DT);
  return;
}

function void Q5RE(obj it, string desc)
{
  setObjVar(it, "lookAtText", desc);
  return;
}

function void Q5QJ(obj it)
{
  obj container = containedBy(it);
  if(container == NULL())
  {
    destroyOne(it);
    return;
  }
  if(!isSpellbook(container))
  {
    destroyOne(it);
  }
  return;
}

function int Q50B(loc where)
{
  return((getX(where) >= 0x1400) && (getY(where) >= 0x0900) && (getX(where) <= 0x17FF) && (getY(where) <= 0x0FFF));
}

function int Q4YW(loc Q5U8, loc dest)
{
  return(Q50B(Q5U8) && (!Q50B(dest)));
}

function int Q4YX(loc Q5U8, loc dest)
{
  return((!Q50B(Q5U8)) && Q50B(dest));
}

function int Q4YV(loc Q5U8, loc dest)
{
  return(Q4YX(Q5U8, dest) || Q4YW(Q5U8, dest));
}

function int Q50C(obj it)
{
  if(isNPC(it))
  {
    switch(getObjType(it))
    {
    case 0x46:
    case 0x47:
    case 0x48:
    case 0x4B:
    case 0x4C:
    case 0x50:
    case 0x51:
    case 0x55:
    case 0x56:
    case 0x57:
    case 0x5F:
    case 0xCE:
    case 0x03E2:
    case 0x023D:
    case 0xD2:
    case 0xDA:
    case 0xDB:
      return(0x01);
      break;
    }
  }
  return(0x00);
}

function int Q4A7(obj Q68D, loc Q5U8, loc dest)
{
  if(isPlayer(Q68D))
  {
    if(Q4YX(Q5U8, dest))
    {
      if(isGoldAccount(Q68D))
      {
        return(0x01);
      }
      else
      {
        return(0x00);
      }
    }
    else
    {
      if(Q4YW(Q5U8, dest))
      {
        if(isRiding(Q68D))
        {
        }
      }
    }
    return(0x01);
  }
  if(isNPC(Q68D))
  {
    if(Q50C(Q68D))
    {
      if(Q4YW(Q5U8, dest))
      {
        return(0x00);
      }
      else
      {
        return(0x01);
      }
    }
    return(0x01);
  }
  return(0x01);
}

function int Q5Z1(obj Q68D, loc Q5U8, loc dest, string Q4HF)
{
  if(!Q4A7(Q68D, Q5U8, dest))
  {
    string Q56O = "You must be a registered UO Gold user to ";
    concat(Q56O, Q4HF);
    concat(Q56O, ".");
    systemMessage(Q68D, Q56O);
    return(0x00);
  }
  return(0x01);
}

function void Q5Z2(obj boss, loc destination)
{
  list Q57T;
  list Q48U;
  obj it;
  int Q642 = 0x00;
  getMobsInRange(Q57T, getLocation(boss), 0x19);
  for(int i = 0x00; i < numInList(Q57T); i ++)
  {
    it = Q57T[i];
    Q642 = 0x00;
    if(hasObjListVar(it, "myBoss"))
    {
      getObjListVar(Q48U, it, "myBoss");
      if(isInList(Q48U, boss))
      {
        if(getLeader(it) == boss)
        {
          Q642 = 0x01;
        }
      }
    }
    else
    {
      if(isNPC(it))
      {
        if(getLeader(it) == boss)
        {
          Q642 = 0x01;
        }
      }
    }
    if(Q642)
    {
      if(Q5Z1(it, getLocation(it), destination, "teleport there"))
      {
        int r = teleport(it, destination);
      }
    }
  }
  return;
}