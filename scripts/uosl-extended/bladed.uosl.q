// UOSL (enhanced)
inherits itemmanip;

function void Q5IH(obj Q68S, obj item, string Q56O)
{
  obj Q5HA = getBackpack(Q68S);
  string Q5AI = Q56O;
  if(isValid(Q5HA) && canHold(Q5HA, item))
  {
    concat(Q5AI, " in your backpack.");
    int Q527 = putObjContainer(item, Q5HA);
  }
  else
  {
    concat(Q5AI, " at your feet.");
  }
  systemMessage(Q68S, Q5AI);
  return;
}

function void Q4Y8()
{
  deleteArray(0x01);
  if(isArrayInit(0x01))
  {
    return;
  }
  list Q4DS = 0x00, "COL_NAME", 0x02, 0x03, "COL_ACTION";
  initArray(0x01, 0x05, 0x05, Q4DS);
  setArrayIntElem(0x01, 0x00, 0x00, 0x0DE1);
  setArrayIntElem(0x01, 0x02, 0x00, 0x00 - 0x03E8);
  setArrayIntElem(0x01, 0x00, 0x01, 0x1BD4);
  setArrayIntElem(0x01, 0x02, 0x01, 0x00);
  setArrayStrElem(0x01, 0x01, 0x01, "Arrow shafts using all wood");
  setArrayStrElem(0x01, 0x04, 0x01, "shafts");
  setArrayIntElem(0x01, 0x00, 0x02, 0x13B2);
  setArrayIntElem(0x01, 0x02, 0x02, 0x012C);
  setArrayIntElem(0x01, 0x00, 0x03, 0x0F4F);
  setArrayIntElem(0x01, 0x02, 0x03, 0x0258);
  setArrayIntElem(0x01, 0x00, 0x04, 0x13FD);
  setArrayIntElem(0x01, 0x02, 0x04, 0x0384);
  for(int i = 0x00; i < 0x05; i ++)
  {
    int Q65M = getArrayIntElem(0x01, 0x00, i);
    obj Q61Z = createNoResObjectAt(Q65M, getLocation(this));
    int wood = 0x00;
    int Q4Q1 = getResource(wood, Q61Z, "wood", 0x03, 0x00);
    setArrayIntElem(0x01, 0x03, i, wood);
    deleteObject(Q61Z);
  }
  return;
}

trigger creation()
{
  Q4Y8();
  return(0x01);
}

trigger objectloaded()
{
  Q4Y8();
  return(0x01);
}

forward int Q4YR(obj );

function void Q4IU(obj Q57Q, int Q467)
{
  if(getItemAtSlot(Q57Q, 0x19) != NULL())
  {
    return;
  }
  if(getObjType(Q57Q) >= 0x0190)
  {
    animateMobile(Q57Q, Q467, 0x14, 0x01, 0x00, 0x00);
  }
  return;
}

function obj Q4EN(loc Q4EC)
{
  obj Q48G = createNoResObjectAt(random(0x122A, 0x122F), Q4EC);
  attachScript(Q48G, "deletethis");
  callback(Q48G, 0x01A4, 0x1B);
  return(Q48G);
}

function obj Q4EO(loc Q4EC, int Q65M, string Q65P, string Q67J)
{
  obj Q48M = createNoResObjectAt(Q65M, Q4EC);
  setObjVar(Q48M, "nameVar", Q67J);
  setObjVar(Q48M, "lookAtText", Q65P + " of " + Q67J);
  int Q4Q1 = makeValueless(Q48M);
  callbackAdvanced(Q48M, 0x04 * 0x3C * 0x1E, 0x01, 0x00);
  return(Q48M);
}

