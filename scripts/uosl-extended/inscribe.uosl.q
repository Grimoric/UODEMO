// UOSL (enhanced)
inherits spelskil;

member obj Q62D;
member obj Q56M;
member obj Q5U9;
member obj Q43Q;
member list Q5V0;
member list Q4PF;
member list Q5QM;
member list Q61M;
member list Q4QW;
member list Q4P4;
member list Q5T7;
member list Q5RM;
member list Q4NI;
member int finished;

forward void Q4YH(int Q5UT);
forward void Q4DB();

function int Q65B(obj user, obj usedon)
{
  if(isAtHome(usedon))
  {
    systemMessage(user, "That scroll belongs to someone else.");
    if(hasObjVar(usedon, "inUse"))
    {
      removeObjVar(usedon, "inUse");
    }
    return(0x00);
  }
  obj Q5UJ = mobileContainsObjType(user, 0x0EFA);
  if(isValid(Q5UJ))
  {
    int Q5UP;
    int Q5LN;
    obj Q626;
    int Q5UU;
    int Q5US;
    int Q627;
    int Q4AQ = getCurMana(user);
    int Q625;
    obj Q5LO;
    int Q65R;
    list Q5BD;
    int Q5E5;
    int Q4VA;
    list Q47B;
    string Q5X2;
    loc Q66U = getLocation(user);
    getContents(Q5V0, Q5UJ);
    int Q5EA;
    Q5EA = numInList(Q5V0);
    sortList(Q5V0, 0x04);
    for(Q5UP = 0x00; Q5UP < Q5EA; Q5UP ++)
    {
      Q626 = Q5V0[Q5UP];
      Q5UU = Q4T2(Q626);
      Q5US = Q42S(Q626);
      Q627 = Q4SX(Q5US);
      if(!Q4A8(Q62D, Q5US))
      {
        Q5UP ++;
        continue;
      }
      if(Q4AQ < Q627)
      {
        Q5UP ++;
        continue;
      }
      Q5X2 = Q4T0(Q5UU);
      switch(Q5US)
      {
      case 0x01:
        appendToList(Q4PF, Q5UU + 0x2080);
        appendToList(Q4PF, Q5X2);
        break;
      case 0x02:
        appendToList(Q5QM, Q5UU + 0x2080);
        appendToList(Q5QM, Q5X2);
        break;
      case 0x03:
        appendToList(Q61M, Q5UU + 0x2080);
        appendToList(Q61M, Q5X2);
        break;
      case 0x04:
        appendToList(Q4QW, Q5UU + 0x2080);
        appendToList(Q4QW, Q5X2);
        break;
      case 0x05:
        appendToList(Q4P4, Q5UU + 0x2080);
        appendToList(Q4P4, Q5X2);
        break;
      case 0x06:
        appendToList(Q5T7, Q5UU + 0x2080);
        appendToList(Q5T7, Q5X2);
        break;
      case 0x07:
        appendToList(Q5RM, Q5UU + 0x2080);
        appendToList(Q5RM, Q5X2);
        break;
      case 0x08:
        appendToList(Q4NI, Q5UU + 0x2080);
        appendToList(Q4NI, Q5X2);
        break;
      default:
        break;
      }
    }
    list Q4D8;
    if(numInList(Q4PF) > 0x00)
    {
      appendToList(Q4D8, 0x20C0);
      appendToList(Q4D8, "First Circle");
    }
    if(numInList(Q5QM) > 0x00)
    {
      appendToList(Q4D8, 0x20C1);
      appendToList(Q4D8, "Second Circle");
    }
    if(numInList(Q61M) > 0x00)
    {
      appendToList(Q4D8, 0x20C2);
      appendToList(Q4D8, "Third Circle");
    }
    if(numInList(Q4QW) > 0x00)
    {
      appendToList(Q4D8, 0x20C3);
      appendToList(Q4D8, "Fourth Circle");
    }
    if(numInList(Q4P4) > 0x00)
    {
      appendToList(Q4D8, 0x20C4);
      appendToList(Q4D8, "Fifth Circle");
    }
    if(numInList(Q5T7) > 0x00)
    {
      appendToList(Q4D8, 0x20C5);
      appendToList(Q4D8, "Sixth Circle");
    }
    if(numInList(Q5RM) > 0x00)
    {
      appendToList(Q4D8, 0x20C6);
      appendToList(Q4D8, "Seventh Circle");
    }
    if(numInList(Q4NI) > 0x00)
    {
      appendToList(Q4D8, 0x20C7);
      appendToList(Q4D8, "Eighth Circle");
    }
  }
  else
  {
    systemMessage(user, "You don't have a spellbook.");
    if(hasObjVar(usedon, "inUse"))
    {
      removeObjVar(usedon, "inUse");
    }
    return(0x00);
  }
  if(numInList(Q4D8) > 0x00)
  {
    selectType(Q62D, this, 0x1C, "Choose a circle.", Q4D8);
    return(0x01);
  }
  else
  {
    systemMessage(user, "You can't inscribe any spells.");
    if(hasObjVar(usedon, "inUse"))
    {
      removeObjVar(usedon, "inUse");
    }
    return(0x00);
  }
  return(0x01);
}

