// UOSL (enhanced)
inherits itemmanip;

forward void Q555();
forward void cleanup();
forward void Q4ER();

member obj Q62D;
member list Q5NZ;

function void Q4S8(list metal, obj Q57Q)
{
  clearList(metal);
  for(int Q572 = 0x1BEF; Q572 <= 0x1BF4; Q572 ++)
  {
    getObjectsOfTypeIn(metal, Q57Q, Q572);
  }
  return;
}

function int Q4TF(obj Q57Q)
{
  int Q63U = 0x00;
  list metal;
  clearList(metal);
  Q4S8(metal, Q57Q);
  for(int num = numInList(metal); num > 0x00; num --)
  {
    int Q56Z;
    int Q4Q1 = getResource(Q56Z, metal[0x00], "metal", 0x03, 0x02);
    Q63U = Q63U + Q56Z;
    removeItem(metal, 0x00);
  }
  return(Q63U);
}

function void Q64G(obj Q4F0, obj Q62D, int Q571)
{
  int Q63U;
  list metal;
  clearList(metal);
  Q4S8(metal, Q62D);
  for(int num = numInList(metal); num > 0x00; num --)
  {
    int Q56Z;
    obj Q5UD = metal[0x00];
    int Q4Q1 = getResource(Q56Z, Q5UD, "metal", 0x03, 0x02);
    if(Q571 >= Q56Z)
    {
      transferResources(Q4F0, Q5UD, Q56Z, "metal");
      deleteObject(Q5UD);
      removeItem(metal, 0x00);
      Q571 = Q571 - Q56Z;
    }
    else
    {
      transferResources(Q4F0, Q5UD, Q571, "metal");
      Q4Q1 = getResource(Q56Z, Q5UD, "metal", 0x03, 0x02);
      if(Q56Z < 0x01)
      {
        deleteObject(Q5UD);
      }
      break;
    }
  }
  clearList(metal);
  return;
}

function int Q4A1(int Q5NY, int metal, int Q55Z)
{
  if(getArrayIntElem(0x00, 0x04, Q5NY) > metal)
  {
    return(0x00);
  }
  if(getArrayIntElem(0x00, 0x05, Q5NY) > Q55Z)
  {
    return(0x00);
  }
  return(0x01);
}

function void Q5QT(obj user, string Q636)
{
  list Q5QU;
  clearList(Q5QU);
  for(int i = 0x00; i < numInList(Q5NZ); i ++)
  {
    int Q5NY = Q5NZ[i];
    append(Q5QU, getArrayIntElem(0x00, 0x00, Q5NY));
    append(Q5QU, getArrayIntElem(0x00, 0x01, Q5NY));
    append(Q5QU, getArrayStrElem(0x00, 0x02, Q5NY));
  }
  selectTypeAndHue(user, this, 0x00, Q636, Q5QU);
  return;
}

function int Q4DY(int metal, int Q55Z, int Q5VT, int Q5VN)
{
  int Q5NY = Q5VT;
  while(Q5NY < 0x3D)
  {
    int Q4HG = getArrayIntElem(0x00, 0x03, Q5NY);
    if(Q4HG > Q5VN)
    {
      int Q4NT = numInList(Q5NZ);
      int Q4NV = Q4DY(metal, Q55Z, Q5NY + 0x01, Q5VN + 0x01);
      int Q5C8 = numInList(Q5NZ) - Q4NT;
      if(Q5C8 > 0x01)
      {
        truncateList(Q5NZ, Q4NT);
        append(Q5NZ, Q5NY);
      }
      Q5NY = Q4NV;
    }
    else
    {
      if((Q4HG < Q5VN) || (getArrayIntElem(0x00, 0x01, Q5NY) == 0x36))
      {
        break;
      }
      if(Q4A1(Q5NY, metal, Q55Z))
      {
        append(Q5NZ, Q5NY);
      }
      Q5NY ++;
    }
  }
  return(Q5NY);
}

