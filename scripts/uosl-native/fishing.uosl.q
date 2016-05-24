// UOSL (native)
inherits sndfx;

member list Q686;

trigger use
{
  if(isDead(user))
  {
    return(0x00);
  }
  if(getItemAtSlot(user, 0x19) != NULL())
  {
    bark(this, "You can't fish while riding!");
    return(0x00);
  }
  if(hasScript(user, "userisfishing"))
  {
    systemMessage(user, "You are already fishing.");
    return(0x00);
  }
  Q686 = 0x1796, 0x1797, 0x1798, 0x1799, 0x179A, 0x179B, 0x179C, 0x179D, 0x179E, 0x179F, 0x17A0, 0x17A1, 0x17A2, 0x17A3, 0x17A4, 0x17A5, 0x17A6, 0x17A7, 0x17A8, 0x17A9, 0x17AA, 0x17AB, 0x17AC, 0x17AD, 0x346E, 0x346F, 0x3470, 0x3471, 0x3472, 0x3473, 0x3474, 0x3475, 0x3476, 0x3477, 0x3478, 0x3479, 0x347A, 0x347B, 0x347C, 0x347D, 0x347E, 0x347F, 0x3480, 0x3481, 0x3482, 0x3483, 0x3484, 0x3485, 0x3486, 0x3487, 0x3488, 0x3489, 0x348A, 0x348B, 0x348C, 0x348D, 0x348E, 0x348F, 0x3490, 0x3491, 0x3492, 0x3493, 0x3494, 0x3495, 0x3496, 0x3497, 0x3498, 0x3499, 0x349A, 0x349B, 0x349C, 0x349D, 0x349E, 0x349F, 0x34A0, 0x34A1, 0x34A2, 0x34A3, 0x34A4, 0x34A5, 0x34A6, 0x34A7, 0x34A8, 0x34A9, 0x34AA, 0x34AB, 0x34AC, 0x34AD, 0x34AE, 0x34AF, 0x34A6, 0x34B1, 0x34B2, 0x34B3, 0x34B4, 0x34B5, 0x34B6, 0x34B7, 0x34B8, 0x34B9, 0x34BA, 0x34BB, 0x34BD, 0x34BE, 0x34BF, 0x34C0, 0x34C2, 0x34C3, 0x34C4, 0x34C5, 0x34C7, 0x34C8, 0x34C9, 0x34CA;
  systemMessage(user, "What water do you want to fish in?");
  targetLoc(user, this);
  return(0x00);
}

trigger targetobj
{
  if(usedon == NULL())
  {
    return(0x00);
  }
  loc Q4VS = getLocation(user);
  loc there = getLocation(usedon);
  if(getDistanceInTiles(Q4VS, there) > 0x04)
  {
    systemMessage(user, "You need to be closer to the water to fish!");
    return(0x00);
  }
  list Q5W2;
  getStaticObjectsAt(Q5W2, getLocation(usedon));
  if(numInList(Q5W2) > 0x01)
  {
    systemMessage(user, "You can't reach the water there.");
    return(0x00);
  }
  int t = getObjType(usedon);
  int Q4QI = 0x00;
  if(isInList(Q686, t))
  {
    Q4QI = 0x01;
  }
  if(!Q4QI)
  {
    systemMessage(user, "You need water to fish in!");
    return(0x00);
  }
  setObjVar(user, "targetType", "object");
  setObjVar(user, "poleID", this);
  attachScript(user, "userisfishing");
  list args = this, there;
  debugMessage("sending message");
  message(user, "fish", args);
  return(0x00);
}

trigger targetloc
{
  if(!isInMap(place))
  {
    return(0x00);
  }
  loc Q4VS = getLocation(user);
  loc there = place;
  if(getDistanceInTiles(Q4VS, there) > 0x04)
  {
    systemMessage(user, "You need to be closer to the water to fish!");
    return(0x00);
  }
  list Q5W2;
  int t;
  int Q4QI = 0x00;
  getStaticObjectsAt(Q5W2, place);
  if(numInList(Q5W2) > 0x01)
  {
    systemMessage(user, "You can't reach the water there.");
    return(0x00);
  }
  for(int i = 0x00; i < numInList(Q5W2); i ++)
  {
    t = Q5W2[i];
    if(isInList(Q686, t))
    {
      Q4QI = 0x01;
    }
  }
  if(!Q4QI)
  {
    t = getTileAt(place);
    if((t > 0xA7) && (t < 0xAC))
    {
      Q4QI = 0x01;
    }
  }
  if(!Q4QI)
  {
    systemMessage(user, "You need water to fish in!");
    return(0x00);
  }
  setObjVar(user, "targetType", "terrain");
  setObjVar(user, "poleID", this);
  attachScript(user, "userisfishing");
  list args = this, there;
  message(user, "fish", args);
  return(0x01);
}

trigger wasdropped
{
  if(hasObjVar(this, "container"))
  {
    removeObjVar(this, "container");
  }
  if(hasObjVar(this, "location"))
  {
    removeObjVar(this, "location");
  }
  return(0x01);
}