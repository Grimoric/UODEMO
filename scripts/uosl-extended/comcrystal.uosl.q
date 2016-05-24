// UOSL (enhanced)
member int charges;
member list Q535;
member int Q454;
member int Q55T;

function int Q42O()
{
  return(numInList(Q535));
}

function int Q431()
{
  if(charges != 0x00)
  {
    return(0x01);
  }
  return(0x00);
}

function int Q42M()
{
  return(charges);
}

function void Q41H(obj Q4XN)
{
  int value = 0x00;
  if(hasObjVar(Q4XN, "mybasevalue"))
  {
    value = getObjVar(Q4XN, "mybasevalue");
  }
  int Q4AX = Q42M();
  int Q5BE = 0x00;
  if(Q4AX < 0x00)
  {
    Q5BE = 0x03E7;
  }
  else
  {
    Q5BE = 0x01 * Q4AX / 0x0A;
  }
  Q5BE = Q5BE + 0x05;
  if(Q5BE != value)
  {
    setObjVar(Q4XN, "mybasevalue", Q5BE);
  }
  return;
}

function void Q43X(int newcharges)
{
  charges = newcharges;
  Q41H(this);
  return;
}

function void Q43Z(int newcharges)
{
  Q43X(newcharges);
  return;
}

function int Q580(int Q463)
{
  charges = charges + Q463;
  Q41H(this);
  return(charges);
}

function int Q4YY(obj Q4XN)
{
  int Q5NC = hasObjVar(Q4XN, "isComCrystal");
  return(Q5NC);
}

function void Q5RA(obj it, int status)
{
  int newType = 0x1ECD;
  if(status)
  {
    newType = 0x1ED0;
  }
  if(getObjType(it) != newType)
  {
    setType(it, newType);
  }
  return;
}

function void Q5R8(obj it, int status)
{
  Q454 = status;
  Q5RA(it, Q454);
  return;
}

function int Q63I(obj user, obj Q4XN)
{
  if(Q454)
  {
    Q5R8(Q4XN, 0x00);
    systemMessage(user, "You turn the crystal off.");
  }
  else
  {
    Q5R8(Q4XN, 0x01);
    systemMessage(user, "You turn the crystal on.");
  }
  return(Q454);
}

function int Q656(obj user, obj Q4XN)
{
  if(isInList(Q535, Q4XN))
  {
    systemMessage(user, "This crystal is already linked with that crystal.");
    return(0x00);
  }
  appendToList(Q535, Q4XN);
  systemMessage(user, "That crystal has been linked to this crystal.");
  return(0x01);
}

function int Q4BE(obj Q4XN, obj user)
{
  if(!Q431())
  {
    systemMessage(user, "This crystal is out of charges.");
    return(0x00);
  }
  return(0x01);
}

function int Q5QW(obj sender, obj speaker, string arg)
{
  if(!Q431())
  {
    return(0x00);
  }
  list Q5QZ;
  appendToList(Q5QZ, speaker);
  string Q5R1 = getName(speaker);
  appendToList(Q5QZ, Q5R1);
  int Q5UG = getDefaultTextHue(speaker);
  appendToList(Q5QZ, Q5UG);
  appendToList(Q5QZ, arg);
  int num = numInList(Q535);
  int Q4EJ;
  for(Q4EJ = 0x00; Q4EJ < num; Q4EJ ++)
  {
    obj Q5R3 = Q535[Q4EJ];
    multimessage(Q5R3, "comspeech", Q5QZ);
    if(Q580((0x00 - 0x01)) == 0x00)
    {
      Q63I(speaker, sender);
      break;
    }
  }
  return(Q4EJ);
}

function void Q4CR()
{
  if(hasObjVar(this, "newcharges"))
  {
    int newcharges = getObjVar(this, "newcharges");
    removeObjVar(this, "newcharges");
    Q43X(newcharges);
  }
  return;
}

function string Q4S3()
{
  string name;
  if(Q454)
  {
    concat(name, "an active ");
  }
  else
  {
    concat(name, "an inactive ");
  }
  concat(name, "crystal of communication");
  concat(name, " with ");
  int Q4AX = Q42M();
  if(Q4AX < 0x00)
  {
    concat(name, "infinite");
  }
  else
  {
    name = name + Q4AX;
  }
  concat(name, " charges");
  int Q5EU = Q42O();
  if(Q5EU > 0x00)
  {
    concat(name, " and ");
    name = name + Q5EU;
    concat(name, " links");
  }
  return(name);
}

function void Q5RE()
{
  string name = Q4S3();
  setObjVar(this, "lookAtText", name);
  return;
}