function int Q4Y7(int Q5NY, int Q4HG, list Q65O)
{
  int Q4GW = hasObjVar(this, "debugSkillInfo");
  while(numInList(Q65O))
  {
    setArrayIntElem(0x00, 0x00, Q5NY, Q65O[0x00]);
    setArrayIntElem(0x00, 0x03, Q5NY, Q4HG);
    obj Q61Z = createNoResObjectAt(Q65O[0x00], getLocation(this));
    int Q571 = 0x00;
    int Q4Q1 = getResource(Q571, Q61Z, "metal", 0x03, 0x00);
    setArrayIntElem(0x00, 0x04, Q5NY, Q571);
    int val;
    if(isReallyWeapon(Q61Z))
    {
      val = Q571 + (getWeaponSpeed(Q61Z) * getAverageDamage(Q61Z) / 0x0C);
    }
    else
    {
      val = Q571 + (getMaxArmorClass(Q61Z) * 0x02);
    }
    setArrayIntElem(0x00, 0x05, Q5NY, val);
    string description = getNameByType(Q65O[0x00]);
    toUpper(description, 0x00, 0x01);
    if(Q4GW)
    {
      description = description + ". $" + val + ", " + Q571 + " metal";
    }
    else
    {
      description = "Build " + description + ", " + Q571 + " metal.";
    }
    setArrayStrElem(0x00, 0x02, Q5NY, description);
    deleteObject(Q61Z);
    removeItem(Q65O, 0x00);
    Q5NY ++;
  }
  return(Q5NY);
}

