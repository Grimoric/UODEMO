// UOSL (native)
inherits itemmanip;

forward void Q65D();
forward void Q4ER();
forward void Q4OV();

member obj Q62D;
member obj Q5UC;
member int Q5C5;
member int Q55M;
member int Q55S;
member int Q55N;
member int Q5UA;

trigger use
{
  if(hasObjVar(this, "inUse"))
  {
    systemMessage(user, "Someone else is using that.");
    return(0x00);
  }
  else
  {
    setObjVar(this, "inUse", 0x00);
    callback(this, 0x3C, 0x1B);
  }
  systemMessage(user, "What cloth shall I use this sewing kit on?");
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
  Q62D = user;
  Q5UC = usedon;
  int Q4Q1;
  int Q66S = getObjType(usedon);
  switch(Q66S)
  {
  case 0x0F95
  case 0x0F96
  case 0x0F97
  case 0x0F98
  case 0x0F99
  case 0x0F9A
  case 0x0F9B
  case 0x0F9C
    if(isAtHome(usedon))
    {
      systemMessage(user, "That cloth belongs to someone else.");
      if(hasObjVar(this, "inUse"))
      {
        removeObjVar(this, "inUse");
      }
      return(0x00);
    }
    if(hasObjVar(Q5UC, "inUse"))
    {
      systemMessage(user, "Someone else is using that cloth.");
      if(hasObjVar(this, "inUse"))
      {
        removeObjVar(this, "inUse");
      }
      return(0x00);
    }
    else
    {
      setObjVar(Q5UC, "inUse", 0x01);
      attachscript(Q5UC, "removeinuse");
      callback(Q5UC, 0x3C, 0x1B);
    }
    Q4Q1 = getResource(Q55M, Q5UC, "cloth", 0x03, 0x02);
    if(Q55M > 0x00)
    {
      Q55N = 0x01;
      Q5UA = getHue(Q5UC);
      list Q4DM = 0x1517, "shirts", 0x1539, "pants", 0x153D, "misc";
      selectType(Q62D, this, 0x11, "Choose a category.", Q4DM);
    }
    else
    {
      bark(user, "There's no cloth on that");
      if(hasObjVar(Q5UC, "inUse"))
      {
        removeObjVar(Q5UC, "inUse");
      }
      if(hasObjVar(this, "inUse"))
      {
        removeObjVar(this, "inUse");
      }
      return(0x00);
    }
    break;
  case 0x175D
  case 0x175E
  case 0x175F
  case 0x1760
  case 0x1761
  case 0x1762
  case 0x1763
  case 0x1764
  case 0x1765
  case 0x1766
  case 0x1767
  case 0x1768
    if(isAtHome(usedon))
    {
      systemMessage(user, "That cloth belongs to someone else.");
      if(hasObjVar(this, "inUse"))
      {
        removeObjVar(this, "inUse");
      }
      return(0x00);
    }
    if(hasObjVar(Q5UC, "inUse"))
    {
      systemMessage(user, "Someone else is using that cloth.");
      if(hasObjVar(this, "inUse"))
      {
        removeObjVar(this, "inUse");
      }
      return(0x00);
    }
    else
    {
      setObjVar(Q5UC, "inUse", 0x01);
      attachscript(Q5UC, "removeinuse");
      callback(Q5UC, 0x3C, 0x1B);
    }
    Q4Q1 = getResource(Q55M, Q5UC, "cloth", 0x03, 0x02);
    if(Q55M > 0x00)
    {
      Q55N = 0x01;
      Q5UA = getHue(Q5UC);
      list cloth = 0x1517, "shirts", 0x1539, "pants", 0x153D, "misc", 0x0F95, "bolt of cloth";
      selectType(Q62D, this, 0x11, "Choose a category.", cloth);
    }
    else
    {
      bark(user, "There's no cloth on that");
      if(hasObjVar(Q5UC, "inUse"))
      {
        removeObjVar(Q5UC, "inUse");
      }
      if(hasObjVar(this, "inUse"))
      {
        removeObjVar(this, "inUse");
      }
      return(0x00);
    }
    break;
  case 0x1067
  case 0x1068
  case 0x1081
  case 0x1082
  case 0x1078
  case 0x1079
    if(isAtHome(usedon))
    {
      systemMessage(user, "That leather belongs to someone else.");
      if(hasObjVar(this, "inUse"))
      {
        removeObjVar(this, "inUse");
      }
      return(0x00);
    }
    if(hasObjVar(Q5UC, "inUse"))
    {
      systemMessage(user, "Someone else is using that leather.");
      if(hasObjVar(this, "inUse"))
      {
        removeObjVar(this, "inUse");
      }
      return(0x00);
    }
    else
    {
      setObjVar(Q5UC, "inUse", 0x01);
      attachscript(Q5UC, "removeinuse");
      callback(Q5UC, 0x3C, 0x1B);
    }
    Q4Q1 = getResource(Q55M, Q5UC, "leather", 0x03, 0x02);
    if(Q55M > 0x00)
    {
      Q55N = 0x00;
      list leather = 0x1710, "footwear", 0x13CC, "leather armor", 0x13DB, "studded armor", 0x1C02, "female armor";
      selectType(Q62D, this, 0x12, "Choose a category.", leather);
    }
    else
    {
      bark(user, "There's no leather on that");
      if(hasObjVar(Q5UC, "inUse"))
      {
        removeObjVar(Q5UC, "inUse");
      }
      if(hasObjVar(this, "inUse"))
      {
        removeObjVar(this, "inUse");
      }
      return(0x00);
    }
    break;
  default
    systemMessage(user, "Can't use a sewing kit on that.");
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    break;
  }
  return(0x00);
}

