// UOSL (native)
inherits housestuff;

member obj Q62D;
member obj Q5UC;
member int Q65Q;
member int Q5C5;
member int Q55M;
member int Q55S;
member int Q55O;
member int Q512;
member int Q4YZ;
member int Q68R;

forward void Q4ER();

function int Q46J(obj user, obj Q66L)
{
  if(hasObjVar(Q66L, "lifeRemaining"))
  {
    int lifeRemaining = getObjVar(Q66L, "lifeRemaining");
    if(lifeRemaining > 0x01)
    {
      setObjVar(Q66L, "lifeRemaining", (lifeRemaining - 0x01));
    }
    else
    {
      string name = getNameByType(getObjType(this));
      systemMessage(user, "You destroyed the " + name + ".");
      return(0x01);
    }
  }
  else
  {
    setObjVar(Q66L, "lifeRemaining", 0x32);
  }
  return(0x00);
}

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
  return();
}

trigger creation
{
  Q4YZ = 0x00;
  Q68R = 0x00;
  return(0x00);
}

trigger use
{
  int Q62A = getObjType(this);
  if(Q62A != 0x1EBC)
  {
    if(isAtHome(this))
    {
      systemMessage(user, "You can't use that, it belongs to someone else.");
      return(0x00);
    }
  }
  if(hasObjVar(this, "inUse"))
  {
    systemMessage(user, "Someone else is using that");
    return(0x00);
  }
  else
  {
    setObjVar(this, "inUse", 0x00);
    callback(this, 0x1E, 0x1B);
  }
  loc Q61U = getLocation(this);
  obj Q5NB;
  int Q5L6;
  switch(Q62A)
  {
  case 0x1059
  case 0x105A
    Q5L6 = random(0x00, 0x01) + 0x1057;
    Q5NB = createNoResObjectAt(Q5L6, getLocation(user));
    Q5IH(user, Q5NB, "You assemble the parts, and put the sextant");
    destroyOne(this);
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    return(0x00);
    break;
  case 0x1053
  case 0x1054
    systemMessage(user, "Use that on an axle to make an axle with gears.");
    break;
  case 0x105D
  case 0x105E
    systemMessage(user, "Use that on an axle with gears to make clock parts.");
    break;
  case 0x1055
  case 0x1056
    systemMessage(user, "Use that on an axle with gears to make sextant parts.");
    break;
  case 0x105B
  case 0x105C
    systemMessage(user, "Use that on gears to make an axle with gears.");
    break;
  case 0x104D
  case 0x104E
    systemMessage(user, "Use that on clock parts to make a clock.");
    break;
  case 0x1051
  case 0x1052
    systemMessage(user, "Use that on springs to make clock parts, or a hinge to make sextant parts.");
    break;
  case 0x104F
  case 0x1050
    systemMessage(user, "Use that on a clock frame to make a clock.");
    break;
  }
  targetObj(user, this);
  return(0x01);
}

