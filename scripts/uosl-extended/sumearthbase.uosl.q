// UOSL (enhanced)
inherits spelskil;

function int Q4MI(obj user)
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
    obj Q4NE = createGlobalNPCAt(0x0256, there, 0x00);
    if(Q4NE != NULL())
    {
      doLocAnimation(there, 0x3728, 0x0A, 0x0A, 0x00, 0x00);
      sfx(there, 0x0217, 0x00);
      setType(Q4NE, 0x0E);
      animateMobile(Q4NE, 0x0C, 0x0F, 0x01, 0x00, 0x00);
      attachScript(Q4NE, "destcrea");
      setObjVar(Q4NE, "summonDifficulty", 0x02EE);
      int Q5ND = Q558(Q4NE, user, 0x64, 0x01);
      callback(Q4NE, Q4NC, 0x08);
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