function void Q4JH(obj user, obj usedon)
{
  list Q514;
  loc Q4EC;
  string name;
  int Q51J;
  obj Q48M;
  obj Q495;
  Q4EC = getLocation(usedon);
  name = getObjVar(usedon, "nameVar");
  int Q4Q1;
  switch(getObjType(usedon))
  {
  case 0x2006:
    if(!getCompileFlag(0x01))
    {
      if(getNotorietyLevel(user) >= (0x00 - 0x02))
      {
        addNotoriety(user, 0x00 - 0x0A);
      }
    }
    else
    {
      if(canBeFreelyAggressedBy(usedon, user))
      {
        changeKarma(user, 0x00 - 0x1B58);
      }
      else
      {
        changeKarma(user, 0x00 - 0x07D0);
      }
      receiveUnhealthyActionFrom(usedon, user);
    }
    getContents(Q514, usedon);
    for(int x = 0x00; x < numInList(Q514); x ++)
    {
      obj Q4FF = Q514[x];
      int Q5TS = getEquipSlot(Q4FF);
      if((Q5TS != 0x0B) && (Q5TS != 0x10))
      {
        Q51J = teleport(Q4FF, Q4EC);
      }
    }
    Q495 = Q4EN(Q4EC);
    Q48M = Q4EO(Q4EC, 0x1DA0, "head", name);
    copyObjVar(Q48M, usedon, "controller");
    deleteObject(usedon);
    Q48M = Q4EO(Q4EC, 0x1DA1, "left arm", name);
    Q48M = Q4EO(Q4EC, 0x1DA2, "right arm", name);
    Q48M = Q4EO(Q4EC, 0x1DA3, "left leg", name);
    Q48M = Q4EO(Q4EC, 0x1DA4, "right leg", name);
    Q48M = Q4EO(Q4EC, 0x1D9F, "torso", name);
    break;
  case 0x1DA0:
    deleteObject(usedon);
    Q495 = Q4EN(Q4EC);
    Q48M = Q4EO(Q4EC, 0x1CF0, "brain", name);
    Q48M = Q4EO(Q4EC, 0x1AE2, "skull", name);
    break;
  case 0x1D9F:
    deleteObject(usedon);
    Q495 = Q4EN(Q4EC);
    Q48M = Q4EO(Q4EC, 0x1B17, "ribcage", name);
    Q48M = Q4EO(Q4EC, 0x1CEE, "liver", name);
    Q48M = Q4EO(Q4EC, 0x1CED, "heart", name);
    Q48M = Q4EO(Q4EC, 0x1CEC, "entrails", name);
    break;
  case 0x1DA4:
  case 0x1DA3:
    deleteObject(usedon);
    Q495 = Q4EN(Q4EC);
    Q48M = Q4EO(Q4EC, 0x1B11, "femur", name);
    break;
  case 0x1DA1:
  case 0x1DA2:
    deleteObject(usedon);
    Q495 = Q4EN(Q4EC);
    Q48M = Q4EO(Q4EC, 0x1B12, "armbone", name);
    break;
  }
  return;
}

trigger use(obj user)
{
  string Q58D = "What do you want to use " + getName(this) + " on?";
  systemMessage(user, Q58D);
  targetObj(user, this);
  return(0x00);
}