trigger targetobj
{
  if(usedon == NULL())
  {
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    return(0x00);
  }
  if(!isFreelyUsable(usedon, user))
  {
    systemMessage(user, "That is inacessable.");
    return(0x00);
  }
  if(Q4YZ)
  {
    Q4YZ = 0x00;
    if(Q68R == 0x00)
    {
      systemMessage(user, "BUG!");
      return(0x00);
    }
    if(hasObjVar(usedon, "isLocked"))
    {
      int lock = getObjVar(usedon, "isLocked");
      if(lock)
      {
        systemMessage(user, "You can only trap an unlocked object.");
        return(0x00);
      }
    }
    if(hasObjVar(usedon, "trapLevel"))
    {
      systemMessage(user, "You can only place one trap on an object at a time.");
      return(0x00);
    }
    int targetType = getObjType(usedon);
    if(isAtHome(usedon))
    {
      systemMessage(user, "That belongs to someone else.");
      return(0x00);
    }
    switch(targetType)
    {
    case 0x0E7C
    case 0x09AB
    case 0x0E40
    case 0x0E41
    case 0x0E42
    case 0x0E43
    case 0x09AA
    case 0x0E7D
    case 0x0E80
    case 0x09A8
      int Q52T = getSkillLevelRealStat(user, 0x25);
      Q52T = Q52T / 0x64;
      int Q5E3 = getGeneric(user, 0x1BF2);
      if(Q5E3 < 0x01)
      {
        systemMessage(user, "You need an ingot to make a trap.");
        break;
      }
      switch(Q68R)
      {
      case 0x01
        int Q5DY = getGeneric(user, 0x1BFB);
        if(Q5DY < 0x01)
        {
          systemMessage(user, "You need a crossbow bolt to make that trap!");
          break;
        }
        destroyGeneric(user, 0x1BFB, 0x01);
        destroyGeneric(user, 0x1BF2, 0x01);
        attachScript(usedon, "trap_dart");
        systemMessage(user, "You carefully place a dart trap on " + getName(usedon) + ".");
        break;
      case 0x02
        obj Q5KW = mobileContainsObjType(user, 0x0F0D);
        if(Q5KW == NULL())
        {
          systemMessage(user, "You need a purple potion to make that trap!");
          break;
        }
        deleteObject(Q5KW);
        destroyGeneric(user, 0x1BF2, 0x01);
        attachScript(usedon, "trap_explosion");
        systemMessage(user, "You carefully place an explosion trap on " + getName(usedon) + ".");
        break;
      case 0x03
        obj Q4UC = mobileContainsObjType(user, 0x0F0A);
        if(Q4UC == NULL())
        {
          systemMessage(user, "You need a green potion to make that trap!");
          break;
        }
        deleteObject(Q4UC);
        destroyGeneric(user, 0x1BF2, 0x01);
        attachScript(usedon, "trap_poison");
        systemMessage(user, "You carefully place a poison trap on " + getName(usedon) + ".");
        break;
      }
      setObjVar(usedon, "trapLevel", Q52T);
      obj Q58H = isAnyMultiBelow(getLocation(usedon));
      int Q5H5 = 0x00;
      if(Q58H != NULL())
      {
        if(Q593(Q58H, user))
        {
          Q5H5 = 0x01;
        }
      }
      if(!Q5H5)
      {
        copyControllerInfo(usedon, user);
      }
      break;
    default
      systemMessage(user, "You cannot place a trap on that.");
    }
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    return(0x00);
  }
  Q512 = 0x00;
  Q62D = user;
  Q5UC = usedon;
  Q65Q = getObjType(usedon);
  int Q62A = getObjType(this);
  int Q4Q1;
  int Q5L6 = 0x00;
  loc Q66N = getLocation(usedon);
  obj Q5NB;
  string description;
  switch(Q62A)
  {
  case 0x1053
  case 0x1054
    switch(Q65Q)
    {
    case 0x105B
    case 0x105C
      Q5L6 = 0x1051;
      description = "an axle with gears and put it";
    }
    break;
  case 0x105D
  case 0x105E
    switch(Q65Q)
    {
    case 0x1051
    case 0x1052
      Q5L6 = 0x104F;
      description = "some clock parts and put them";
    }
    break;
  case 0x1055
  case 0x1056
    switch(Q65Q)
    {
    case 0x1051
    case 0x1052
      Q5L6 = 0x1059;
      description = "some sextant parts and put them";
    }
    break;
  case 0x105B
  case 0x105C
    switch(Q65Q)
    {
    case 0x1053
    case 0x1054
      Q5L6 = 0x1051;
      description = "an axle with gears and put it";
    }
    break;
  case 0x104D
  case 0x104E
    switch(Q65Q)
    {
    case 0x104F
    case 0x1050
      Q5L6 = random(0x00, 0x01) + 0x104B;
      description = "a clock and put it";
    }
    break;
  case 0x1051
  case 0x1052
    switch(Q65Q)
    {
    case 0x1055
    case 0x1056
      Q5L6 = 0x1059;
      description = "some sextant parts and put them";
      break;
    case 0x105D
    case 0x105E
      Q5L6 = 0x104F;
      description = "some clock parts and put them";
      break;
    }
    break;
  case 0x104F
  case 0x1050
    switch(Q65Q)
    {
    case 0x104D
    case 0x104E
      Q5L6 = random(0x00, 0x01) + 0x104B;
      description = "a clock and put it";
    }
    break;
  case 0x1EBC
    switch(Q65Q)
    {
    case 0x1BEF
    case 0x1BF0
    case 0x1BF1
    case 0x1BF2
    case 0x1BF3
    case 0x1BF4
      if(isAtHome(usedon))
      {
        systemMessage(user, "That metal belongs to someone else.");
        if(hasObjVar(this, "inUse"))
        {
          removeObjVar(this, "inUse");
        }
        return(0x00);
      }
      if(hasObjVar(Q5UC, "inUse"))
      {
        barkTo(this, user, "Someone is using that metal.");
        return(0x00);
      }
      if(testSkill(user, 0x25))
      {
        Q55O = 0x01;
        Q4Q1 = getResource(Q55M, usedon, "metal", 0x03, 0x02);
        list Q574 = 0x112D, "Dart Trap", 0x10F8, "Explosion Trap", 0x1148, "Poison Trap", 0x0F9D, 0x1053, 0x105D, 0x1055, 0x10E4, 0x10E5, 0x10E6, 0x10E7, 0x13F6, 0x0F9E, 0x0FBC, 0x1028, 0x1034, 0x102A, 0x13E4, 0x0FB5, 0x0F3A;
        selectType(Q62D, this, 0x18, "Choose an item.", Q574);
      }
      else
      {
        systemMessage(user, "Tinkering failed.");
        if(hasObjVar(this, "inUse"))
        {
          removeObjVar(this, "inUse");
        }
        return(0x00);
      }
      break;
    case 0x1BD7
    case 0x1BD8
    case 0x1BD9
    case 0x1BDA
    case 0x1BDB
    case 0x1BDC
    case 0x1BDD
    case 0x1BDE
    case 0x1BDF
    case 0x1BE0
    case 0x1BE1
    case 0x1BE2
      if(isAtHome(usedon))
      {
        systemMessage(user, "That wood belongs to someone else.");
        if(hasObjVar(this, "inUse"))
        {
          removeObjVar(this, "inUse");
        }
        return(0x00);
      }
      if(testSkill(user, 0x25))
      {
        Q4Q1 = getResource(Q55M, usedon, "wood", 0x03, 0x02);
        list wood = 0x105B, 0x102C, 0x1032, 0x1030, 0x104D;
        selectType(Q62D, this, 0x19, "Choose an item.", wood);
      }
      else
      {
        systemMessage(user, "Tinkering failed.");
        if(hasObjVar(this, "inUse"))
        {
          removeObjVar(this, "inUse");
        }
        return(0x00);
      }
      break;
    default
      systemMessage(user, "Use raw material.");
      if(hasObjVar(this, "inUse"))
      {
        removeObjVar(this, "inUse");
      }
      break;
    }
  }
  if(Q5L6 != 0x00)
  {
    destroyOne(usedon);
    if(hasObjVar(usedon, "inUse"))
    {
      removeObjVar(usedon, "inUse");
    }
    Q5NB = requestCreateObjectAt(Q5L6, getLocation(user));
    Q5IH(user, Q5NB, "You create " + description);
    destroyOne(this);
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    return(0x00);
  }
  return(0x00);
}

