// UOSL (native)
inherits sndfx;

forward void cleanup();
forward void Q5NI();

trigger message("fish")
{
  obj pole = args[0x00];
  loc there = args[0x01];
  setObjVar(this, "there", there);
  loc Q4VS = getLocation(this);
  int Q4ID = getDirectionInternal(Q4VS, there);
  faceHere(this, Q4ID);
  if((isEquipped(pole)))
  {
    setObjVar(this, "equipped", 0x01);
  }
  else
  {
    obj Q47F = getBackpack(this);
    obj rightHand = getItemAtSlot(this, 0x01);
    if(!(rightHand == NULL()))
    {
      if(!(putObjContainer(rightHand, Q47F)))
      {
        return(0x00);
      }
    }
    obj leftHand = getItemAtSlot(this, 0x02);
    if(!(leftHand == NULL()))
    {
      if(!(putObjContainer(leftHand, Q47F)))
      {
        return(0x00);
      }
    }
    loc Q61U;
    obj container;
    int contained = 0x00;
    if(isInContainer(pole))
    {
      container = containedBy(pole);
      setObjVar(pole, "container", container);
    }
    else
    {
      Q61U = getLocation(pole);
      setObjVar(pole, "location", Q61U);
    }
    if(!(putObjContainer(pole, this)))
    {
    }
    if(!(equipObj(pole, this, 0x01)))
    {
      return(0x00);
    }
    setObjVar(this, "rightHand", rightHand);
    setObjVar(this, "leftHand", leftHand);
    setObjVar(this, "pole", pole);
  }
  animateMobile(this, 0x0C, 0x07, 0x01, 0x00, 0x00);
  callback(this, 0x02, 0x4B);
  return(0x01);
}