trigger targetobj(obj user, obj usedon)
{
  if(usedon == NULL())
  {
    return(0x00);
  }
  if(getDistanceInTiles(getLocation(usedon), getLocation(user)) > 0x03)
  {
    systemMessage(user, "That is too far away.");
    return(0x00);
  }
  int Q4Q1;
  int Q4QI;
  Q4QI = 0x00;
  if(hasObjVar(usedon, "nameVar"))
  {
    Q4JH(user, usedon);
    return(0x00);
  }
  if(isMobile(usedon))
  {
    int Q48L = getObjType(usedon);
    if(Q48L != 0xCF)
    {
      if(Q48L == 0xDF)
      {
        ebarkTo(usedon, user, "This sheep is not yet ready to be shorn.");
      }
      else
      {
        ebarkTo(usedon, user, "But that's not dead!");
      }
      return(0x00);
    }
    int Q4DL;
    Q4Q1 = getResource(Q4DL, usedon, "cloth", 0x03, 0x02);
    if(Q4DL > 0x1D)
    {
      setType(usedon, 0xDF);
      setObjVar(usedon, "woolOnSheep", 0x01);
      obj Q617 = createNoResObjectAt(0x0DF8, getLocation(user));
      transferResources(Q617, usedon, Q4DL, "cloth");
      Q5IH(user, Q617, "You place the wool");
    }
    else
    {
      ebarkTo(usedon, user, "The sheep nimbly escapes your attempts to sheer his wool.");
    }
    return(0x00);
  }
  int Q615 = getObjType(usedon);
  obj Q47G = getBackpack(user);
  switch(Q615)
  {
  case 0x1BD7:
  case 0x1BD8:
  case 0x1BD9:
  case 0x1BDA:
  case 0x1BDB:
  case 0x1BDC:
  case 0x1BDD:
  case 0x1BDE:
  case 0x1BDF:
  case 0x1BE0:
  case 0x1BE1:
  case 0x1BE2:
    if(isAtHome(usedon))
    {
      systemMessage(user, "That wood belongs to someone else.");
      return(0x00);
    }
    int Q694;
    Q4Q1 = getResource(Q694, usedon, "wood", 0x03, 0x02);
    if(Q694 <= 0x00)
    {
      systemMessage(user, "There isn't enough wood here");
      return(0x00);
    }
    list fletching;
    clearList(fletching);
    int Q55Z = getSkillLevelReal(user, 0x08) + 0x0190;
    for(int i = 0x00; i < 0x05; i ++)
    {
      if(getArrayIntElem(0x01, 0x02, i) < Q55Z)
      {
        if(getArrayIntElem(0x01, 0x03, i) <= Q694)
        {
          appendToList(fletching, getArrayIntElem(0x01, 0x00, i));
          string name = getArrayStrElem(0x01, 0x01, i);
          if(name != "")
          {
            appendToList(fletching, name);
          }
        }
      }
    }
    setObjVar(this, "usedon", usedon);
    selectType(user, this, 0x28, "Choose an item to make.", fletching);
    return(0x00);
    break;
  case 0x09CC:
  case 0x09CD:
  case 0x09CE:
  case 0x09CF:
    int Q4PK;
    if(isAtHome(usedon))
    {
      systemMessage(user, "You can't prepare that fish, it belongs to someone else.");
      return(0x00);
    }
    obj fish = createNoResObjectAt(0x097A, getLocation(user));
    transferResources(fish, usedon, 0x04, "fish");
    Q5IH(user, fish, "You cut the fish into steaks and put them");
    destroyOne(usedon);
    return(0x00);
    break;
  }
  if(hasObjVar(usedon, "chopable"))
  {
    if(Q4YR(this))
    {
      list Q5FE;
      int Q5G8 = 0x00;
      int Q49U = 0x00;
      obj Q5TP;
      getObjectsAt(Q5FE, getLocation(usedon));
      for(int c = 0x00; c < numInList(Q5FE); c ++)
      {
        if(isMultiComp(Q5FE[c]))
        {
          Q5G8 = 0x01;
          Q5TP = getMultiSlaveId(Q5FE[c]);
        }
      }
      if(Q5G8)
      {
        if(hasObjVar(Q5TP, "myhousedoor"))
        {
          obj Q5AB = getObjVar(Q5TP, "myhousedoor");
          obj Q5NC = mobileHasObjWithListObjOfObj(user, "whatIUnlock", Q5AB);
          if(!(Q5NC == NULL()))
          {
            systemMessage(user, "Since you are the owner of the house, you can destroy the movable furniture within.");
            Q49U = 0x01;
          }
          else
          {
            debugMessage("You didn't have a key.");
          }
        }
        else
        {
          debugMessage("Slave doesn't have myhousedoor objVar.");
        }
      }
      else
      {
        Q49U = 0x01;
      }
      if(hasObjVar(usedon, "trapLevel"))
      {
        list Q63G = user, usedon;
        message(usedon, "triggerTrap", Q63G);
      }
      if(Q49U)
      {
        if(isContainer(usedon))
        {
          list Q5FF;
          getcontents(Q5FF, usedon);
          for(c = 0x00; c < numInList(Q5FF); c ++)
          {
            Q4Q1 = teleport(Q5FF[c], getLocation(usedon));
          }
        }
        systemMessage(user, "You destroy the item.");
        sfx(getLocation(usedon), 0x0139, 0x00);
        deleteObject(usedon);
        return(0x00);
      }
      else
      {
        systemMessage(user, "You can't destroy that while it is here.");
        return(0x00);
      }
    }
    else
    {
      systemMessage(user, "You will need an axe of some sort to destroy this.");
      return(0x00);
    }
  }
  if(Q615 != 0x2006)
  {
    ebarkTo(usedon, user, "Use this on corpses to carve away meat and hide.");
    return(0x00);
  }
  loc Q60S = getLocation(usedon);
  int value;
  obj Q60X;
  int Q5ZS = random(0x122A, 0x122F);
  obj Q48H = createNoResObjectAt(Q5ZS, Q60S);
  attachScript(Q48H, "deletethis");
  callback(Q48H, 0x01A4, 0x1B);
  if(getResource(value, usedon, "meat", 0x03, 0x02))
  {
    if(value > 0x00)
    {
      Q4IU(user, 0x20);
      Q60X = createNoResObjectAt(0x09F1, Q60S);
      transferResources(Q60X, usedon, value, "meat");
      Q4QI = 0x01;
      if((giveItem(user, Q60X) == NULL()) || (!canHold(user, Q60X)))
      {
        systemMessage(user, "You don't have anywhere to carry the meat.");
        Q4Q1 = teleport(Q60X, getLocation(user));
      }
      else
      {
        systemMessage(user, "You carve away some meat.");
      }
    }
    else
    {
    }
  }
  if(getResource(value, usedon, "leather", 0x03, 0x02))
  {
    if(value > 0x00)
    {
      Q4IU(user, 0x20);
      Q60X = createNoResObjectAt(random(0x1078, 0x1079), Q60S);
      transferResources(Q60X, usedon, value, "leather");
      Q4QI = 0x01;
      if((giveItem(user, Q60X) == NULL()) || (!canHold(user, Q60X)))
      {
        systemMessage(user, "You don't have anywhere to carry the hides.");
        Q4Q1 = teleport(Q60X, getLocation(user));
      }
      else
      {
        systemMessage(user, "You skin the corpse and get the hide.");
      }
    }
    else
    {
    }
  }
  if(getResource(value, usedon, "fur", 0x03, 0x02))
  {
    if(value > 0x00)
    {
      Q4IU(user, 0x20);
      Q60X = createNoResObjectAt(random(0x11F4, 0x11FB), Q60S);
      transferResources(Q60X, usedon, value, "fur");
      Q4QI = 0x01;
      if((giveItem(user, Q60X) == NULL()) || (!canHold(user, Q60X)))
      {
        systemMessage(user, "You don't have anywhere to carry the furs.");
        Q4Q1 = teleport(Q60X, getLocation(user));
      }
      else
      {
        systemMessage(user, "You skin the corpse and get the fur.");
      }
    }
    else
    {
    }
  }
  if(getResource(value, usedon, "feathers", 0x03, 0x02))
  {
    if(value > 0x00)
    {
      Q4IU(user, 0x20);
      Q60X = createNoResObjectAt(0x1BD1, Q60S);
      transferResources(Q60X, usedon, value, "feathers");
      Q4QI = 0x01;
      if((giveItem(user, Q60X) == NULL()) || (!canHold(user, Q60X)))
      {
        systemMessage(user, "You don't have anywhere to carry the feathers.");
        Q4Q1 = teleport(Q60X, getLocation(user));
      }
      else
      {
        systemMessage(user, "You pluck the bird and get the feathers.");
      }
    }
    else
    {
    }
  }
  if(getResource(value, usedon, "cloth", 0x03, 0x02))
  {
    if(value > 0x00)
    {
      Q4IU(user, 0x20);
      Q60X = createNoResObjectAt(0x101F, Q60S);
      transferResources(Q60X, usedon, value, "cloth");
      Q4QI = 0x01;
      if((giveItem(user, Q60X) == NULL()) || (!canHold(user, Q60X)))
      {
        systemMessage(user, "You don't have anywhere to carry the wool.");
        Q4Q1 = teleport(Q60X, getLocation(user));
      }
      else
      {
        systemMessage(user, "You shear the corpse and get the wool.");
      }
    }
    else
    {
    }
  }
  if(!Q4QI)
  {
    ebarkTo(usedon, user, "You see nothing useful to carve from the corpse.");
  }
  return(0x00);
}