trigger typeselected(0x11)
{
  switch(listindex)
  {
  case 0x01
    list shirts = 0x1517, "Shirt - takes 8 cloth.", 0x1515, "Cloak - takes 14 cloth.", 0x1EFD, "Fancy shirt - takes 8 cloth.", 0x1EFF, "Fancy dress - takes 12 cloth.", 0x1F01, "Plain dress - takes 10 cloth.", 0x1F03, "Robe - takes 16 cloth.";
    selectType(Q62D, this, 0x13, "What kind of shirt?", shirts);
    break;
  case 0x02
    list pants = 0x1539, "Fancy pants - takes 8 cloth.", 0x1537, "Kilt - takes 8 cloth.", 0x1516, "Skirt - takes 10 cloth.";
    selectType(Q62D, this, 0x14, "What kind of pants?", pants);
    break;
  case 0x03
    list misc = 0x1544, "Skullcap - takes 2 cloth.", 0x1540, "Bandana - takes 2 cloth.", 0x1541, "Body sash - takes 4 cloth.", 0x153B, "Half apron - takes 6 cloth.", 0x153D, "Full apron - takes 10 cloth.";
    selectType(Q62D, this, 0x15, "What do you want to make?", misc);
    break;
  case 0x04
    list bolt = 0x0F95, "Bolt of cloth - takes 50 cloth.", 0x0F96, "Bolt of cloth - takes 50 cloth.", 0x0F97, "Bolt of cloth - takes 50 cloth.";
    selectType(Q62D, this, 0x3B, "What do you want to make?", bolt);
    break;
  default
    if(hasObjVar(Q5UC, "inUse"))
    {
      removeObjVar(Q5UC, "inUse");
    }
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    return(0x00);
    break;
  }
  return(0x00);
}

trigger typeselected(0x13)
{
  Q5C5 = objtype;
  switch(objtype)
  {
  case 0x1517
  case 0x1EFD
    Q55S = 0x08;
    break;
  case 0x1F01
    Q55S = 0x0A;
    break;
  case 0x1EFF
    Q55S = 0x0C;
    break;
  case 0x1515
    Q55S = 0x0E;
    break;
  case 0x1F03
    Q55S = 0x10;
    break;
  default
    if(hasObjVar(Q5UC, "inUse"))
    {
      removeObjVar(Q5UC, "inUse");
    }
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    return(0x00);
    break;
  }
  int Q4Q1 = getResource(Q55M, Q5UC, "cloth", 0x03, 0x02);
  if(Q55S > Q55M)
  {
    barkTo(Q5UC, Q62D, "There's not enough material to make this.");
    if(hasObjVar(Q5UC, "inUse"))
    {
      removeObjVar(Q5UC, "inUse");
    }
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    return(0x00);
  }
  Q65D();
  if(hasObjVar(Q5UC, "inUse"))
  {
    removeObjVar(Q5UC, "inUse");
  }
  if(hasObjVar(this, "inUse"))
  {
    removeObjVar(this, "inUse");
  }
  return(0x00);
}

