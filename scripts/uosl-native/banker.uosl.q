// UOSL (native)
inherits human;

trigger message("armageddon")
{
  int Q52T = args[0x00];
  if(Q52T >= 0x02)
  {
    return(0x00);
  }
  return(0x01);
}

trigger creation
{
  loc Q4VS = getLocation(this);
  setObjVar(this, "myJobLocation", Q4VS);
  setLoiterMode(this, 0x01);
  goLoiter(this, Q4VS, 0x03E8);
  return(0x01);
}

trigger time("hour:**")
{
  if(hasObjVar(this, "myJobLocation"))
  {
    loc place = getObjVar(this, "myJobLocation");
    walkTo(this, place, 0x06);
    setLoiterMode(this, 0x01);
    goLoiter(this, place, 0x03E8);
    return(0x01);
  }
  return(0x01);
}

trigger speech("*")
{
  string Q618;
  list Q46S;
  int i;
  int Q4QI = 0x00;
  int withdraw = 0x01;
  int Q690 = 0x00;
  int Q68Z = 0x00;
  int balance = 0x02;
  int Q5GG = 0x03;
  obj Q606;
  string Q58D;
  obj Q5ZW;
  if(speaker == this)
  {
    return(0x00);
  }
  if(isDead(speaker))
  {
    return(0x01);
  }
  if(getDistanceInTiles(getLocation(speaker), getLocation(this)) > 0x08)
  {
    return(0x01);
  }
  split(Q46S, arg);
  for(i = 0x00; i < numInList(Q46S); i ++)
  {
    Q618 = Q46S[i];
    if(Q618 == "withdraw" || (Q618 == "withdrawal"))
    {
      Q4QI = withdraw;
      Q690 = i + 0x01;
    }
    if(Q618 == "balance" || (Q618 == "statement"))
    {
      Q4QI = balance;
    }
    if(Q618 == "bank")
    {
      Q4QI = Q5GG;
    }
  }
  if(!Q4QI)
  {
    return(0x01);
  }
  if(Q690 > (numInList(Q46S) - 0x01))
  {
    return(0x01);
  }
  if(Q4QI == withdraw)
  {
    Q618 = Q46S[Q690];
    Q68Z = Q618;
    if(Q68Z < 0x01)
    {
      bark(this, "Thou must tell me how much thou wishest to withdraw.");
      return(0x00);
    }
    if(Q68Z > amtGoldInBank(speaker))
    {
      bark(this, "Ah, art thou trying to fool me? Thou hast not so much gold!");
      Q68Z = amtGoldInBank(speaker);
    }
    if(Q68Z > 0xEA60)
    {
      bark(this, "Thou canst not withdraw so much at one time!");
      return(0x00);
    }
    if(!withdrawFromBank(speaker, Q68Z))
    {
      bark(this, "Thou dost not have sufficient funds in thy account to withdraw that much.");
      return(0x00);
    }
    Q618 = Q46S[Q690];
    Q58D = "Thou hast withdrawn " + Q618 + " gold from thy account.";
    bark(this, Q58D);
    return(0x00);
  }
  if(Q4QI == balance)
  {
    Q58D = "Thy current bank balance is " + amtGoldInBank(speaker) + " gold.";
    bark(this, Q58D);
    return(0x00);
  }
  if(Q4QI == Q5GG)
  {
    openBank(speaker);
    return(0x00);
  }
  return(0x01);
}

trigger give
{
  string Q58D;
  string Q5ZP;
  int Q4QI = 0x00;
  int Q45Y = 0x00;
  Q4QI = getResource(Q45Y, givenobj, "gold", 0x03, 0x02);
  if(!Q4QI)
  {
    bark(this, "This is not gold!");
    return(0x00);
  }
  Q4QI = getObjType(givenobj);
  if(Q4QI < 0x0EED || (Q4QI > 0x0EEF))
  {
    bark(this, "I only accept gold coins.");
    return(0x00);
  }
  int Q47K = amtGoldInBank(giver);
  Q4QI = depositIntoBank(giver, givenobj, Q45Y);
  if(Q4QI == (0x00 - 0x01))
  {
    Q5ZP = Q45Y;
    Q58D = "Thou hast deposited " + Q5ZP + " gold."
    );
    bark(this, Q58D);
    return(0x00);
  }
  if(Q4QI == 0x01)
  {
  }
  if(Q4QI == 0x02)
  {
  }
  return(0x01);
}