function void Q54J(obj user)
{
  Q4IU(user, 0x0D);
  shortCallback(this, 0x03, 0x6F);
  return;
}

trigger targetloc(obj user, loc place, int objtype)
{
  if(getDistanceInTiles(getLocation(user), place) > 0x02)
  {
    systemMessage(user, "That is too far away.");
    return(0x00);
  }
  if(!isInMap(place))
  {
    return(0x00);
  }
  int Q62A = getObjType(this);
  obj Q4D6;
  int Q4Q1;
  int Q694;
  obj Q47F = getBackpack(user);
  if(Q4YR(this))
  {
    if(Q50A(objtype))
    {
      if(!isEquipped(this))
      {
        systemMessage(user, "The axe must me equipped for any serious wood chopping.");
        return(0x00);
      }
      Q4D6 = getChunkEgg(place);
      Q4Q1 = getResource(Q694, Q4D6, "wood", 0x03, 0x02);
      if(Q694 > 0x09)
      {
        setObjVar(this, "user", user);
        setObjVar(this, "logLoc", place);
        Q54J(user);
        return(0x00);
      }
      else
      {
        systemMessage(user, "There's not enough wood here to harvest.");
        return(0x00);
      }
    }
    else
    {
      systemMessage(user, "You can't use an axe on that.");
    }
  }
  else
  {
    if(Q50A(objtype))
    {
      Q4D6 = getChunkEgg(place);
      Q4Q1 = getResource(Q694, Q4D6, "wood", 0x03, 0x02);
      if(Q694 > 0x00)
      {
        obj kindling = createNoResObjectAt(0x0DE1, getLocation(user));
        transferResources(kindling, Q4D6, 0x01, "wood");
        if(canHold(user, kindling))
        {
          systemMessage(user, "You were able to knock some kindling off the tree and put it in your backpack.");
          Q4Q1 = teleport(kindling, getLocation(user));
        }
        else
        {
          systemMessage(user, "You were able to knock some kindling off the tree.");
        }
        systemMessage(user, "An axe would probably get you more wood.");
      }
      else
      {
        systemMessage(user, "There's not enough wood here to harvest.");
        return(0x00);
      }
    }
    else
    {
      systemMessage(user, "You can't use a bladed item on that.");
    }
  }
  return(0x00);
}

