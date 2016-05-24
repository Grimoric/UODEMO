// UOSL (enhanced)
inherits itemmanip;

member int Q4H8;

function string Q4S6(obj item)
{
  int Q4Q1;
  int bar;
  string Q69U;
  int Q4DO;
  int Q52J;
  string Q5NE;
  Q4Q1 = getResource(Q4DO, item, "cloth", 0x03, 0x02);
  bar = getResource(Q52J, item, "leather", 0x03, 0x02);
  if(Q4DO > 0x00)
  {
    Q69U = Q4DO;
    if(Q4DO > 0x01)
    {
      Q5NE = Q69U + " yards of cloth";
    }
    else
    {
      Q5NE = Q69U + " yard of cloth";
    }
    return(Q5NE);
  }
  if(Q52J > 0x00)
  {
    Q69U = Q52J;
    if(Q52J > 0x01)
    {
      Q5NE = Q69U + " yards of leather";
    }
    else
    {
      Q5NE = Q69U + " yard of leather";
    }
    return(Q5NE);
  }
  Q5NE = "useless scraps";
  Q4H8 = 0x01;
  return(Q5NE);
}

function string Q4S5(obj item, int Q5KY)
{
  string Q5NF;
  int Q513 = getObjType(item);
  switch(Q513)
  {
  case 0x0F95:
  case 0x0F96:
  case 0x0F97:
  case 0x0F98:
  case 0x0F99:
  case 0x0F9A:
  case 0x0F9B:
  case 0x0F9C:
    if(Q5KY == 0x01)
    {
      Q5NF = "bolts of cloth";
    }
    else
    {
      Q5NF = "a bolt of cloth";
    }
    break;
  case 0x175D:
  case 0x175E:
  case 0x175F:
  case 0x1760:
  case 0x1761:
  case 0x1762:
  case 0x1763:
  case 0x1764:
    if(Q5KY == 0x01)
    {
      Q5NF = "piles of folded cloth";
    }
    else
    {
      Q5NF = "a pile of folded cloth";
    }
    break;
  case 0x1765:
  case 0x1766:
  case 0x1767:
  case 0x1768:
    if(Q5KY == 0x01)
    {
      Q5NF = "pieces of cloth";
    }
    else
    {
      Q5NF = "a piece of cloth";
    }
    break;
  case 0x1067:
  case 0x1068:
  case 0x1081:
  case 0x1082:
    if(Q5KY == 0x01)
    {
      Q5NF = "pieces of leather";
    }
    else
    {
      Q5NF = "a piece of leather";
    }
    break;
  case 0x1078:
  case 0x1079:
    if(Q5KY == 0x01)
    {
      Q5NF = "piles of hides";
    }
    else
    {
      Q5NF = "a pile of hides";
    }
    break;
  }
  return(Q5NF);
}

trigger lookedat(obj looker)
{
  string Q53V;
  string Q45Z;
  string Q55J;
  Q4H8 = 0x00;
  int Q460 = getQuantity(this);
  string Q461 = Q460;
  Q45Z = Q4S6(this);
  if(Q460 > 0x01)
  {
    Q55J = Q4S5(this, 0x01);
    Q53V = Q461 + " " + Q55J + " (" + Q45Z + ") ";
  }
  else
  {
    Q55J = Q4S5(this, 0x00);
    Q53V = Q55J + " (" + Q45Z + ") ";
  }
  barkTo(this, looker, Q53V);
  if(Q4H8 == 0x01)
  {
    systemMessage(looker, "You throw the useless pieces away.");
    Q4H8 = 0x00;
    deleteObject(this);
  }
  return(0x00);
}