trigger typeselected(0x18)
{
  Q5C5 = objtype;
  switch(objtype)
  {
  case 0x112D
  case 0x10F8
  case 0x1148
    systemMessage(Q62D, "What would you like to set a trap on?");
    Q4YZ = 0x01;
    Q68R = listindex;
    targetObj(Q62D, this);
    return(0x00);
    break;
  case 0x0F9D
  case 0x1053
  case 0x105D
  case 0x1055
  case 0x10E4
  case 0x10E5
  case 0x10E6
  case 0x10E7
  case 0x13F6
    Q55S = 0x02;
    break;
  case 0x0F9E
  case 0x0FBC
  case 0x1028
  case 0x1034
  case 0x102A
  case 0x13E4
  case 0x0FB5
  case 0x0F3A
    Q55S = 0x04;
    break;
  default
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    return(0x00);
    break;
  }
  if(!isFreelyUsable(Q5UC, Q62D))
  {
    barkTo(Q5UC, Q62D, "You can no longer access the metal.");
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    return(0x00);
  }
  int Q4Q1 = getResource(Q55M, Q5UC, "metal", 0x03, 0x02);
  if(Q55S > Q55M)
  {
    barkTo(Q5UC, Q62D, "There's not enough metal to make this.");
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    return(0x00);
  }
  Q512 = 0x01;
  if(objtype != 0x00)
  {
    Q4ER();
  }
  return(0x00);
}