trigger callback<0x6F>()
{
  obj user = getObjVar(this, "user");
  sfx(getLocation(user), 0x013E, 0x00);
  if(getDistanceInTiles(getLocation(user), getObjVar(this, "logLoc")) <= 0x02)
  {
    shortCallback(this, 0x02, 0x6E);
  }
  return(0x00);
}

trigger callback<0x6E>()
{
  obj user = getObjVar(this, "user");
  if(random(0x00, 0x02))
  {
    Q54J(user);
    return(0x00);
  }
  loc place = getObjVar(this, "logLoc");
  removeObjVar(this, "user");
  removeObjVar(this, "logLoc");
  obj Q4D6 = getChunkEgg(place);
  int Q694 = 0x00;
  int Q4Q1 = getResource(Q694, Q4D6, "wood", 0x03, 0x02);
  if(Q694 < 0x0A)
  {
    systemMessage(user, "You hack at the tree for a while, but fail to produce any useable wood.");
    return(0x00);
  }
  if(!testSkill(user, 0x2C))
  {
    systemMessage(user, "You hack at the tree for a while, but fail to produce any useable wood.");
    returnResourcesToBank(Q4D6, 0x0A, "wood");
    return(0x00);
  }
  obj log = createNoResObjectAt(0x1BDD, getLocation(user));
  transferResources(log, Q4D6, 0x0A, "wood");
  Q5IH(user, log, "You put some logs");
  returnResourcesToBank(Q4D6, 0x14, "wood");
  return(0x00);
}

function void Q4PS(obj user)
{
  sfx(getLocation(user), 0x55, 0x00);
  Q4IU(user, 0x21);
  callback(this, 0x02, 0x6D);
  return;
}