function int Q65A(obj user, obj usedon)
{
  int Q66P = getObjType(usedon);
  if(isAtHome(usedon))
  {
    systemMessage(user, "That book belongs to someone else.");
    if(hasObjVar(usedon, "inUse"))
    {
      removeObjVar(usedon, "inUse");
    }
    return(0x00);
  }
  int Q5KZ = getBookPages(usedon);
  if(Q5U9 == NULL())
  {
    if(Q5KZ == 0x00)
    {
      systemMessage(user, "Can't copy an empty book.");
      if(hasObjVar(usedon, "inUse"))
      {
        removeObjVar(usedon, "inUse");
      }
      return(0x00);
    }
    Q5U9 = usedon;
    systemMessage(user, "Select a book to copy this to.");
    targetObj(user, this);
  }
  else
  {
    if(Q66P == 0x0FEF)
    {
      systemMessage(user, "Cannot write into that book.");
      if(hasObjVar(Q5U9, "inUse"))
      {
        removeObjVar(Q5U9, "inUse");
      }
      if(hasObjVar(usedon, "inUse"))
      {
        removeObjVar(usedon, "inUse");
      }
      return(0x00);
    }
    if(Q66P == 0x0FF0)
    {
      systemMessage(user, "Cannot write into that book.");
      if(hasObjVar(Q5U9, "inUse"))
      {
        removeObjVar(Q5U9, "inUse");
      }
      if(hasObjVar(usedon, "inUse"))
      {
        removeObjVar(usedon, "inUse");
      }
      return(0x00);
    }
    if(usedon == Q5U9)
    {
      systemMessage(user, "Cannot copy a book onto itself.");
      if(hasObjVar(Q5U9, "inUse"))
      {
        removeObjVar(Q5U9, "inUse");
      }
      if(hasObjVar(usedon, "inUse"))
      {
        removeObjVar(usedon, "inUse");
      }
      return(0x00);
    }
    int Q4IA = 0x96;
    int Q4OU = 0x00;
    if(testAndLearnSkill(user, 0x17, Q4IA, 0x32) <= 0x00)
    {
      Q4OU = 0x01;
    }
    else
    {
      int Q5NB;
      Q5NB = copybook(usedon, Q5U9);
      sfx(getLocation(Q62D), 0x0249, 0x00);
      if(Q5NB == 0x00)
      {
        Q4OU = 0x01;
      }
    }
    if(hasObjVar(Q5U9, "inUse"))
    {
      removeObjVar(Q5U9, "inUse");
    }
    if(hasObjVar(usedon, "inUse"))
    {
      removeObjVar(usedon, "inUse");
    }
    Q5U9 = NULL();
    if(Q4OU)
    {
      systemMessage(user, "You fail to make a copy of the book.");
      return(0x00);
    }
    else
    {
      systemMessage(user, "You make a copy of the book.");
    }
  }
  return(0x01);
}

trigger message<"canUseSkill">(obj sender, list args)
{
  return(0x00);
}

trigger callback<0x4D>()
{
  if(!finished)
  {
    systemMessage(this, "You have waited too long to make your inscribe selection, your inscription attempt has timed out.")/* semicolon added by the decompiler post-processor */;
  }
  detachScript(this, "inscribe");
  Q4DB();
  return(0x00);
}

