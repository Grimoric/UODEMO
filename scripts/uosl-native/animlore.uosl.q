// UOSL (native)
inherits sk_table;

function void Q557(string Q4Y5, list Q4YF)
{
  int count;
  int Q5EJ = numInList(Q4YF);
  for(count = 0x00; count < Q5EJ; count ++)
  {
    string Q5ZE = Q4YF[count];
    if(count == (Q5EJ - 0x01))
    {
      Q4Y5 = Q4Y5 + Q5ZE;
    }
    if(count == (Q5EJ - 0x02))
    {
      Q4Y5 = Q4Y5 + Q5ZE + " and ";
    }
    if(count < (Q5EJ - 0x02))
    {
      Q4Y5 = Q4Y5 + Q5ZE + ", ";
    }
  }
  return();
}

trigger message("canUseSkill")
{
  return(0x00);
}

trigger callback(0x4D)
{
  detachScript(this, "animlore");
  return(0x00);
}

trigger message("useSkill")
{
  callback(this, 0x0A, 0x4D);
  systemMessage(this, "What animal should I look at?");
  targetObj(this, this);
  return(0x00);
}

trigger targetobj
{
  if(usedon == NULL())
  {
    return(0x00);
  }
  if(!isMobile(usedon))
  {
    barkTo(this, this, "That's not an animal!");
    return(0x00);
  }
  if(isHuman(usedon))
  {
    barkTo(this, this, "That's not an animal!");
    return(0x00);
  }
  loc Q4VS = getLocation(this);
  loc there = getLocation(usedon);
  if(getDistanceInTiles(Q4VS, there) > 0x10)
  {
    barkTo(usedon, this, "I am too far away to do that.");
    return(0x00);
  }
  int Q5TE = testSkillReal(this, 0x02);
  if(Q5TE <= 0x00)
  {
    barkTo(usedon, this, "You can't think of anything you know offhand.");
    return(0x00);
  }
  int Q48L = getObjType(usedon);
  string name;
  name = getName(usedon);
  int Q4Q1;
  int count;
  list Q4Q7;
  list Q5RT;
  list Q5KP;
  list Q4HM;
  string Q4YK;
  string Q5UH;
  string Q496;
  string Q4Y5;
  string Q5ZE;
  Q4Q1 = getResourcesOnObj(usedon, 0x01, Q5RT);
  removeSpecificItem(Q5RT, "spookiness");
  int Q5EP = numInList(Q5RT);
  for(count = 0x00; count < Q5EP; count ++)
  {
    Q4YK = Q5RT[count];
    Q5UH = getResourceName(Q4YK, 0x01);
    setItem(Q5RT, Q5UH, count);
  }
  toUpper(name, 0x00, 0x01);
  Q4Y5 = name + " lives in ";
  Q557(Q4Y5, Q5RT);
  Q4Q1 = getResourcesOnObj(usedon, 0x00, Q4Q7);
  removeSpecificItem(Q4Q7, "spookiness");
  removeSpecificItem(Q4Q7, "jungle");
  int Q5EK = numInList(Q4Q7);
  for(count = 0x00; count < Q5EK; count ++)
  {
    Q4YK = Q4Q7[count];
    Q5UH = getResourceName(Q4YK, 0x00);
    setItem(Q4Q7, Q5UH, count);
  }
  Q4Y5 = Q4Y5 + " and eats ";
  Q557(Q4Y5, Q4Q7);
  Q4Y5 = Q4Y5 + ".  ";
  Q4Q1 = getResourcesOnObj(usedon, 0x03, Q5KP);
  removeSpecificItem(Q5KP, "carnivoremeat");
  removeSpecificItem(Q5KP, "meat");
  removeSpecificItem(Q5KP, "spookiness");
  removeSpecificItem(Q5KP, "good");
  removeSpecificItem(Q5KP, "neutral");
  removeSpecificItem(Q5KP, "evil");
  removeSpecificItem(Q5KP, "orccamp");
  removeSpecificItem(Q5KP, "magic");
  int Q5EM = numInList(Q5KP);
  for(count = 0x00; count < Q5EM; count ++)
  {
    Q4YK = Q5KP[count];
    Q5UH = getResourceName(Q4YK, 0x03);
    if(Q5UH == "cloth")
    {
      Q5UH = "wool";
    }
    if(Q5UH == "ridable")
    {
      Q5UH = "ability to carry";
    }
    if(Q5UH == "leather")
    {
      Q5UH = "hide"
      );
    }
    setItem(Q5KP, Q5UH, count);
  }
  if(Q5EM > 0x00)
  {
    Q4Y5 = Q4Y5 + "They are sometimes used for their ";
    Q557(Q4Y5, Q5KP);
    Q4Y5 = Q4Y5 + ".  ";
  }
  Q4Q1 = getResourcesOnObj(usedon, 0x02, Q4HM);
  int Q5EI = numInList(Q4HM);
  for(count = 0x00; count < Q5EI; count ++)
  {
    Q4YK = Q4HM[count];
    Q5UH = getResourceName(Q4YK, 0x02);
    setItem(Q5KP, Q5UH, count);
  }
  for(count = 0x00; count < Q5EI; count ++)
  {
    list Q5LT;
    list Q47D;
    string Q5N3 = Q4HM[count];
    int Q4HK;
    Q4Q1 = getResource(Q4HK, usedon, Q5N3, 0x02, 0x01);
    if(Q4HK < 0x00)
    {
      if(!(Q5N3 == "danger"))
      {
        if(Q5N3 == "meat")
        {
          appendToList(Q47D, "carnivores");
        }
        else
        {
          appendToList(Q47D, Q5N3);
        }
      }
    }
    if(Q4HK > 0x00)
    {
      if(Q5N3 == "self")
      {
        appendToList(Q5LT, "others of their kind");
      }
      else
      {
        appendToList(Q5LT, Q5N3);
      }
    }
  }
  int Q5EO = numInList(Q5LT);
  if(Q5EO > 0x00)
  {
    Q4Y5 = Q4Y5 + "They are usually found near ";
    Q557(Q4Y5, Q5LT);
  }
  int Q5EH = numInList(Q47D);
  if(Q5EH > 0x00)
  {
    if(Q5EO > 0x00)
    {
      Q4Y5 = Q4Y5 + " but they will tend to avoid ";
    }
    else
    {
      Q4Y5 = Q4Y5 + "They will avoid ";
    }
    Q557(Q4Y5, Q47D);
  }
  string Q4XH;
  int Q614 = getHungerLevel(usedon);
  if(!hasHome(usedon))
  {
    Q4Y5 = Q4Y5 + "This one has the worn-down look of a creature that lacks a lair or home to call its own. ";
  }
  else
  {
    int Q4IJ = getDistanceInTiles(getHome(usedon), getLocation(usedon));
    if(Q4IJ < 0x10)
    {
      Q4Y5 = Q4Y5 + "This appears to be its home. ";
    }
    else
    {
      if(Q4IJ > 0x46)
      {
        Q4Y5 = Q4Y5 + "It seems to be far from its normal home. ";
      }
      else
      {
        Q4Y5 = Q4Y5 + "Its home is probably nearby. ";
      }
    }
  }
  Q614 = Q614 / 0x0A;
  switch(Q614)
  {
  case 0x00
    Q4XH = "like it is starving.";
    break;
  case 0x01
    Q4XH = "near starving.";
    break;
  case 0x02
    Q4XH = "pretty hungry.";
    break;
  case 0x03
    Q4XH = "hungry.";
    break;
  case 0x04
  case 0x05
  case 0x06
    Q4XH = "moderately well-fed.";
    break;
  case 0x07
    Q4XH = "well-fed.";
    break;
  case 0x08
    Q4XH = "plump.";
    break;
  case 0x09
    Q4XH = "like it gets plenty to eat.";
    break;
  case 0x0A
    Q4XH = "replete, as if it has just eaten.";
    break;
  default
    Q4XH = "moderately well-fed.";
    break;
  }
  if(!hasObjListVar(usedon, "myBoss"))
  {
    Q4Y5 = Q4Y5 + "It looks " + Q4XH;
  }
  barkTo(this, this, Q4Y5);
  setObjVar(usedon, "askedMyLoyalty", this);
  shortCallback(usedon, 0x01, 0x43);
  return(0x00);
}