trigger typeselected(0x14)
{
  Q5C5 = objtype;
  switch(objtype)
  {
  case 0x1539
  case 0x1537
    Q55S = 0x08;
    break;
  case 0x1516
    Q55S = 0x0A;
    break;
  default
    if(hasObjVar(Q5UC, "inUse"))
    {
      removeObjVar(Q5UC, "inUse");
    }
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    return(0x00);
    break;
  }
  int Q4Q1 = getResource(Q55M, Q5UC, "cloth", 0x03, 0x02);
  if(Q55S > Q55M)
  {
    barkTo(Q5UC, Q62D, "There's not enough material to make this.");
    if(hasObjVar(Q5UC, "inUse"))
    {
      removeObjVar(Q5UC, "inUse");
    }
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    return(0x00);
  }
  Q65D();
  if(hasObjVar(Q5UC, "inUse"))
  {
    removeObjVar(Q5UC, "inUse");
  }
  if(hasObjVar(this, "inUse"))
  {
    removeObjVar(this, "inUse");
  }
  return(0x00);
}

trigger typeselected(0x15)
{
  Q5C5 = objtype;
  switch(objtype)
  {
  case 0x1544
  case 0x1540
    Q55S = 0x02;
    break;
  case 0x1541
    Q55S = 0x04;
    break;
  case 0x153B
    Q55S = 0x06;
    break;
  case 0x153D
    Q55S = 0x0A;
    break;
  default
    if(hasObjVar(Q5UC, "inUse"))
    {
      removeObjVar(Q5UC, "inUse");
    }
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    return(0x00);
    break;
  }
  int Q4Q1 = getResource(Q55M, Q5UC, "cloth", 0x03, 0x02);
  if(Q55S > Q55M)
  {
    barkTo(Q5UC, Q62D, "There's not enough material to make this.");
    if(hasObjVar(Q5UC, "inUse"))
    {
      removeObjVar(Q5UC, "inUse");
    }
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    return(0x00);
  }
  Q65D();
  if(hasObjVar(Q5UC, "inUse"))
  {
    removeObjVar(Q5UC, "inUse");
  }
  if(hasObjVar(this, "inUse"))
  {
    removeObjVar(this, "inUse");
  }
  return(0x00);
}

trigger typeselected(0x3B)
{
  Q5C5 = objtype;
  switch(objtype)
  {
  case 0x0F95
  case 0x0F96
  case 0x0F97
    Q55S = 0x32;
    break;
  default
    if(hasObjVar(Q5UC, "inUse"))
    {
      removeObjVar(Q5UC, "inUse");
    }
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    return(0x00);
    break;
  }
  int Q4Q1 = getResource(Q55M, Q5UC, "cloth", 0x03, 0x02);
  if(Q55S > Q55M)
  {
    barkTo(Q5UC, Q62D, "There's not enough material to make this.");
    if(hasObjVar(Q5UC, "inUse"))
    {
      removeObjVar(Q5UC, "inUse");
    }
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    return(0x00);
  }
  Q65D();
  if(hasObjVar(Q5UC, "inUse"))
  {
    removeObjVar(Q5UC, "inUse");
  }
  if(hasObjVar(this, "inUse"))
  {
    removeObjVar(this, "inUse");
  }
  return(0x00);
}

