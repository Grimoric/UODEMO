// UOSL (enhanced)
inherits sk_table;

trigger creation()
{
  member int goodSound;
  member int badSound;
  return(0x01);
}

function void Q4J4(obj user)
{
  list Q5J1;
  list Q5XF;
  getNPCsInRange(Q5XF, getLocation(user), 0x0C);
  getPlayersInRange(Q5J1, getLocation(user), 0x0C);
  int i;
  obj Q5Z4;
  for(i = 0x00; i < numInList(Q5J1); i ++)
  {
    Q5Z4 = Q5J1[i];
    appendToList(Q5XF, Q5Z4);
  }
  if(!testSkill(user, 0x1D))
  {
    sfx(getLocation(user), badSound, 0x3C);
    barkTo(user, user, "You play poorly, and there is no effect.");
    return;
  }
  if(!testSkill(user, 0x09))
  {
    sfx(getLocation(user), badSound, 0x3C);
    for(i = 0x00; i < numInList(Q5XF); i ++)
    {
      Q5Z4 = Q5XF[i];
      if(Q5Z4 == user)
      {
        barkTo(user, user, "You attempt to calm everyone, but fail.");
      }
      else
      {
        if(isPlayer(Q5Z4))
        {
          if(getCombatMode(Q5Z4))
          {
            barkTo(Q5Z4, Q5Z4, "You hear music, and for a moment are distracted.");
          }
        }
      }
    }
    return;
  }
  sfx(getLocation(user), goodSound, 0x3C);
  for(i = 0x00; i < numInList(Q5XF); i ++)
  {
    Q5Z4 = Q5XF[i];
    if(Q5Z4 == user)
    {
      systemMessage(user, "You play your hypnotic music, stopping the battle.");
    }
    else
    {
      if(isPlayer(Q5Z4))
      {
        if(getCombatMode(Q5Z4))
        {
          barkTo(Q5Z4, Q5Z4, "You hear lovely music, and forget to continue battling!");
        }
      }
    }
    stopAttack(Q5XF[i]);
  }
  return;
}

trigger message<"canUseSkill">(obj sender, list args)
{
  return(0x00);
}

trigger callback<0x4D>()
{
  detachScript(this, "calm");
  return(0x00);
}

trigger message<"useSkill">(obj sender, list args)
{
  callback(this, 0x0A, 0x4D);
  if(hasObjVar(this, "lastInstrument"))
  {
    obj Q60D = getObjVar(this, "lastInstrument");
    if(hasObj(this, Q60D))
    {
      goodSound = getObjVar(Q60D, "goodSound");
      badSound = getObjVar(Q60D, "badSound");
      Q4J4(this);
      return(0x00);
    }
  }
  systemMessage(this, "What instrument shall you play?");
  targetObj(this, this);
  return(0x00);
}

trigger targetobj(obj user, obj usedon)
{
  if(usedon == NULL())
  {
    return(0x00);
  }
  loc Q4VS = getLocation(user);
  loc there = getLocation(usedon);
  if(getDistanceInTiles(Q4VS, there) > 0x01)
  {
    systemMessage(user, "That is too far away!");
    return(0x00);
  }
  if(!hasObjVar(usedon, "isInstrument"))
  {
    systemMessage(user, "That is not a musical instrument.");
    return(0x00);
  }
  badSound = getObjVar(usedon, "badSound");
  goodSound = getObjVar(usedon, "goodSound");
  setObjVar(user, "lastInstrument", usedon);
  Q4J4(user);
  return(0x00);
}