trigger typeselected(0x19)
{
  Q5C5 = objtype;
  switch(objtype)
  {
  case 0x105B
    Q55S = 0x02;
    break;
  case 0x102C
  case 0x1032
  case 0x1030
    Q55S = 0x04;
    break;
  case 0x104D
    Q55S = 0x06;
    break;
  default
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    return(0x00);
    break;
  }
  if(!isFreelyUsable(Q5UC, Q62D))
  {
    barkTo(Q5UC, Q62D, "You can no longer access the wood.");
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    return(0x00);
  }
  int Q4Q1 = getResource(Q55M, Q5UC, "wood", 0x03, 0x02);
  if(Q55S > Q55M)
  {
    barkTo(Q5UC, Q62D, "There's not enough wood to make this.");
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    return(0x00);
  }
  Q512 = 0x01;
  if(objtype != 0x00)
  {
    Q4ER();
  }
  return(0x00);
}

function void Q4ER()
{
  Q512 = 0x00;
  obj Q4F0;
  list Q5NK;
  int Q55R;
  int Q55Q;
  int Q4Q1;
  obj Q47G = getBackpack(Q62D);
  string name;
  string Q5M0 = "it";
  if(Q55O)
  {
    Q55O = 0x00;
    Q4F0 = createNoResObjectAt(Q5C5, getLocation(Q62D));
    transferResources(Q4F0, Q5UC, Q55S, "metal");
    name = getName(Q4F0);
    switch(Q5C5)
    {
    case 0x1053
    case 0x105D
    case 0x0F9E
    case 0x0FBC
      Q5M0 = "them";
      break;
    default
      break;
    }
    Q5IH(Q62D, Q4F0, "You create " + name + " and put " + Q5M0);
    Q4Q1 = getResource(Q55R, Q5UC, "metal", 0x03, 0x02);
  }
  else
  {
    Q4F0 = createNoResObjectAt(Q5C5, getLocation(Q62D));
    transferResources(Q4F0, Q5UC, Q55S, "wood");
    name = getName(Q4F0);
    Q5IH(Q62D, Q4F0, "You create " + name + " and put it");
    Q4Q1 = getResource(Q55R, Q5UC, "wood", 0x03, 0x02);
  }
  if(hasObjVar(this, "inUse"))
  {
    removeObjVar(this, "inUse");
  }
  if(Q55R < 0x01)
  {
    deleteObject(Q5UC);
  }
  if(Q46J(Q62D, this))
  {
    deleteObject(this);
  }
  return();
}

trigger callback(0x1B)
{
  if(hasObjVar(this, "inUse"))
  {
    removeObjVar(this, "inUse");
  }
  return(0x00);
}