// UOSL (native)
inherits globals;

function int Q4S0()
{
  int Q4DR = 0x20;
  switch(random(0x00, 0x02))
  {
  case 0x00
    Q4DR = 0x40;
    break;
  case 0x01
    Q4DR = 0x08FD;
    break;
  default
    break;
  }
  return(Q4DR);
}

function obj Q45E(obj Q47J, int Q65M, int Q4DR, string lookAtText, string Q5OL)
{
  obj item = requestCreateObjectIn(Q65M, Q47J);
  if(Q4DR)
  {
    setHue(item, Q4DR);
  }
  if(lookAtText != "")
  {
    setObjVar(item, "lookAtText", lookAtText);
  }
  if(Q5OL != "")
  {
    attachScript(item, Q5OL);
  }
  setObjVar(item, "valueless", 0x01);
  return(item);
}

trigger creation
{
  obj Q47J = requestCreateObjectIn(0x0E76, getBackpack(this));
  if(Q47J == NULL())
  {
    return(0x00);
  }
  setHue(Q47J, Q4S0());
  int Q5D8 = 0x01;
  if(!getCompileFlag(0x01))
  {
    if(getNotorietyLevel(this) < 0x00)
    {
      Q5D8 = 0x00;
    }
  }
  else
  {
    if(getKarmaLevel(this) < 0x00)
    {
      Q5D8 = 0x00;
    }
  }
  obj item;
  if(Q5D8)
  {
    setObjVar(Q47J, "lookAtText", "Happy Holidays!");
    item = Q45E(Q47J, 0x1086, 0x00, "a wrist watch", "clock");
    if(random(0x00, 0x01))
    {
      item = Q45E(Q47J, 0x1044, 0x01B0, "fruit cake", "");
    }
    else
    {
      item = Q45E(Q47J, 0x1040, 0x00, "", "");
    }
    if(random(0x00, 0x01))
    {
      item = Q45E(Q47J, 0x099B, 0x00, "", "");
      setObjVar(item, "drinkType", "champagne");
    }
    else
    {
      item = Q45E(Q47J, 0x099F, 0x00, "", "");
      setObjVar(item, "drinkType", "eggnog");
    }
    list fruit = 0x09D0, 0x09D1, 0x09D2, 0x1721, 0x1726, 0x1727, 0x172C, 0x172D;
    item = Q45E(Q47J, fruit[random(0x00, numInList(fruit) - 0x01)], 0x00, "", "");
    item = Q45E(Q47J, 0x099A, 0x47, "a champagne glass", "");
    item = Q45E(Q47J, 0x099A, 0x22, "a champagne glass", "");
    item = Q45E(Q47J, 0x0DF5, 0x00, "a fireworks wand", "sparkler");
    item = Q45E(Q47J, 0x14EF, Q4S0(), "Seasons Greetings", "");
  }
  else
  {
    setObjVar(Q47J, "lookAtText", "You were naughty this year!");
    item = Q45E(Q47J, 0x1044, 0x00, "", "");
    item = Q45E(Q47J, 0x19B9, 0x0455, "coal", "");
    item = Q45E(Q47J, 0x0DE1, 0x00, "switches", "");
    item = Q45E(Q47J, 0x14EF, Q4S0(), "Maybe next year you will get a nicer gift.", "");
  }
  return(0x00);
}