trigger typeselected(0x12)
{
  switch(listindex)
  {
  case 0x01
    list Q5SU = 0x170B, "Boots - take 8 leather.", 0x170D, "Sandals - take 4 leather.", 0x1710, "Shoes - take 6 leather.", 0x1712, "Thigh boots - take 10 leather.";
    selectType(Q62D, this, 0x26, "What kind of shoes?", Q5SU);
    break;
  case 0x02
    list Q52K = 0x13C7, "Leather gorget - takes 4 leather.", 0x13C6, "Leather gloves - takes 6 leather.", 0x13C5, "Leather sleeves - takes 8 leather.", 0x13CB, "Leather leggings - takes 10 leather.", 0x13CC, "Leather tunic - takes 12 leather.";
    selectType(Q62D, this, 0x16, "What kind of leather armor?", Q52K);
    break;
  case 0x03
    list Q5XD = 0x13D6, "Studded gorget - takes 6 leather.", 0x13D5, "Studded gloves - takes 8 leather.", 0x13D4, "Studded sleeves - takes 10 leather.", 0x13DA, "Studded leggings - takes 12 leather.", 0x13DB, "Studded tunic - takes 14 leather.";
    selectType(Q62D, this, 0x17, "What kind of studded armor?", Q5XD);
    break;
  case 0x04
    list Q4P0 = 0x1C00, "Shorts - take 4 leather.", 0x1C02, "One piece - takes 10 leather.", 0x1C06, "One Piece - takes 8 leather.", 0x1C08, "Skirt - takes 6 leather.", 0x1C0A, "Top - takes 4 leather.", 0x1C0C, "Top - takes 4 leather.";
    selectType(Q62D, this, 0x2A, "What kind of female armor?", Q4P0);
    break;
  default
    if(hasObjVar(Q5UC, "inUse"))
    {
      removeObjVar(Q5UC, "inUse");
    }
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    return(0x00);
    break;
  }
  return(0x00);
}

trigger typeselected(0x26)
{
  Q5C5 = objtype;
  switch(objtype)
  {
  case 0x170D
    Q55S = 0x04;
    break;
  case 0x1710
    Q55S = 0x06;
    break;
  case 0x170B
    Q55S = 0x08;
    break;
  case 0x1712
    Q55S = 0x0A;
    break;
  default
    if(hasObjVar(Q5UC, "inUse"))
    {
      removeObjVar(Q5UC, "inUse");
    }
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    return(0x00);
    break;
  }
  int Q4Q1 = getResource(Q55M, Q5UC, "leather", 0x03, 0x02);
  if(Q55S > Q55M)
  {
    barkTo(Q5UC, Q62D, "There's not enough material to make this.");
    if(hasObjVar(Q5UC, "inUse"))
    {
      removeObjVar(Q5UC, "inUse");
    }
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    return(0x00);
  }
  Q65D();
  if(hasObjVar(Q5UC, "inUse"))
  {
    removeObjVar(Q5UC, "inUse");
  }
  if(hasObjVar(this, "inUse"))
  {
    removeObjVar(this, "inUse");
  }
  return(0x00);
}

trigger typeselected(0x16)
{
  Q5C5 = objtype;
  switch(objtype)
  {
  case 0x13C7
    Q55S = 0x04;
    break;
  case 0x13C6
    Q55S = 0x06;
    break;
  case 0x13C5
    Q55S = 0x08;
    break;
  case 0x13CB
    Q55S = 0x0A;
    break;
  case 0x13CC
    Q55S = 0x0C;
    break;
  default
    if(hasObjVar(Q5UC, "inUse"))
    {
      removeObjVar(Q5UC, "inUse");
    }
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    return(0x00);
    break;
  }
  int Q4Q1 = getResource(Q55M, Q5UC, "leather", 0x03, 0x02);
  if(Q55S > Q55M)
  {
    barkTo(Q5UC, Q62D, "There's not enough material to make this.");
    if(hasObjVar(Q5UC, "inUse"))
    {
      removeObjVar(Q5UC, "inUse");
    }
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    return(0x00);
  }
  Q65D();
  if(hasObjVar(Q5UC, "inUse"))
  {
    removeObjVar(Q5UC, "inUse");
  }
  if(hasObjVar(this, "inUse"))
  {
    removeObjVar(this, "inUse");
  }
  return(0x00);
}

trigger typeselected(0x17)
{
  Q5C5 = objtype;
  switch(objtype)
  {
  case 0x13D6
    Q55S = 0x06;
    break;
  case 0x13D5
    Q55S = 0x08;
    break;
  case 0x13D4
    Q55S = 0x0A;
    break;
  case 0x13DA
    Q55S = 0x0C;
    break;
  case 0x13DB
    Q55S = 0x0E;
    break;
  default
    if(hasObjVar(Q5UC, "inUse"))
    {
      removeObjVar(Q5UC, "inUse");
    }
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    return(0x00);
    break;
  }
  int Q4Q1 = getResource(Q55M, Q5UC, "leather", 0x03, 0x02);
  if(Q55S > Q55M)
  {
    barkTo(Q5UC, Q62D, "There's not enough material to make this.");
    if(hasObjVar(Q5UC, "inUse"))
    {
      removeObjVar(Q5UC, "inUse");
    }
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    return(0x00);
  }
  Q65D();
  if(hasObjVar(Q5UC, "inUse"))
  {
    removeObjVar(Q5UC, "inUse");
  }
  if(hasObjVar(this, "inUse"))
  {
    removeObjVar(this, "inUse");
  }
  return(0x00);
}