trigger callback(0x4B)
{
  obj rightHand;
  obj leftHand;
  obj pole;
  int Q4Q1;
  loc there;
  if(hasObjVar(this, "there"))
  {
    there = getObjVar(this, "there");
  }
  if(!(hasObjVar(this, "splash")))
  {
    doLocAnimation(there, 0x352D, 0x04, 0x10, 0x00, 0x00);
    sfx(getLocation(this), 0x023F, 0x00);
    setObjVar(this, "splash", 0x01);
    callback(this, 0x05, 0x4B);
    return(0x00);
  }
  if(!(hasObjVar(this, "equipped")))
  {
    if(hasObjVar(this, "rightHand"))
    {
      rightHand = getObjVar(this, "rightHand");
    }
    else
    {
      cleanup();
      return(0x00);
    }
    if(hasObjVar(this, "leftHand"))
    {
      leftHand = getObjVar(this, "leftHand");
    }
    else
    {
      cleanup();
      return(0x00);
    }
    if(hasObjVar(this, "pole"))
    {
      pole = getObjVar(this, "pole");
    }
    else
    {
      cleanup();
      return(0x00);
    }
    Q5NI();
    if(!(rightHand == NULL()))
    {
      if(!(equipObj(rightHand, this, 0x01)))
      {
        cleanup();
        return(0x00);
      }
    }
    if(!(leftHand == NULL()))
    {
      if(!(equipObj(leftHand, this, 0x02)))
      {
        cleanup();
        return(0x00);
      }
    }
  }
  if(!testSkill(this, 0x12))
  {
    systemMessage(this, "You fish a while, but fail to catch anything.");
    cleanup();
    return(0x00);
  }
  string Q5YJ = getObjVar(this, "targetType");
  int Q4PG;
  int Q4PJ;
  obj Q604;
  if(Q5YJ == "object")
  {
    debugMessage("fishing on objects");
    list Q686 = 0x1796, 0x1797, 0x1798, 0x1799, 0x179A, 0x179B, 0x179C, 0x179D, 0x179E, 0x179F, 0x17A0, 0x17A1, 0x17A2, 0x17A3, 0x17A4, 0x17A5, 0x17A6, 0x17A7, 0x17A8, 0x17A9, 0x17AA, 0x17AB, 0x17AC, 0x17AD, 0x346E, 0x346F, 0x3470, 0x3471, 0x3472, 0x3473, 0x3474, 0x3475, 0x3476, 0x3477, 0x3478, 0x3479, 0x347A, 0x347B, 0x347C, 0x347D, 0x347E, 0x347F, 0x3480, 0x3481, 0x3482, 0x3483, 0x3484, 0x3485, 0x3486, 0x3487, 0x3488, 0x3489, 0x348A, 0x348B, 0x348C, 0x348D, 0x348E, 0x348F, 0x3490, 0x3491, 0x3492, 0x3493, 0x3494, 0x3495, 0x3496, 0x3497, 0x3498, 0x3499, 0x349A, 0x349B, 0x349C, 0x349D, 0x349E, 0x349F, 0x34A0, 0x34A1, 0x34A2, 0x34A3, 0x34A4, 0x34A5, 0x34A6, 0x34A7, 0x34A8, 0x34A9, 0x34AA, 0x34AB, 0x34AC, 0x34AD, 0x34AE, 0x34AF, 0x34A6, 0x34B1, 0x34B2, 0x34B3, 0x34B4, 0x34B5, 0x34B6, 0x34B7, 0x34B8, 0x34B9, 0x34BA, 0x34BB, 0x34BD, 0x34BE, 0x34BF, 0x34C0, 0x34C2, 0x34C3, 0x34C4, 0x34C5, 0x34C7, 0x34C8, 0x34C9, 0x34CA;
    list Q5FG;
    getObjectsInRange(Q5FG, there, 0x02);
    obj Q61Z;
    int Q621;
    list Q4PH;
    int Q4PI;
    int i;
    for(i = 0x00; i < numInList(Q5FG); i ++)
    {
      Q61Z = Q5FG[i];
      Q621 = getObjType(Q61Z);
      if(isInList(Q686, Q621))
      {
        Q4Q1 = getResource(Q4PG, Q61Z, "fish", 0x03, 0x02);
        if(Q4PG > 0x00)
        {
          appendToList(Q4PH, Q61Z);
          Q4PI ++;
          if(Q4PI > 0x03)
          {
            break;
          }
        }
      }
      else
      {
        i ++;
        continue;
      }
    }
    debugMessage("fish tiles");
    if(Q4PI > 0x03)
    {
      Q4PJ = random(0x09CC, 0x09CF);
      Q604 = createNoResObjectAt(Q4PJ, getLocation(this));
      for(i = 0x00; i < 0x04; i ++)
      {
        Q61Z = Q4PH[i];
        transferResources(Q604, Q61Z, 0x01, "fish");
      }
      systemMessage(this, "You pull out a nice fish!");
    }
    else
    {
      barkTo(this, this, "The fish don't seem to be biting here.");
    }
  }
  if(Q5YJ == "terrain")
  {
    debugMessage("fishing on terrain");
    obj Q4D6 = getChunkEgg(there);
    string Q5WN = objToStr(Q4D6);
    debugMessage("chunk egg = " + Q5WN);
    Q4Q1 = getResource(Q4PG, Q4D6, "fish", 0x03, 0x02);
    debugMessage("FishAvailable = " + Q4PG);
    if(Q4PG > 0x04)
    {
      Q4PJ = random(0x09CC, 0x09CF);
      Q604 = createNoResObjectAt(Q4PJ, getLocation(this));
      transferResources(Q604, Q4D6, 0x04, "fish");
      systemMessage(this, "You pull out a nice fish!");
    }
    else
    {
      barkTo(this, this, "The fish don't seem to be biting here.");
    }
  }
  cleanup();
  return(0x00);
}

function void cleanup()
{
  if(hasObjVar(this, "pole"))
  {
    removeObjVar(this, "pole");
  }
  if(hasObjVar(this, "targetType"))
  {
    removeObjVar(this, "targetType");
  }
  if(hasObjVar(this, "there"))
  {
    removeObjVar(this, "there");
  }
  if(hasObjVar(this, "splash"))
  {
    removeObjVar(this, "splash");
  }
  if(hasObjVar(this, "rightHand"))
  {
    removeObjVar(this, "rightHand");
  }
  if(hasObjVar(this, "leftHand"))
  {
    removeObjVar(this, "leftHand");
  }
  if(hasObjVar(this, "staff"))
  {
    removeObjVar(this, "staff");
  }
  if(hasObjVar(this, "equipped"))
  {
    removeObjVar(this, "equipped");
  }
  else
  {
    Q5NI();
  }
  if(hasObjVar(this, "poleID"))
  {
    removeObjVar(this, "poleID");
  }
  detachScript(this, "userisfishing");
  return();
}

function void Q5NI()
{
  obj pole = getObjVar(this, "poleID");
  obj container;
  loc location;
  int Q4Q1;
  if(hasObjVar(pole, "container"))
  {
    container = getObjVar(pole, "container");
    Q4Q1 = putObjContainer(pole, container);
  }
  else
  {
    location = getObjVar(pole, "location");
    Q4Q1 = teleport(pole, location);
  }
  return();
}