function void Q4Y8()
{
  if(hasObjVar(this, "debugSkillInfo"))
  {
    deleteArray(0x00);
  }
  if(isArrayInit(0x00))
  {
    return;
  }
  list Q4Y9 = 0x00, 0x01, "COL_NAME", 0x03, 0x04, 0x05;
  initArray(0x00, 0x06, 0x3D, Q4Y9);
  int Q5NY = 0x00;
  Q4Y9 = 0x0FAF, 0x00, "Repair an Item", 0x00;
  setArrayElems(0x00, 0x00, Q5NY, Q4Y9);
  Q5NY ++;
  Q4Y9 = 0x13ED, 0x36, "Build Armor", 0x01;
  setArrayElems(0x00, 0x00, Q5NY, Q4Y9);
  Q5NY ++;
  Q4Y9 = 0x13EC, 0x36, "Build Ring Armor", 0x02;
  setArrayElems(0x00, 0x00, Q5NY, Q4Y9);
  Q5NY ++;
  Q4Y9 = 0x13EB, 0x13EF, 0x13F0, 0x13EC;
  Q5NY = Q4Y7(Q5NY, 0x02, Q4Y9);
  Q4Y9 = 0x13BF, 0x36, "Build Chain Armor", 0x02;
  setArrayElems(0x00, 0x00, Q5NY, Q4Y9);
  Q5NY ++;
  Q4Y9 = 0x13BB, 0x13BE, 0x13BF;
  Q5NY = Q4Y7(Q5NY, 0x02, Q4Y9);
  Q4Y9 = 0x1415, 0x36, "Build Plate Armor", 0x02;
  setArrayElems(0x00, 0x00, Q5NY, Q4Y9);
  Q5NY ++;
  Q4Y9 = 0x1408, 0x36, "Build Helmets", 0x03;
  setArrayElems(0x00, 0x00, Q5NY, Q4Y9);
  Q5NY ++;
  Q4Y9 = 0x140A, 0x140C, 0x140E, 0x1408, 0x1412;
  Q5NY = Q4Y7(Q5NY, 0x03, Q4Y9);
  Q4Y9 = 0x1413, 0x1414, 0x1410, 0x1411, 0x1415, 0x1C04;
  Q5NY = Q4Y7(Q5NY, 0x02, Q4Y9);
  Q4Y9 = 0x1B74, 0x36, "Build Shields", 0x01;
  setArrayElems(0x00, 0x00, Q5NY, Q4Y9);
  Q5NY ++;
  Q4Y9 = 0x1B73, 0x1B72, 0x1B7B, 0x1B78, 0x1B74, 0x1B76;
  Q5NY = Q4Y7(Q5NY, 0x01, Q4Y9);
  Q4Y9 = 0x0F45, 0x36, "Build Weapons", 0x01;
  setArrayElems(0x00, 0x00, Q5NY, Q4Y9);
  Q5NY ++;
  Q4Y9 = 0x0F61, 0x36, "Build Blades", 0x02;
  setArrayElems(0x00, 0x00, Q5NY, Q4Y9);
  Q5NY ++;
  Q4Y9 = 0x0F51, 0x1441, 0x13FF, 0x1401, 0x13B6, 0x0F5E, 0x0F61, 0x13B9;
  Q5NY = Q4Y7(Q5NY, 0x02, Q4Y9);
  Q4Y9 = 0x13FB, 0x36, "Build Axes", 0x02;
  setArrayElems(0x00, 0x00, Q5NY, Q4Y9);
  Q5NY ++;
  Q4Y9 = 0x0F47, 0x0F49, 0x0F45, 0x1443, 0x0F4B, 0x13FB, 0x13B0;
  Q5NY = Q4Y7(Q5NY, 0x02, Q4Y9);
  Q4Y9 = 0x0F4D, 0x36, "Build Pole Arms", 0x02;
  setArrayElems(0x00, 0x00, Q5NY, Q4Y9);
  Q5NY ++;
  Q4Y9 = 0x1403, 0x0F62, 0x1405, 0x0F4D, 0x143F;
  Q5NY = Q4Y7(Q5NY, 0x02, Q4Y9);
  Q4Y9 = 0x1407, 0x36, "Build Bludgeoning Weapons", 0x02;
  setArrayElems(0x00, 0x00, Q5NY, Q4Y9);
  Q5NY ++;
  Q4Y9 = 0x0F5C, 0x143B, 0x1407, 0x1439, 0x143D;
  Q5NY = Q4Y7(Q5NY, 0x02, Q4Y9);
  debugMessage("BlackSmithing Loaded:  Allocated Rows= " + 0x3D + " Computed Rows:" + Q5NY);
  int Q576 = 0x000F4240;
  int Q55T = 0x00;
  int i;
  int val;
  int Q577;
  int Q567;
  for(i = 0x01; i < Q5NY; i ++)
  {
    if(getArrayIntElem(0x00, 0x01, i) != 0x36)
    {
      val = getArrayIntElem(0x00, 0x05, i);
      if(Q55T < val)
      {
        Q55T = val;
        Q567 = getArrayIntElem(0x00, 0x00, i);
      }
      if(Q576 > val)
      {
        Q576 = val;
        Q577 = getArrayIntElem(0x00, 0x00, i);
      }
    }
  }
  debugMessage("Min Value=" + Q576 + " (" + Q577 + ") Max Value=" + Q55T + " (" + Q567 + ")");
  int range = Q55T - Q576;
  for(i = 0x01; i < Q5NY; i ++)
  {
    if(getArrayIntElem(0x00, 0x01, i) != 0x36)
    {
      val = getArrayIntElem(0x00, 0x05, i);
      int Q4IA = (val - Q576) * 0x03E8 / range;
      setArrayIntElem(0x00, 0x05, i, Q4IA);
    }
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

function int Q4ZM(obj user)
{
  int Q46D = 0x00;
  int Q4QG = 0x00;
  list Q5FD;
  clearList(Q5FD);
  getObjectsInRange(Q5FD, getLocation(user), 0x03);
  int Q5E6 = numInList(Q5FD);
  for(int i = 0x00; i < Q5E6; i ++)
  {
    int Q620 = getObjType(Q5FD[i]);
    switch(Q620)
    {
    case 0x0FAF:
    case 0x0FB0:
      Q46D = 0x01;
      break;
    case 0x0FB1:
      Q4QG = 0x01;
      break;
    }
    if(Q620 >= 0x197A)
    {
      if(Q620 <= 0x19A9)
      {
        Q4QG = 0x01;
      }
    }
  }
  if(!Q46D)
  {
    string Q47R = "You are not near an anvil";
    if(!Q4QG)
    {
      Q47R = Q47R + " or a forge.";
    }
    else
    {
      Q47R = Q47R + ".";
    }
    systemMessage(user, Q47R);
  }
  else
  {
    if(!Q4QG)
    {
      systemMessage(user, "You are not near a forge.");
    }
  }
  return(Q46D && Q4QG);
}

trigger targetobj(obj user, obj usedon)
{
  cleanup();
  if(Q4BL(user, "The blacksmith skill", 0x00))
  {
    return(0x00);
  }
  if(!Q4ZM(user))
  {
    return(0x00);
  }
  if(isWeapon(usedon) && hasResource(usedon, resourceTypeToId("metal")))
  {
    if(isInContainer(usedon))
    {
      obj container = getTopmostContainer(usedon);
      if(isMobile(container))
      {
        if(container != user)
        {
          systemMessage(user, "You can't work on that item.");
          return(0x00);
        }
      }
    }
    int Q4G6 = getWeaponCurHP(usedon);
    int Q56H = getWeaponMaxHP(usedon);
    if((Q56H == 0x00) || (Q4G6 >= Q56H))
    {
      systemMessage(user, "That is already in full repair.");
      return(0x00);
    }
    int Q5MK = (Q56H - Q4G6) * 0x04E2 / Q56H - 0xFA;
    int Q4Q1;
    int success = testAndLearnSkill(user, 0x07, Q5MK, 0x32);
    Q56H --;
    Q4G6 --;
    if(Q4G6 < 0x01)
    {
      systemMessage(user, "You destroyed the item.");
      deleteObject(usedon);
    }
    else
    {
      if(success > 0x00)
      {
        Q4G6 = Q56H;
        systemMessage(user, "You repair the item.");
      }
      Q4Q1 = setWeaponMaxHP(usedon, Q56H);
      Q4Q1 = setWeaponCurHP(usedon, Q4G6);
    }
    if(Q46J(user, this))
    {
      deleteObject(this);
    }
    return(0x00);
  }
  systemMessage(user, "You can't repair that.");
  return(0x00);
}

trigger use(obj user)
{
  if(Q4BL(user, "The blacksmith skill", 0x00))
  {
    return(0x00);
  }
  if(hasObjVar(this, "inUse"))
  {
    systemMessage(user, "That is being used by someone else.");
    return(0x00);
  }
  else
  {
    setObjVar(this, "inUse", 0x00);
    callBack(this, 0x3C, 0x1B);
  }
  Q62D = user;
  systemMessage(user, "What would you like to do?");
  loc Q66U = getLocation(user);
  int Q4Q1;
  list Q5FD;
  int Q5E6;
  int Q620;
  int i;
  if(Q4ZM(user))
  {
    int Q5TE = getSkillLevelReal(user, 0x07);
    int Q56Z = Q4TF(user);
    clearList(Q5NZ);
    int Q5Z4 = Q4DY(Q56Z, Q5TE + 0xFA, 0x00, 0x00);
    Q5QT(user, "What would you like to do?");
  }
  else
  {
    cleanup();
  }
  return(0x00);
}

trigger typeselected<0x00>(obj user, int listindex, int objtype, int objhue)
{
  if(Q4BL(user, "The blacksmith skill", 0x00))
  {
    return(0x00);
  }
  removeCallback(this, 0x4A);
  if(listindex == 0x00)
  {
    cleanup();
    return(0x00);
  }
  listindex --;
  if(listindex >= numInList(Q5NZ))
  {
    cleanup();
    return(0x00);
  }
  int Q5NY = Q5NZ[listindex];
  if(Q5NY == 0x00)
  {
    systemMessage(user, "Select item to repair.");
    targetObj(user, this);
    return(0x00);
  }
  clearList(Q5NZ);
  if(getArrayIntElem(0x00, 0x01, Q5NY) != 0x36)
  {
    append(Q5NZ, Q5NY);
    shortCallback(this, 0x01, 0x4A);
    return(0x00);
  }
  int Q4HG = getArrayIntElem(0x00, 0x03, Q5NY);
  int Q56Z = Q4TF(user);
  int Q5TE = getSkillLevelReal(user, 0x07);
  int Q5Z4 = Q4DY(Q56Z, Q5TE + 0xFA, Q5NY + 0x01, Q4HG);
  Q5QT(user, getArrayStrElem(0x00, 0x02, Q5NY));
  return(0x00);
}

trigger callback<0x1B>()
{
  cleanup();
  return(0x00);
}

trigger callback<0x4A>()
{
  int Q4Q1;
  sfx(getLocation(this), 0x2A, 0x00);
  int Q5L6 = random(0x00, 0x05);
  if(Q5L6)
  {
    shortCallback(this, Q5L6, 0x4A);
  }
  else
  {
    Q4ER();
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
  }
  return(0x00);
}

function void Q4ER()
{
  int Q4Q1;
  int Q56Z = Q4TF(Q62D);
  int Q5NY = Q5NZ[0x00];
  int Q573 = getArrayIntElem(0x00, 0x04, Q5NY);
  if(Q573 > Q56Z)
  {
    systemMessage(Q62D, "The amount of metal changed since you started smithing the ingots.");
    cleanup();
    return;
  }
  int newType = getArrayIntElem(0x00, 0x00, Q5NY);
  int success = testAndLearnSkill(Q62D, 0x07, getArrayIntElem(0x00, 0x05, Q5NY), 0x32);
  obj Q4F0;
  if(success <= 0x00)
  {
    int Q570 = Q573 * (0x00 - success) / 0x03E8 + 0x01;
    Q56Z = Q56Z - Q570;
    Q4F0 = createNoResObjectIn(newType, Q62D);
    Q64G(Q4F0, Q62D, Q570);
    deleteObject(Q4F0);
    systemMessage(Q62D, "You lost some metal.");
    cleanup();
    return;
  }
  Q4F0 = createNoResObjectAt(newType, getLocation(Q62D));
  Q64G(Q4F0, Q62D, Q573);
  obj Q47G = getBackpack(Q62D);
  if(canHold(Q47G, Q4F0))
  {
    int Q4Q4 = putObjContainer(Q4F0, Q47G);
    systemMessage(Q62D, "You create the item and put it in your backpack.");
  }
  else
  {
    systemMessage(Q62D, "You create the item and put it at your feet.");
  }
  int Q59A = 0x64;
  if(success >= 0x0258)
  {
    systemMessage(Q62D, "Due to your exceptional skill, it's quality is higher than average.");
    Q59A = 0x78;
  }
  else
  {
    if(success < 0x012C)
    {
      systemMessage(Q62D, "You were barely able to make this item.  It's quality is below average.");
      Q59A = 0x50;
    }
  }
  if(Q59A != 0x64)
  {
    Q4Q1 = setWeaponMaxHP(Q4F0, getWeaponMaxHP(Q4F0) * Q59A / 0x64);
    Q4Q1 = setWeaponCurHP(Q4F0, getWeaponCurHP(Q4F0) * Q59A / 0x64);
    Q4Q1 = setMaxArmorClass(Q4F0, getMaxArmorClass(Q4F0) * Q59A / 0x64);
    int Q47C = getAverageDamage(Q4F0);
    if(Q47C > 0x00)
    {
      int Q48Q = Q47C * (Q59A - 0x64) / 0x64;
      Q581(this, 0x00, 0x00, Q48Q, 0x00);
    }
  }
  cleanup();
  if(Q46J(Q62D, this))
  {
    deleteObject(this);
  }
  return;
}

function void cleanup()
{
  clearList(Q5NZ);
  Q62D = NULL();
  if(hasObjVar(this, "inUse"))
  {
    removeObjVar(this, "inUse");
  }
  return;
}