trigger typeselected(0x2A)
{
  Q5C5 = objtype;
  switch(objtype)
  {
  case 0x1C00
  case 0x1C0A
  case 0x1C0C
    Q55S = 0x04;
    break;
  case 0x1C08
    Q55S = 0x06;
    break;
  case 0x1C06
    Q55S = 0x08;
    break;
  case 0x1C02
    Q55S = 0x0A;
    break;
  default
    if(hasObjVar(Q5UC, "inUse"))
    {
      removeObjVar(Q5UC, "inUse");
    }
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    return(0x00);
    break;
  }
  int Q4Q1 = getResource(Q55M, Q5UC, "leather", 0x03, 0x02);
  if(Q55S > Q55M)
  {
    barkTo(Q5UC, Q62D, "There's not enough material to make this.");
    if(hasObjVar(Q5UC, "inUse"))
    {
      removeObjVar(Q5UC, "inUse");
    }
    if(hasObjVar(this, "inUse"))
    {
      removeObjVar(this, "inUse");
    }
    return(0x00);
  }
  Q65D();
  if(hasObjVar(Q5UC, "inUse"))
  {
    removeObjVar(Q5UC, "inUse");
  }
  if(hasObjVar(this, "inUse"))
  {
    removeObjVar(this, "inUse");
  }
  return(0x00);
}

function void Q4ER()
{
  obj Q4F0;
  int Q52O = 0x32 - Q55S;
  obj Q64V;
  list Q5NK;
  int Q55R = Q55M - Q55S;
  int Q4Q1;
  obj Q47F = getBackpack(Q62D);
  loc location = getLocation(Q62D);
  string name = getNameByType(Q5C5);
  if(Q55N)
  {
    Q55N = 0x00;
    switch(getObjType(Q5UC))
    {
    case 0x0F95
    case 0x0F96
    case 0x0F97
    case 0x0F98
    case 0x0F99
    case 0x0F9A
    case 0x0F9B
    case 0x0F9C
      Q64V = createNoResObjectAt(0x1766, getLocation(Q62D));
      Q4F0 = createNoResObjectAt(Q5C5, getLocation(Q62D));
      sfx(location, 0x0248, 0x00);
      transferResources(Q64V, Q5UC, 0x32, "cloth");
      transferResources(Q4F0, Q64V, Q55S, "cloth");
      setHue(Q64V, Q5UA);
      setHue(Q4F0, Q5UA);
      if(canHold(Q47F, Q64V))
      {
        int Q4Q3 = putObjContainer(Q64V, Q47F);
        systemMessage(Q62D, "You place the left-over cloth pieces into your backpack");
      }
      else
      {
        systemMessage(Q62D, "You place the left over cloth pieces at your feet.");
      }
      int Q5MS;
      int Q5MU;
      Q4Q1 = getResource(Q5MU, Q64V, "cloth", 0x03, 0x02);
      Q4Q1 = getResource(Q5MS, Q5UC, "cloth", 0x03, 0x02);
      if((getQuantity(Q5UC) == 0x01) && (Q5MS < 0x32))
      {
        deleteObject(Q5UC);
      }
      if((getQuantity(Q64V) == 0x01) && (Q5MU < 0x01))
      {
        deleteObject(Q64V);
      }
      break;
    default
      Q4F0 = createNoResObjectAt(Q5C5, getLocation(Q62D));
      sfx(location, 0x0248, 0x00);
      transferResources(Q4F0, Q5UC, Q55S, "cloth");
      setHue(Q4F0, Q5UA);
      if((getQuantity(Q5UC) == 0x01) && (Q55R < 0x01))
      {
        deleteObject(Q5UC);
      }
      break;
    }
  }
  else
  {
    Q4F0 = createNoResObjectAt(Q5C5, getLocation(Q62D));
    sfx(location, 0x0248, 0x00);
    transferResources(Q4F0, Q5UC, Q55S, "leather");
    if((getQuantity(Q5UC) == 0x01) && (Q55R < 0x01))
    {
      deleteObject(Q5UC);
    }
  }
  if(canHold(Q47F, Q4F0))
  {
    Q4Q3 = putObjContainer(Q4F0, Q47F);
    systemMessage(Q62D, "You create the " + name + " and put it in your backpack.");
  }
  else
  {
    systemMessage(Q62D, "You create the " + name + " and put it at your feet.");
  }
  if(hasObjVar(Q5UC, "inUse"))
  {
    removeObjVar(Q5UC, "inUse");
  }
  if(hasObjVar(this, "inUse"))
  {
    removeObjVar(this, "inUse");
  }
  if(Q46J(Q62D, this))
  {
    deleteObject(this);
  }
  return();
}