function void Q5M3(obj it, int Q4MY)
{
  int Q4H9 = 0x3C;
  if(Q4MY)
  {
    Q4H9 = 0x0A;
    finished = 0x01;
  }
  callback(it, Q4H9, 0x4D);
  return;
}

trigger message<"useSkill">(obj sender, list args)
{
  Q5M3(this, 0x00);
  systemMessage(this, "What would you like to inscribe?");
  Q5U9 = NULL();
  targetObj(this, this);
  return(0x00);
}

function int Q61L(obj user, obj usedon)
{
  if(usedon == NULL())
  {
    return(0x00);
  }
  if(hasObjVar(usedon, "inUse"))
  {
    systemMessage(user, "Someone else is inscribing that item.");
    return(0x00);
  }
  int Q66P = getObjType(usedon);
  switch(Q66P)
  {
  case 0x0EF3:
  case 0x0E34:
    Q56M = usedon;
    Q62D = user;
    setObjVar(Q56M, "inUse", 0x00);
    attachscript(Q56M, "removeinuse");
    callback(Q56M, 0x3C, 0x1B);
    return(Q65B(user, usedon));
    break;
  case 0x0FEF:
  case 0x0FF0:
  case 0x0FF1:
  case 0x0FF2:
    Q56M = usedon;
    Q62D = user;
    setObjVar(Q56M, "inUse", 0x00);
    attachscript(Q56M, "removeinuse");
    callback(Q56M, 0x3C, 0x1B);
    return(Q65A(user, usedon));
    break;
  default:
    systemMessage(user, "Can't inscribe that item.");
    if(hasObjVar(Q5U9, "inUse"))
    {
      removeObjVar(Q5U9, "inUse");
    }
    if(hasObjVar(usedon, "inUse"))
    {
      removeObjVar(usedon, "inUse");
    }
    return(0x00);
    break;
  }
  return(0x01);
}

trigger targetobj(obj user, obj usedon)
{
  if(!Q61L(user, usedon))
  {
    Q4DB();
    Q5M3(this, 0x01);
  }
  else
  {
    Q5M3(this, 0x00);
  }
  return(0x00);
}

function int Q4D7(obj user, int listindex, int objtype)
{
  if(listindex == 0x00)
  {
    return(0x00);
  }
  switch(objtype)
  {
  case 0x20C0:
    selectType(Q62D, this, 0x1D, "Choose a first circle spell.", Q4PF);
    break;
  case 0x20C1:
    selectType(Q62D, this, 0x1E, "Choose a second circle spell.", Q5QM);
    break;
  case 0x20C2:
    selectType(Q62D, this, 0x1F, "Choose a third circle spell.", Q61M);
    break;
  case 0x20C3:
    selectType(Q62D, this, 0x20, "Choose a fourth circle spell.", Q4QW);
    break;
  case 0x20C4:
    selectType(Q62D, this, 0x21, "Choose a fifth circle spell.", Q4P4);
    break;
  case 0x20C5:
    selectType(Q62D, this, 0x22, "Choose a sixth circle spell.", Q5T7);
    break;
  case 0x20C6:
    selectType(Q62D, this, 0x23, "Choose a seventh circle spell.", Q5RM);
    break;
  case 0x20C7:
    selectType(Q62D, this, 0x24, "Choose a eighth circle spell.", Q4NI);
    break;
  default:
    return(0x00);
    break;
  }
  if(hasObjVar(Q56M, "inUse"))
  {
    removeObjVar(Q56M, "inUse");
  }
  return(0x01);
}

trigger typeselected<0x1C>(obj user, int listindex, int objtype, int objhue)
{
  if(!Q4D7(user, listindex, objtype))
  {
    Q4DB();
    Q5M3(this, 0x01);
  }
  else
  {
    Q5M3(this, 0x00);
  }
  return(0x00);
}

function void Q5UV(int listindex, int objtype)
{
  if(listindex != 0x00)
  {
    Q4YH(objtype - 0x2080);
  }
  Q4DB();
  Q5M3(this, 0x01);
  return;
}

trigger typeselected<0x1D>(obj user, int listindex, int objtype, int objhue)
{
  Q5UV(listindex, objtype);
  return(0x00);
}

trigger typeselected<0x1E>(obj user, int listindex, int objtype, int objhue)
{
  Q5UV(listindex, objtype);
  return(0x00);
}

