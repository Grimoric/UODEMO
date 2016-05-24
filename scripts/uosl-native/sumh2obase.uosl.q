// UOSL (native)
inherits spelskil;

function int Q4MK(obj user)
{
  int Q5NC = 0x00;
  int Q4NC;
  loc Q4VS = getLocation(user);
  loc there = Q5I9(user);
  if(!isInMap(there))
  {
    Q4RD(user);
    systemMessage(user, "There is no room to summon that here.");
  }
  else
  {
    faceHere(user, getDirectionInternal(Q4VS, there));
    list Q5FG;
    getObjectsAt(Q5FG, there);
    if(hasObjVar(this, "magicItemModifier"))
    {
      int Q52W = getObjVar(this, "magicItemModifier");
      Q4NC = 0x06 * Q52W;
    }
    else
    {
      if(getSkillLevel(user, 0x19) < 0x0A)
      {
        Q4NC = 0x14;
      }
      else
      {
        Q4NC = 0x14 * getSkillLevel(user, 0x19) / 0x05;
      }
    }
    obj water = createGlobalNPCAt(0x0257, there, 0x00);
    if(water != NULL())
    {
      doLocAnimation(there, 0x3728, 0x0A, 0x0A, 0x00, 0x00);
      sfx(there, 0x0217, 0x00);
      setType(water, 0x10);
      animateMobile(water, 0x0C, 0x0F, 0x01, 0x00, 0x00);
      attachScript(water, "destcrea");
      setObjVar(water, "summonDifficulty", 0x02EE);
      int Q5ND = Q558(water, user, 0x64, 0x01);
      callback(water, Q4NC, 0x08);
      Q5NC = 0x01;
    }
    else
    {
      bark(user, "Whoops...something got in the way.");
    }
  }
  Q5UQ(this);
  return(Q5NC);
}