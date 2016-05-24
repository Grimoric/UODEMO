// UOSL (enhanced)
inherits sk_table;

member int Q5AC;
member int Q5AM;
member int Q5AE;

forward int Q4CB(obj it, list Q514);

function int Q4Z6(obj Q68D)
{
  int Q65M = getObjType(Q68D);
  if(Q65M == 0x0EED)
  {
    return(0x01);
  }
  return(0x00);
}

function int Q4ZY(obj Q68D)
{
  int Q65M = getObjType(Q68D);
  if((Q65M >= 0x0F78) && (Q65M <= 0x0F91))
  {
    return(0x01);
  }
  return(0x00);
}

function int Q4ZE(obj Q68D)
{
  int Q65M = getObjType(Q68D);
  if((Q65M >= 0x1BE3) && (Q65M <= 0x1BFA))
  {
    return(0x01);
  }
  return(0x00);
}

function int Q4CA(obj Q68D)
{
  if(Q4ZY(Q68D))
  {
    Q5AM = Q5AM + getQuantity(Q68D);
    if(Q5AM > 0x00013880)
    {
      return(0x01);
    }
  }
  if(Q4Z6(Q68D))
  {
    Q5AC = Q5AC + getQuantity(Q68D);
    if(Q5AC > 0x00061A80)
    {
      return(0x01);
    }
  }
  if(Q4ZE(Q68D))
  {
    Q5AE = Q5AE + getQuantity(Q68D);
    if(Q5AE > 0x2710)
    {
      return(0x01);
    }
  }
  if(isContainer(Q68D))
  {
    list Q4E4;
    getContents(Q4E4, Q68D);
    if(Q4CB(Q68D, Q4E4))
    {
      return(0x01);
    }
  }
  return(0x00);
}

function int Q4CB(obj it, list Q514)
{
  obj Q68D;
  int num = numInList(Q514);
  for(int i = 0x00; i < num; i ++)
  {
    Q68D = Q514[i];
    if(Q4CA(Q68D))
    {
      return(0x01);
    }
  }
  return(0x00);
}

function int Q4BM(obj it)
{
  if(isMobile(it))
  {
    list Q4O4;
    getEquipment(Q4O4, it);
    obj bank = getItemAtSlot(it, 0x1D);
    if(bank != NULL())
    {
      appendToList(Q4O4, bank);
    }
    if(Q4CB(it, Q4O4))
    {
      return(0x01);
    }
  }
  if(isContainer(it))
  {
    list Q4E4;
    getContents(Q4E4, it);
    if(Q4CB(it, Q4E4))
    {
      return(0x01);
    }
  }
  if(!isMobile(it))
  {
    if(Q4CA(it))
    {
      return(0x01);
    }
  }
  return(0x00);
}

function int Q4CS(obj Q68S)
{
  int s = getRealStrength(Q68S);
  int d = getRealDexterity(Q68S);
  int i = getRealIntelligence(Q68S);
  int Q5W7 = abs(s) + abs(d) + abs(i);
  int Q5TT = abs(getStatMod(Q68S, 0x00));
  int Q4IR = abs(getStatMod(Q68S, 0x01));
  int Q4XV = abs(getStatMod(Q68S, 0x02));
  int Q5W6 = Q5TT + Q4IR + Q4XV;
  if((s < 0x00) || (d < 0x00) || (i < 0x00) || (s > 0x69) || (d > 0x69) || (i > 0x69) || (Q5W7 > 0xEB))
  {
    return(0x01);
  }
  if((Q5TT > 0x0F) || (Q4IR > 0x0F) || (Q4XV > 0x0F) || (Q5W6 > 0x28))
  {
    return(0x01);
  }
  int Q63R = 0x00;
  int Q63W = 0x00;
  for(int Q525 = 0x00; Q525 < 0x2E; Q525 ++)
  {
    int Q4FC = getSkillLevelNoStatNoMod(Q68S, Q525);
    int Q44X = abs(Q4FC);
    int Q4G1 = getSkillMod(Q68S, Q525);
    int Q44Y = abs(Q4G1);
    if((Q4FC < 0x00) || (Q4FC > 0x041A) || (Q44Y > 0x012C))
    {
      return(0x01);
    }
    Q63R = Q63R + Q44X;
    Q63W = Q63W + Q44Y;
  }
  if((Q63R > 0x1BBC) || (Q63W > 0x01F4))
  {
    return(0x01);
  }
  return(0x00);
}

trigger creation()
{
  if((!isEditing(this)) && (!hasObjVar(this, "checked")))
  {
    string Q56O;
    int Q4QI;
    if(Q4BM(this))
    {
      Q4QI = 0x01;
      Q56O = "autocheck: possible duper";
    }
    if(Q4QI)
    {
      if(getGMCallStatus())
      {
        addHelpRequestToQueue(this, 0x01, 0x00, Q56O);
      }
      else
      {
        int Q450 = getAccountNum(this);
        int Q4B9 = getCharacterNum(this);
        string name = getName(this);
        logEntry(Q450, Q4B9, this, name, "cheating", "cheater", Q56O);
      }
    }
  }
  detachScript(this, "duperfind");
  return(0x01);
}