function int Q4SO(obj it)
{
  int Q65M = getObjType(it);
  int power = 0x00 - 0x01;
  switch(Q65M)
  {
  case 0x0F25:
  case 0x0F15:
  case 0x0F23:
  case 0x0F24:
  case 0x0F2C:
    power = 0x01F4;
    break;
  case 0x0F0A:
  case 0x0F14:
  case 0x0F1A:
  case 0x0F1C:
  case 0x0F1D:
  case 0x0F2A:
  case 0x0F2B:
  case 0x0F18:
  case 0x0F1E:
  case 0x0F20:
  case 0x0F2D:
    power = 0x02EE;
    break;
  case 0x0F10:
  case 0x0F2F:
  case 0x0F11:
  case 0x0F12:
  case 0x0F19:
  case 0x0F1F:
  case 0x0F16:
  case 0x0F17:
  case 0x0F22:
  case 0x0F2E:
    power = 0x03E8;
    break;
  case 0x0F0F:
  case 0x0F1B:
  case 0x0F21:
    power = 0x04E2;
    break;
  case 0x0F26:
  case 0x0F27:
  case 0x0F28:
  case 0x0F29:
  case 0x0F30:
    power = 0x07D0;
    break;
  }
  return(power);
}

function void Q442(obj it)
{
  destroyOne(it);
  return;
}

function int Q4CL(obj it, obj user)
{
  obj Q4E2 = getTopmostContainer(it);
  if((Q4E2 != NULL()) && (Q4E2 != user))
  {
    return(0x00);
  }
  int power;
  power = Q4SO(it);
  if(power <= 0x00)
  {
    return(0x00);
  }
  if(Q42M() < 0x00)
  {
    systemMessage(user, "This crystal can not be recharged.");
    return(0x00);
  }
  if(Q42M() >= Q55T)
  {
    systemMessage(user, "This crystal is already fully charged.");
    return(0x00);
  }
  int num = charges + power;
  if(num >= Q55T)
  {
    num = Q55T;
    systemMessage(user, "You completely recharge the crystal.");
  }
  else
  {
    systemMessage(user, "You recharge the crystal.");
  }
  Q43X(num);
  Q442(it);
  Q5RE();
  return(0x01);
}

trigger creation()
{
  Q55T = 0x07D0;
  Q43Z(0x01F4);
  setObjVar(this, "isComCrystal", 0x01);
  Q5R8(this, 0x00);
  Q4CR();
  Q5RE();
  attachScript(this, "speechrelay");
  return(0x01);
}

trigger lookedat(obj looker)
{
  Q5RE();
  string name = Q4S3();
  barkTo(this, looker, name);
  return(0x00);
}

trigger use(obj user)
{
  targetobj(user, this);
  return(0x01);
}

trigger targetobj(obj user, obj usedon)
{
  if(!isValid(usedon))
  {
    return(0x00);
  }
  if(Q4CL(usedon, user))
  {
    return(0x00);
  }
  if(!Q4BE(this, user))
  {
    return(0x00);
  }
  if(usedon == this)
  {
    Q63I(user, this);
  }
  else
  {
    if(Q4YY(usedon))
    {
      Q656(user, usedon);
    }
    else
    {
      systemMessage(user, "You can not use this crystal on that.");
    }
  }
  return(0x01);
}

trigger message<"speechrelayed">(obj sender, list args)
{
  Q4CR();
  if(Q454)
  {
    int Q527 = Q5QW(this, args[0x00], args[0x01]);
    Q5RE();
  }
  return(0x00);
}

trigger message<"comspeech">(obj sender, list args)
{
  string Q5R1 = args[0x01];
  int Q5R0 = args[0x02];
  string Q5R5 = args[0x03];
  string Q5CR;
  obj Q4E2 = getTopmostContainer(this);
  if((Q4E2 != NULL()))
  {
    if(isPlayer(Q4E2))
    {
      concat(Q5CR, "Crystal: ");
    }
  }
  concat(Q5CR, Q5R1);
  concat(Q5CR, " says ");
  concat(Q5CR, Q5R5);
  int Q5NC = 0x01;
  if(Q4E2 == NULL())
  {
    Q5NC = superBark(this, Q5CR, Q5R0, 0x03, 0x07);
  }
  else
  {
    if(isPlayer(Q4E2))
    {
      Q5NC = textMessage(Q4E2, Q5CR, Q5R0, 0x03, 0x06);
    }
    else
    {
      Q5NC = superBark(Q4E2, Q5CR, Q5R0, 0x03, 0x07);
    }
  }
  return(0x01);
}