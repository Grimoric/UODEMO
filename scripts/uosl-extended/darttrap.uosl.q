// UOSL (enhanced)
inherits sndfx;

member int Q5XS;
member int Q4GO;
member loc Q68C;
member loc Q5DE;
member loc Q4VS;
member int poisoned;

trigger creation()
{
  setObjVar(this, "isTrapped", 0x01);
  Q4VS = getLocation(this);
  Q4GO = getObjType(this);
  switch(Q4GO)
  {
  case 0x112F:
    Q68C = Q4VS;
    setX(Q68C, getX(Q4VS) + 0x01);
    break;
  case 0x112B:
    Q5DE = Q4VS;
    setY(Q5DE, getY(Q4VS) + 0x01);
    break;
  }
  int Q4B1 = random(0x01, 0x64);
  if(0x3C < Q4B1)
  {
    poisoned = 0x01;
  }
  return(0x00);
}

trigger message<"activate">(obj sender, list args)
{
  Q4GO = getObjType(this);
  Q5XS = 0x01;
  if(hasObjVar(this, "disarmed"))
  {
    switch(Q4GO)
    {
    case 0x1130:
      setType(this, 0x112F);
      break;
    case 0x112C:
      setType(this, 0x112B);
      break;
    default:
      break;
    }
    callback(this, 0x64, 0x2F);
  }
  else
  {
    switch(Q4GO)
    {
    case 0x112F:
      setType(this, 0x1130);
      break;
    case 0x112B:
      setType(this, 0x112C);
      break;
    default:
      break;
    }
    sfx(Q4VS, 0x0223, 0x00);
    shortcallback(this, 0x02, 0x44);
  }
  return(0x00);
}

trigger message<"deactivate">(obj sender, list args)
{
  return(0x00);
}

trigger enterrange<0x01>(obj target)
{
  Q4GO = getObjType(this);
  list Q67M;
  int i;
  if(!hasObjVar(this, "disarmed"))
  {
    switch(Q4GO)
    {
    case 0x112F:
      getMobsAt(Q67M, Q68C);
      if(numInList(Q67M) > 0x00)
      {
        setType(this, 0x1130);
        for(i = 0x00; i < numInList(Q67M); i ++)
        {
          loseHP(Q67M[i], dice(0x01, 0x06));
          if(0x00 < poisoned)
          {
            setObjVar(Q67M[i], "poison_strength", random(0x01, 0x02));
            attachScript(Q67M[i], "poisoned");
          }
        }
        sfx(Q4VS, 0x0223, 0x00);
        shortcallback(this, 0x02, 0x24);
      }
      break;
    case 0x112B:
      getMobsAt(Q67M, Q5DE);
      if(numInList(Q67M) > 0x00)
      {
        setType(this, 0x112C);
        for(i = 0x00; i < numInList(Q67M); i ++)
        {
          loseHP(Q67M[i], dice(0x01, 0x06));
          if(0x00 < poisoned)
          {
            setObjVar(Q67M[i], "poison_strength", random(0x01, 0x02));
            attachScript(Q67M[i], "poisoned");
          }
        }
        sfx(Q4VS, 0x0224, 0x00);
        shortcallback(this, 0x02, 0x24);
      }
      break;
    default:
      break;
    }
  }
  else
  {
    callback(this, 0x64, 0x2F);
  }
  return(0x01);
}

trigger enterrange<0x00>(obj target)
{
  if(!hasObjVar(this, "disarmed"))
  {
    switch(Q4GO)
    {
    case 0x112F:
      setType(this, 0x1130);
      sfx(Q4VS, 0x0223, 0x00);
      loseHP(target, dice(0x01, 0x06));
      if(0x00 < poisoned)
      {
        setObjVar(target, "poison_strength", random(0x01, 0x02));
        attachScript(target, "poisoned");
      }
      shortcallback(this, 0x01, 0x24);
      break;
    case 0x112B:
      setType(this, 0x112C);
      sfx(Q4VS, 0x0224, 0x00);
      loseHP(target, dice(0x01, 0x06));
      if(0x00 < poisoned)
      {
        setObjVar(target, "poison_strength", random(0x01, 0x02));
        attachScript(target, "poisoned");
      }
      shortcallback(this, 0x01, 0x24);
      break;
    default:
      break;
    }
  }
  else
  {
    callback(this, 0x64, 0x2F);
  }
  return(0x01);
}

trigger callback<0x24>()
{
  Q4GO = getObjType(this);
  switch(Q4GO)
  {
  case 0x1130:
    setType(this, 0x112F);
    break;
  case 0x112C:
    setType(this, 0x112B);
    break;
  default:
    break;
  }
  setObjVar(this, "disarmed", 0x01);
  callback(this, 0x05, 0x2F);
  return(0x00);
}

trigger callback<0x2F>()
{
  removeObjVar(this, "disarmed");
  return(0x00);
}