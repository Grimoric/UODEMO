// UOSL (native)
inherits globals;

trigger use
{
  targetObj(user, this);
  return(0x00);
}

function void Q47U(obj Q4XN, int Q65M)
{
  list Q5N0;
  int Q63R;
  int count;
  string Q5WG;
  string Q5WH;
  string Q5WI;
  string Q5WJ;
  string Q5WK;
  int Q5MV;
  string Q56O = "Type ";
  string Q65S = Q65M;
  Q56O = Q56O + Q65S;
  Q56O = Q56O + ":";
  bark(Q4XN, Q56O);
  int Q5NL = getResourcesOnObj(Q4XN, Q65M, Q5N0);
  if(Q5NL == 0x00)
  {
    bark(Q4XN, "error");
    return();
  }
  Q63R = numInList(Q5N0);
  for(count = 0x00; count < Q63R; count ++)
  {
    Q5WG = Q5N0[count];
    Q5NL = getResource(Q5MV, Q4XN, Q5WG, Q65M, 0x00);
    if(Q5NL == 0x00)
    {
      Q5WH = "error";
    }
    else
    {
      Q5WH = Q5MV;
    }
    Q5NL = getResource(Q5MV, Q4XN, Q5WG, Q65M, 0x01);
    if(Q5NL == 0x00)
    {
      Q5WI = "error";
    }
    else
    {
      Q5WI = Q5MV;
    }
    Q5NL = getResource(Q5MV, Q4XN, Q5WG, Q65M, 0x02);
    if(Q5NL == 0x00)
    {
      Q5WJ = "error";
    }
    else
    {
      Q5WJ = Q5MV;
    }
    Q5NL = getResource(Q5MV, Q4XN, Q5WG, Q65M, 0x03);
    if(Q5NL == 0x00)
    {
      Q5WK = "error";
    }
    else
    {
      Q5WK = Q5MV;
    }
    Q56O = Q5WG;
    Q56O = Q56O + " ";
    Q56O = Q56O + Q5WH;
    Q56O = Q56O + " ";
    Q56O = Q56O + Q5WI;
    Q56O = Q56O + " ";
    Q56O = Q56O + Q5WJ;
    Q56O = Q56O + " ";
    Q56O = Q56O + Q5WK;
    bark(Q4XN, Q56O);
  }
  return();
}

trigger targetobj
{
  Q47U(usedon, 0x00);
  Q47U(usedon, 0x01);
  Q47U(usedon, 0x02);
  Q47U(usedon, 0x03);
  return(0x00);
}