trigger typeselected<0x1F>(obj user, int listindex, int objtype, int objhue)
{
  Q5UV(listindex, objtype);
  return(0x00);
}

trigger typeselected<0x20>(obj user, int listindex, int objtype, int objhue)
{
  Q5UV(listindex, objtype);
  return(0x00);
}

trigger typeselected<0x21>(obj user, int listindex, int objtype, int objhue)
{
  Q5UV(listindex, objtype);
  return(0x00);
}

trigger typeselected<0x22>(obj user, int listindex, int objtype, int objhue)
{
  Q5UV(listindex, objtype);
  return(0x00);
}

trigger typeselected<0x23>(obj user, int listindex, int objtype, int objhue)
{
  Q5UV(listindex, objtype);
  return(0x00);
}

trigger typeselected<0x24>(obj user, int listindex, int objtype, int objhue)
{
  Q5UV(listindex, objtype);
  return(0x00);
}

function void Q4YH(int Q5UT)
{
  list Q5MR;
  Q4SL(Q5MR, Q5UT);
  loc Q66U = getLocation(Q62D);
  if(!Q5YB(Q62D, Q5MR))
  {
    systemMessage(Q62D, "You lack the necessary reagents to inscribe this spell.");
    return;
  }
  int Q5US = Q4SY(Q5UT);
  int Q55B = Q4SX(Q5US);
  if(Q49R(Q62D, Q66U, Q55B))
  {
    loseMana(Q62D, Q55B);
    int Q4OU = 0x00;
    int Q4IA = Q4SW(Q4T1(Q5UT));
    if(!Q4A8(Q62D, Q4T1(Q5UT)))
    {
      Q4OU = 0x01;
    }
    if(!Q4OU)
    {
      if(testAndLearnSkill(Q62D, 0x17, Q4IA, 0x32) <= 0x00)
      {
        Q4OU = 0x01;
      }
    }
    if(Q4OU)
    {
      systemMessage(Q62D, "You fail to inscribe the scroll, and the scroll is ruined.");
      destroyOne(Q56M);
      return;
    }
    int Q5AL = Q4T3(Q5UT);
    Q43Q = requestCreateObjectAt(Q5AL, getLocation(Q62D));
    destroyOne(Q56M);
    string Q5WZ;
    Q5WZ = Q5AL;
    attachscript(Q43Q, Q5WZ);
    int Q4Q1;
    obj Q47G = getBackpack(Q62D);
    if(canHold(Q47G, Q43Q))
    {
      Q4Q1 = putObjContainer(Q43Q, Q47G);
      sfx(getLocation(Q62D), 0x0249, 0x00);
      systemMessage(Q62D, "You inscribe the spell and put the scroll in your backpack.");
    }
    else
    {
      if(isValid(Q56M))
      {
        Q4Q1 = teleport(Q56M, getLocation(Q62D));
      }
      sfx(getLocation(Q62D), 0x0249, 0x00);
      systemMessage(Q62D, "You inscribe the spell and put the scroll at your feet.");
    }
    if(isValid(Q56M))
    {
      if(hasObjVar(Q56M, "inUse"))
      {
        removeObjVar(Q56M, "inUse");
      }
      if(hasScript(Q56M, "removeinuse"))
      {
        detachScript(Q56M, "removeinuse");
      }
    }
  }
  else
  {
    systemMessage(Q62D, "You fail to inscribe the scroll, and the scroll is ruined.");
    destroyOne(Q56M);
    return;
  }
  return;
}

function void Q4DB()
{
  clearList(Q5V0);
  clearList(Q4PF);
  clearList(Q5QM);
  clearList(Q61M);
  clearList(Q4QW);
  clearList(Q4P4);
  clearList(Q5T7);
  clearList(Q5RM);
  clearList(Q4NI);
  if(hasObjVar(Q56M, "inUse"))
  {
    removeObjVar(Q56M, "inUse");
  }
  if(hasScript(Q56M, "removeinuse"))
  {
    removeObjVar(Q56M, "removeinuse");
  }
  return;
}

trigger callback<0x1B>()
{
  if(hasObjVar(Q56M, "inUse"))
  {
    removeObjVar(Q56M, "inUse");
  }
  if(hasObjVar(Q5U9, "inUse"))
  {
    removeObjVar(Q5U9, "inUse");
  }
  return(0x01);
}