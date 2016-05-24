// UOSL (enhanced)
inherits globals;

trigger enterrange<0x00>(obj target)
{
  if(isPlayer(target))
  {
    checkTransferAccount(this, target);
  }
  return(0x01);
}

trigger transaccountcheck(obj target, int transok)
{
  string s;
  list Q5R7;
  list selectList;
  int Q55T;
  int i;
  int Q518;
  if(transok)
  {
    if(hasObjVar(this, "servers"))
    {
      s = getObjVar(this, "servers");
      splitCommaDelimitedString(Q5R7, s);
      Q55T = numInList(Q5R7) - 0x01;
      if(Q55T > 0x00)
      {
        i = 0x00;
        Q518 = 0x00;
        while(i < Q55T)
        {
          appendToList(selectList, Q518);
          s = Q5R7[i];
          appendToList(selectList, s);
          Q518 ++;
          i = i + 0x02;
        }
        appendToList(selectList, Q518);
        appendToList(selectList, "Don't transfer characters.");
        selectType(target, this, 0x31, "Select a world to which to transfer your characters.", selectList);
        return(0x01);
      }
    }
    systemMessage(target, "This gate is messed up.");
  }
  else
  {
    systemMessage(target, "You have already transferred your characters to another world.  This can only be done once.");
  }
  return(0x01);
}

trigger typeselected<0x31>(obj user, int listindex, int objtype, int objhue)
{
  string s;
  list Q5R7;
  if(hasObjVar(this, "servers"))
  {
    s = getObjVar(this, "servers");
    splitCommaDelimitedString(Q5R7, s);
    if((listindex > 0x00) && (listindex <= (numInList(Q5R7) / 0x02)))
    {
      transferPlayer(this, user, Q5R7[(listindex - 0x01) * 0x02 + 0x01]);
    }
    else
    {
      systemMessage(user, "Characters not transferred.");
    }
  }
  else
  {
    systemMessage(user, "This gate is messed up.");
  }
  return(0x01);
}

trigger transresponse(obj target, int transok)
{
  if(transok)
  {
    systemMessage(target, "Characters transferred.");
  }
  else
  {
    systemMessage(target, "Character transfer failed.");
  }
  return(0x01);
}