// UOSL (enhanced)
inherits sndfx;

member int Q46W;
member int Q46V;
member int Q46U;
member int Q46T;
member obj Q4FQ;
member int Q4WC;
member int Q57G;
member obj Q5SV;
member int Q5OJ;

trigger creation()
{
  Q46W = 0x00;
  Q46V = 0x00;
  Q46U = 0x00;
  Q46T = 0x00;
  Q4FQ = NULL();
  Q5OJ = 0x00;
  return(0x01);
}

trigger lookedat(obj looker)
{
  if(Q5OJ)
  {
    bark(this, "an archery butte (score:" + Q5OJ + ")");
    return(0x00);
  }
  return(0x01);
}

trigger ooruse(obj user)
{
  if(isDead(user))
  {
    barkTo(user, user, "You're a ghost, and can't do that.");
    return(0x01);
  }
  int Q49D = getObjType(this);
  loc there = getLocation(this);
  loc Q4VS = getLocation(user);
  faceHere(user, getDirectionInternal(Q4VS, there));
  if(Q4FQ != NULL())
  {
    barkTo(user, user, "Wait until it's clear!");
    return(0x01);
  }
  if(getDistanceInTiles(getLocation(user), getLocation(this)) == 0x01)
  {
    list Q4QJ;
    getObjectsInRangeWithFlags(Q4QJ, getLocation(this), 0x00, 0x0800);
    int Q5E0 = 0x00;
    for(int i = 0x00; i < numInList(Q4QJ); i ++)
    {
      if(getZ(getLocation(Q4QJ[i])) == getZ(getLocation(this)))
      {
        int Q4Q1 = putObjContainer(Q4QJ[i], getBackpack(user));
        Q5E0 ++;
      }
    }
    Q46W = 0x00;
    Q46V = 0x00;
    Q46U = 0x00;
    Q46T = 0x00;
    Q5OJ = 0x00;
    if(Q5E0 > 0x00)
    {
      ebarkTo(user, user, "You gather the arrows and bolts.");
      return(0x01);
    }
  }
  int Q56E;
  int Q476;
  list Q5TL;
  obj weapon = getWeapon(user);
  if(!isRanged(weapon))
  {
    barkTo(this, user, "You must practice with ranged weapons on this.");
    return(0x01);
  }
  int Q688 = getObjType(weapon);
  int Q57N;
  obj Q45X = NULL();
  Q4WC = 0x0234;
  if(Q688 == 0x13B1)
  {
    Q57G = 0x0238;
    Q57N = 0x0F42;
    Q45X = mobileContainsObjType(user, 0x0F3F);
  }
  if(Q688 == 0x13B2)
  {
    Q57G = 0x0238;
    Q57N = 0x0F42;
    Q45X = mobileContainsObjType(user, 0x0F3F);
  }
  if(Q688 == 0x0F4F)
  {
    Q57G = 0x0239;
    Q57N = 0x1BFE;
    Q45X = mobileContainsObjType(user, 0x0F3F);
  }
  if(Q688 == 0x0F50)
  {
    Q57G = 0x0239;
    Q57N = 0x1BFE;
    Q45X = mobileContainsObjType(user, 0x1BFB);
  }
  if(Q688 == 0x13FC)
  {
    Q57G = 0x023A;
    Q57N = 0x1BFE;
    Q45X = mobileContainsObjType(user, 0x1BFB);
  }
  if(Q688 == 0x13FD)
  {
    Q57G = 0x023A;
    Q57N = 0x1BFE;
    Q45X = mobileContainsObjType(user, 0x1BFB);
  }
  if(Q45X == NULL())
  {
    if(Q57N == 0x0F42)
    {
      ebarkTo(user, user, "You do not have any arrows with which to practice.");
    }
    else
    {
      ebarkTo(user, user, "You do not have any crossbow bolts with which to practice.");
    }
    return(0x01);
  }
  string Q57I;
  int Q5IW = getX(Q4VS);
  int Q5IX = getY(Q4VS);
  int Q49E = getX(there);
  int Q49F = getY(there);
  if(Q49D == 0x100A)
  {
    if(Q5IW < Q49E)
    {
      ebarkTo(user, user, "You would do better to stand in front of the archery butte.");
      return(0x01);
    }
    if(Q5IX != Q49F)
    {
      ebarkTo(user, user, "You aren't properly lined up with the archery butte to get an accurate shot.");
      return(0x01);
    }
    if((Q5IW - Q49E) > 0x06)
    {
      ebarkTo(user, user, "You are too far away from the archery butte to get an accurate shot.");
      return(0x01);
    }
    if((Q5IW - Q49E) < 0x05)
    {
      ebarkTo(user, user, "You are too close to the target.");
      return(0x01);
    }
  }
  if(Q49D == 0x100B)
  {
    if(Q5IX < Q49F)
    {
      ebarkTo(user, user, "You would do better to stand in front of the archery butte.");
      return(0x01);
    }
    if(Q5IW != Q49E)
    {
      ebarkTo(user, user, "You aren't properly lined up with the archery butte to get an accurate shot.");
      return(0x01);
    }
    if((Q5IX - Q49F) > 0x06)
    {
      ebarkTo(user, user, "You are too far away from the archery butte to get an accurate shot.");
      return(0x01);
    }
    if((Q5IX - Q49F) < 0x05)
    {
      ebarkTo(user, user, "You are too close to the target.");
      return(0x01);
    }
  }
  if(getItemAtSlot(user, 0x19) != NULL())
  {
    Q56E = 0x05;
    Q476 = 0x1B;
  }
  else
  {
    Q476 = 0x12;
  }
  if(!isHuman(user))
  {
    Q56E = 0x04;
    Q476 = random(0x04, 0x06);
  }
  animateMobile(user, Q476, Q56E, 0x01, 0x00, 0x00);
  doMissile_Mob2Loc(user, there, Q57N, 0x05, 0x00, 0x00);
  Q4FQ = user;
  callback(this, 0x01, 0x19);
  if(getQuantity(Q45X) > 0x01)
  {
    Q5SV = createNoResObjectAt(getObjType(Q45X), getLocation(this));
    transferGeneric(Q5SV, Q45X, 0x01);
  }
  else
  {
    Q4Q1 = teleport(Q45X, getLocation(this));
    Q5SV = Q45X;
  }
  return(0x00);
}