trigger typeselected<0x28>(obj user, int listindex, int objtype, int objhue)
{
  debugMessage("Typeselected: Fletching");
  if(listindex == 0x00)
  {
    removeObjVar(this, "usedon");
    return(0x00);
  }
  if(!hasObjVar(this, "usedon"))
  {
    return(0x00);
  }
  listindex --;
  obj usedon = getObjVar(this, "usedon");
  setObjVar(this, "arrayIndex", listindex);
  setObjVar(this, "user", user);
  setObjVar(this, "actionCount", 0x01 + (getArrayIntElem(0x01, 0x02, listindex) / 0xC8));
  string Q510 = getArrayStrElem(0x01, 0x04, listindex);
  if(Q510 == "")
  {
    Q510 = getNameByType(getArrayIntElem(0x01, 0x00, listindex));
  }
  actionBark(user, 0x0602, "*You start carving " + Q510 + ".*", "*" + getName(user) + " starts carving " + Q510 + ".*");
  Q4PS(user);
  return(0x00);
}

function void cleanup()
{
  removeObjVar(this, "usedon");
  removeObjVar(this, "arrayIndex");
  removeObjVar(this, "user");
  removeObjVar(this, "actionCount");
  return;
}

trigger callback<0x6D>()
{
  int actionCount = getObjVar(this, "actionCount");
  debugMessage("ActionCount=" + actionCount);
  actionCount --;
  obj user = getObjVar(this, "user");
  if(actionCount > 0x00)
  {
    setObjVar(this, "actionCount", actionCount);
    Q4PS(user);
    return(0x00);
  }
  obj usedon = getObjVar(this, "usedon");
  int arrayIndex = getObjVar(this, "arrayIndex");
  int Q696 = 0x00;
  int Q694 = 0x00;
  if(isValid(usedon))
  {
    obj Q4E2 = getTopmostContainer(usedon);
    if((Q4E2 == NULL()) || (Q4E2 == user))
    {
      Q696 = getArrayIntElem(0x01, 0x03, arrayIndex);
      int Q4Q1 = getResource(Q694, usedon, "wood", 0x03, 0x02);
      if(Q694 < Q696)
      {
        Q696 = 0x00;
      }
    }
  }
  if(Q696 <= 0x00)
  {
    actionBark(user, 0x0602, "*You can no longer find all of the wood you were working with.*", "*" + getName(user) + " has misplaced the wood he was working with.*");
    cleanup();
    return(0x00);
  }
  int Q5BY = getArrayIntElem(0x01, 0x00, arrayIndex);
  obj Q4EV = createNoResObjectAt(Q5BY, getLocation(user));
  string Q5KR = "it";
  if(Q5BY == 0x1BD4)
  {
    Q696 = Q694;
    if(Q696 > 0x01)
    {
      Q5KR = "them";
    }
  }
  transferResources(Q4EV, usedon, Q696, "wood");
  if((Q694 - Q696) <= 0x00)
  {
    deleteObject(usedon);
  }
  int success = testAndLearnSkill(user, 0x08, getArrayIntElem(0x01, 0x02, arrayIndex), 0x50);
  if(success <= 0x00)
  {
    actionBark(user, 0x0602, "*You carve the wood away but are left with nothing.*", "*" + getName(user) + " stops carving, but is left with nothing useful.*");
    deleteObject(Q4EV);
    cleanup();
    return(0x00);
  }
  Q5IH(user, Q4EV, "You make " + getName(Q4EV) + " and put " + Q5KR);
  cleanup();
  return(0x00);
}

function int Q4YR(obj weapon)
{
  switch(getObjType(weapon))
  {
  case 0x0F43:
  case 0x0F44:
  case 0x0F45:
  case 0x0F46:
  case 0x0F47:
  case 0x0F48:
  case 0x0F49:
  case 0x0F4A:
  case 0x0F4B:
  case 0x0F4C:
  case 0x0F4D:
  case 0x0F4E:
  case 0x13AF:
  case 0x13B0:
  case 0x13FA:
  case 0x13FB:
  case 0x143E:
  case 0x143F:
  case 0x1442:
  case 0x1443:
    return(0x01);
  }
  return(0x00);
}