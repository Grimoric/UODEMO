// UOSL (native)
inherits sndfx;

trigger 500 enterrange(0x05)
{
  list Q5JT = "Ho ho ho!", "Happy holidays!", "A merry season to thee!", "Enjoy the holidays!", "Ho ho ho! Happy holidays!", "May thy holidays be joyful!", "Enjoy the season!", "I wish thee the joy of the season!", "I wish thee joy! Ho ho ho!", "Naughty or nice? Hmm.", "Where IS Rudolph? He's never this late.", "Dancer, Prancer, don't wander off.", "If I only had a sleigh...", "I think I'm going to cause a worldwide shortage of coal this year.", "British? Coal or a fruitcake? Hmm.", "Hmm, coal, or a fruitcake for Blackthorn?", "Hmm, I seem to have lost some weight.";
  string Q58D = Q5JT[random(0x00, numInList(Q5JT) - 0x01)];
  faceHere(this, getDirectionInternal(getLocation(this), getLocation(target)));
  animateMobile(this, 0x21, 0x05, 0x01, 0x00, 0x01);
  ebarkTo(this, target, Q58D);
  return(0x01);
}

trigger give
{
  list Q50W;
  int Q45Y;
  int i;
  int Q518;
  int Q4Q1;
  int Q4QI;
  list Q68E;
  list Q68F;
  list Q68L;
  string Q605;
  string Q616;
  string Q60A;
  string Q612;
  string Q60X;
  int Q4Z4;
  Q60X = getName(givenobj);
  if(getResourcesOnObj(givenobj, 0x03, Q50W))
  {
    if(getResourcesOnObj(this, 0x00, Q68E))
    {
      for(i = 0x00; i < numInList(Q68E); i ++)
      {
        for(Q518 = 0x00; Q518 < numInList(Q50W); Q518 ++)
        {
          Q605 = Q68E[i];
          Q612 = Q50W[Q518];
          if(Q605 == Q612)
          {
            Q4Z4 = 0x01;
            Q4QI = 0x01;
            Q60X = getResourceName(Q605, 0x00);
          }
        }
      }
    }
    if(getResourcesOnObj(this, 0x02, Q68F))
    {
      for(i = 0x00; i < numInList(Q68F); i ++)
      {
        for(Q518 = 0x00; Q518 < numInList(Q50W); Q518 ++)
        {
          Q616 = Q68F[i];
          Q612 = Q50W[Q518];
          if(Q616 == Q612)
          {
            setDesireLevel(this, 0x64);
            Q4QI = 0x01;
            Q60X = getResourceName(Q616, 0x02);
          }
        }
      }
    }
    string Q58D;
    Q58D = "Thou art giving me " + Q60X + "?";
    bark(this, Q58D);
    obj Q60Y;
    int Q5ZP;
    int Q4NA;
    if(Q4QI)
    {
      if(getObjType(givenobj) == 0x0EED)
      {
        string Q44P;
        Q4NA = getResource(Q5ZP, givenobj, "gold", 0x03, 0x02);
        if(Q5ZP > 0xFA)
        {
          Q44P = "'Tis a noble gift.";
        }
        else
        {
          Q44P = "Money is always welcome.";
        }
        bark(this, Q44P);
      }
      Q4Q1 = putObjContainer(givenobj, this);
      if(!Q4Q1)
      {
        Q4Q1 = teleport(givenobj, getLocation(this));
        bark(this, "Oops, I dropped it.");
      }
      if(Q4Z4)
      {
        bark(this, "This tasteth good.");
        list Q5TW = 0x3C, 0x3B, 0x3A;
        sfx(getLocation(this), Q5TW[random(0x00, 0x02)], 0x00);
      }
      if(!getCompileFlag(0x01))
      {
        if(getNotorietyLevel(giver) <= 0x01)
        {
          addNotoriety(giver, 0x01);
        }
      }
      else
      {
        changeFame(giver, getValue(givenobj));
        if(getKarmaLevel(giver) < 0x00)
        {
          changeKarma(giver, (0x00 - getValue(givenobj)));
        }
        else
        {
          changeKarma(giver, getValue(givenobj));
        }
      }
      deleteObject(givenobj);
      intRet(0x01);
      return(0x00);
    }
  }
  bark(this, "I am not interested in this.");
  replyTo(this, giver, "@InternalRefuseItem");
  if(giveItem(giver, givenobj) == NULL())
  {
    bark(this, "Thy hands are full, so here 'tis, on the ground.");
    i = teleport(givenobj, getLocation(giver));
  }
  return(0x00);
}

trigger convofunc("GetItem")
{
  string theItemGiven;
  if(hasObjVar(this, "theItemGiven"))
  {
    theItemGiven = getObjVar(this, "theItemGiven");
    removeObjVar(this, "theItemGiven");
  }
  else
  {
    theItemGiven = "item";
  }
  setConvoRet(theItemGiven);
  return(0x00);
}