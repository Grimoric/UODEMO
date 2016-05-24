// UOSL (enhanced)
inherits spelskil;

member int Q5T1;

function int Q447(obj target, int Q5XG)
{
  loc Q61U = getLocation(this);
  int Q62G = getZ(Q61U);
  loc Q5YL = getLocation(target);
  int Q5YP = getZ(Q5YL);
  int Q4HE = Q62G - Q5YP;
  string Q5WL = Q4HE;
  if((Q4HE > 0x0A) || (Q4HE < (0x00 - 0x0A)))
  {
    return(0x00);
  }
  if(isDead(target))
  {
    if(findGoodZ(Q5YL, getZ(Q5YL), getZ(Q5YL), getHeight(target), 0x01) == (0x00 - 0x80))
    {
      return(0x00);
    }
    if(!Q5XG)
    {
      if(!getCompileFlag(0x01))
      {
        if(getNotorietyLevel(target) < (0x00 - 0x02))
        {
          bark(this, "Thy deeds are those of a scoundrel; thou shalt not be resurrected here.");
          return(0x00);
        }
      }
      else
      {
        if(isMurderer(target))
        {
          bark(this, "Thy deeds are those of a scoundrel; thou shalt not be resurrected here.");
          return(0x00);
        }
      }
    }
    string Q5N1;
    if(Q5XG)
    {
      Q5N1 = "It is possible for you to be resurrected here at the Chaos Shrine. Do you wish to try?";
    }
    else
    {
      Q5N1 = "It is possible for you to be resurrected at this Shrine to the Virtues. Do you wish to try?";
    }
    Q426(this, target, 0x01, Q5N1)/* semicolon added by the decompiler post-processor */;
    return(0x01);
  }
  return(0x00);
}

trigger enterrange<0x01>(obj target)
{
  int Q527 = Q447(target, Q5T1);
  return(!Q527);
}

trigger use(obj user)
{
  if(hasScript(user, "poisoned"))
  {
    Q660(user);
    barkTo(this, user, "Thy poison has been cured.");
  }
  return(0x00);
  if(isDead(user))
  {
    int Q528 = Q447(user, Q5T1);
    return(0x00);
  }
  int Q5DG;
  if(!getCompileFlag(0x01))
  {
    if(Q5T1)
    {
      if(getNotoriety(user) < 0x00)
      {
        Q5DG = 0x01;
        barkTo(this, user, "Thy efforts for the resistance are rewarded.");
      }
    }
    else
    {
      if(getNotoriety(user) >= 0x00)
      {
        Q5DG = 0x01;
        barkTo(this, user, "Strive to continue on the path of benevolence.");
      }
    }
  }
  else
  {
    if(Q5T1)
    {
      if(getKarmaLevel(user) < 0x00)
      {
        Q5DG = 0x01;
        barkTo(this, user, "Thy efforts for the resistance are rewarded.");
      }
    }
    else
    {
      if(getKarmaLevel(user) >= 0x00)
      {
        Q5DG = 0x01;
        barkTo(this, user, "Strive to continue on the path of benevolence.");
      }
    }
  }
  if(Q5DG)
  {
    doMobAnimation(user, 0x376A, 0x0A, 0x0F, 0x00, 0x00);
    restoreHP(user);
  }
  else
  {
    if(Q5T1)
    {
      int Q4FG = getCurHP(user);
      barkTo(this, user, "The weak deserve their fate.");
      doMobAnimation(user, 0x374A, 0x0A, 0x0F, 0x00, 0x00);
      setCurHP(user, Q4FG / 0x02 + 0x01);
    }
    else
    {
      int Q562 = getMaxHP(user);
      int Q4WA = getHPLevel(user);
      if(Q4WA < 0x32)
      {
        setCurHP(user, Q562 / 0x02);
        doMobAnimation(user, 0x376A, 0x0A, 0x0F, 0x00, 0x00);
        barkTo(this, user, "Do more to help others.");
      }
      else
      {
        barkTo(this, user, "I can not help thee.");
      }
    }
  }
  return(0x01);
}