trigger callback<0x19>()
{
  obj user = Q4FQ;
  Q4FQ = NULL();
  int Q57K = Q4WC;
  int Q493 = 0x00;
  string Q57I;
  if(getObjType(Q5SV) == 0x0F3F)
  {
    Q57I = "arrow";
  }
  else
  {
    Q57I = "bolt";
  }
  int success = testAndLearnSkill(user, 0x1F, 0x00, 0x32);
  if(success <= 0x00)
  {
    ebarkTo(this, user, "You miss the target altogether.");
    Q57K = Q57G;
  }
  else
  {
    string Q4W9;
    int Q68K = random(0x00, 0x09C4 - success) / 0xC8;
    switch(Q68K)
    {
    case 0x00:
      Q4W9 = "bullseye!";
      if(random(0x00, 0x0A) < Q46T)
      {
        Q493 = 0x01;
        Q5OJ = Q5OJ + 0x64;
      }
      else
      {
        Q46T ++;
        Q5OJ = Q5OJ + 0x32;
      }
      break;
    case 0x01:
    case 0x02:
    case 0x03:
      Q4W9 = "inner ring!";
      if(random(0x00, 0x0A) < Q46U)
      {
        Q493 = 0x01;
        Q5OJ = Q5OJ + 0x1E;
      }
      else
      {
        Q46V ++;
        Q5OJ = Q5OJ + 0x0A;
      }
      break;
    case 0x04:
    case 0x05:
    case 0x06:
    case 0x07:
    case 0x08:
      Q4W9 = "middle ring.";
      if(random(0x00, 0x0A) < Q46V)
      {
        Q493 = 0x01;
        Q5OJ = Q5OJ + 0x0F;
      }
      else
      {
        Q46V ++;
        Q5OJ = Q5OJ + 0x05;
      }
      break;
    default:
      Q4W9 = "outer ring.";
      if(random(0x00, 0x0A) < Q46W)
      {
        Q493 = 0x01;
        Q5OJ = Q5OJ + 0x05;
      }
      else
      {
        Q46W ++;
        Q5OJ = Q5OJ + 0x02;
      }
      break;
    }
    if(Q493)
    {
      deleteObject(Q5SV);
      barkTo(this, user, "Your " + Q57I + " robinhoods another in the " + Q4W9);
    }
    else
    {
      barkTo(this, user, "You hit the " + Q4W9);
    }
  }
  sfx(getLocation(this), Q57K, 0x00);
  return(0x01);
}