function void Q4OV()
{
  obj Q64V;
  int Q66X;
  int Q5TD;
  int Q5HM;
  int Q52N;
  list Q5NK;
  int Q55R = Q55M - Q55S;
  int Q4Q1;
  obj Q47F = getBackpack(Q62D);
  loc location = getLocation(Q62D);
  string Q615;
  Q615 = "cloth";
  Q66X = (getSkillLevelReal(Q62D, 0x22) / 0x64);
  switch(Q66X)
  {
  case 0x0A
  case 0x09
  case 0x08
    Q5TD = 0x04;
    break;
  case 0x07
  case 0x06
  case 0x05
  case 0x04
    Q5TD = 0x02;
    break;
  default
    Q5TD = 0x01;
    break;
  }
  Q5HM = (Q55S / Q5TD) - (random(0x00, (Q55S / Q5TD)));
  if(hasObjVar(this, "inUse"))
  {
    removeObjVar(this, "inUse");
  }
  switch(getObjType(Q5UC))
  {
  case 0x0F95
  case 0x0F96
  case 0x0F97
  case 0x0F98
  case 0x0F99
  case 0x0F9A
  case 0x0F9B
  case 0x0F9C
    Q52N = 0x32 - Q5HM;
    Q64V = createNoResObjectAt(0x1766, getLocation(Q62D));
    transferResources(Q64V, Q5UC, Q52N, "cloth");
    setHue(Q64V, Q5UA);
    if(canHold(Q47F, Q64V))
    {
      int Q4Q3 = putObjContainer(Q64V, Q47F);
      systemMessage(Q62D, "You place the left-over cloth pieces into your backpack");
    }
    else
    {
      systemMessage(Q62D, "You place the left over cloth pieces at your feet.");
    }
    systemMessage(Q62D, "Tailoring failed. Some of the cloth is ruined.");
    int Q5MS;
    Q4Q1 = getResource(Q5MS, Q5UC, "cloth", 0x03, 0x02);
    if((getQuantity(Q5UC) == 0x01) && (Q5MS < 0x32))
    {
      deleteObject(Q5UC);
    }
    break;
  case 0x175D
  case 0x175E
  case 0x175F
  case 0x1760
  case 0x1761
  case 0x1762
  case 0x1763
  case 0x1764
  case 0x1765
  case 0x1766
  case 0x1767
  case 0x1768
    systemMessage(Q62D, "Tailoring failed. Some of the cloth is ruined.");
    returnResourcesToBank(Q5UC, Q5HM, "cloth");
    break;
  case 0x1067
  case 0x1068
  case 0x1081
  case 0x1082
  case 0x1078
  case 0x1079
    systemMessage(Q62D, "Tailoring failed. Some of the leather is ruined.");
    returnResourcesToBank(Q5UC, Q5HM, "leather");
    break;
  }
  Q4Q1 = getResource(Q5MS, Q5UC, Q615, 0x03, 0x02);
  if((getQuantity(Q5UC) == 0x01) && (Q5MS < 0x01))
  {
    deleteObject(Q5UC);
  }
  return();
}

function void Q65D()
{
  int Q5TE = testSkillReal(Q62D, 0x22);
  if(Q5TE < 0x01)
  {
    Q4OV();
  }
  else
  {
    Q4ER();
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