// UOSL (native)
inherits globals;

forward void Q5VI(obj , obj );
forward void Q668(obj , obj );

function void Q5N6()
{
  obj Q5C1 = createGlobalNPCAtSpecificLoc(getTemplate(this), getLocation(this));
  if(!isValid(Q5C1))
  {
    return();
  }
  copyAllObjVars(Q5C1, this);
  list Q4E4;
  getContents(Q4E4, this);
  debugMessage("Items found:" + numInList(Q4E4));
  for(int i = numInList(Q4E4) - 0x01; i >= 0x00; i --)
  {
    debugMessage(getName(Q4E4[0x00]) + "(" + i + ")");
    int Q4Q1;
    if(isMobile(Q4E4[0x00]))
    {
      Q4Q1 = putMobContainer(Q4E4[0x00], Q5C1);
    }
    else
    {
      Q4Q1 = putObjContainer(Q4E4[0x00], Q5C1);
    }
    removeItem(Q4E4, 0x00);
  }
  return();
}

function int Q4UX(int Q52T)
{
  debugMessage("Armageddon! (Stables)");
  if(Q52T < 0x02)
  {
    return(0x01);
  }
  Q5N6();
  return(0x01);
}

trigger message("armageddon")
{
  return(Q4UX(args[0x00]));
}

trigger message("stablescleanup")
{
  deleteObject(this);
  return(0x01);
}

function int Q42T(obj Q61K, string Q5FM, obj Q4NJ)
{
  if(!hasObjListVar(Q61K, Q5FM))
  {
    return(0x00);
  }
  list Q4Q1;
  getObjListVar(Q4Q1, Q61K, Q5FM);
  return(isInList(Q4Q1, Q4NJ));
}

trigger speech("*")
{
  if(hasObjListVar(speaker, "petsStoredInStables"))
  {
    removeObjVar(speaker, "petsStoredInStables");
  }
  list Q69B;
  split(Q69B, arg);
  if(isInList(Q69B, "stable"))
  {
    Q5VI(this, speaker);
    return(0x00);
  }
  if(isInList(Q69B, "claim"))
  {
    Q668(this, speaker);
    return(0x00);
  }
  return(0x01);
}

function void Q5VI(obj this, obj speaker)
{
  if(getMoney(speaker) < 0x1E)
  {
    if(amtGoldInBank(speaker) < 0x1E)
    {
      bark(this, "Thou dost not have 30 gold, not even in thy bank account.");
      return();
    }
  }
  list Q5I2;
  getContents(Q5I2, this);
  if(numInList(Q5I2) > 0x64)
  {
    bark(this, "I am sorry, my stables are full.");
    return();
  }
  bark(this, "I charge 30 gold per pet for a real week's stable time. I will withdraw it from thy bank account. Which animal wouldst thou like to stable here?");
  setObjVar(this, "petStablerAsker", speaker);
  targetObj(speaker, this);
  return();
}

function void Q668(obj this, obj speaker)
{
  int Q4Q1;
  list Q5I2;
  getContents(Q5I2, this);
  if(numInList(Q5I2) < 0x01)
  {
    bark(this, "But I have no animals stabled with me at the moment!");
    return();
  }
  obj Q5H7;
  list Q48U;
  obj Q59H;
  string Q58D;
  for(int i = 0x00; i < numInList(Q5I2); i ++)
  {
    Q59H = Q5I2[i];
    if(Q42T(Q59H, "myBoss", speaker))
    {
      Q58D = Q58D + "I have thy pet, " + getName(Q59H) + "... let me fetch it. ";
      Q4Q1 = teleport(Q59H, getLocation(speaker));
      removeObjVar(Q59H, "isInStables");
      detachScript(Q59H, "petzap");
      if(!Q4Q1)
      {
        Q58D = Q58D + "I am sorry to inform thee that... well... it died. ";
        deleteObject(Q59H);
      }
    }
  }
  bark(this, Q58D);
  return();
}

trigger targetobj
{
  if(usedon == NULL())
  {
    return(0x00);
  }
  if(isHuman(usedon))
  {
    bark(this, "HA HA HA! Sorry, I am not an inn.");
    return(0x00);
  }
  if(hasScript(usedon, "destcrea"))
  {
    bark(this, "I can not stable summoned creatures.");
    return(0x00);
  }
  if(!hasObjVar(usedon, "myLoyalty"))
  {
    bark(this, "That's not tame to anyone!");
    return(0x00);
  }
  if(!hasObjListVar(usedon, "myBoss"))
  {
    bark(this, "That's not tame to anyone!");
    return(0x00);
  }
  if(!Q42T(usedon, "myBoss", user))
  {
    bark(this, "That's not your pet!");
    return(0x00);
  }
  if(getMoney(user) < 0x1E)
  {
    if(!withdrawAndDestroy(user, 0x1E))
    {
      bark(this, "But thou hast not the funds in thy bank account!");
      return(0x00);
    }
  }
  else
  {
    destroyGeneric(user, 0x0EED, 0x1E);
  }
  int Q4Q1 = putMobContainer(usedon, this);
  if(!Q4Q1)
  {
    bark(this, "I am sorry, but my stables are full.");
    return(0x00);
  }
  attachScript(usedon, "petzap");
  setObjVar(user, "lastStablemasterUsed", this);
  setObjVar(usedon, "isInStables", 0x01);
  bark(this, "Very well, thy pet is stabled. Thou mayst recover it by saying 'claim' to me. In one real world week, I shall sell it off if it is not claimed!");
  return(0x00);
}