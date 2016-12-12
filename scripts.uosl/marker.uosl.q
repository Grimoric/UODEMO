// UOSL (native)
inherits globals;

function string Q42N(loc Q4D0, loc Q5K4)
{
  string desc;
  loc Q5M7;
  int Q5NC = getLocalizedDesc(desc, Q5M7, Q4D0, Q5K4);
  if(!Q5NC)
  {
    desc = "an unknown location";
  }
  return(desc);
}

function void Q42Z(obj Q4XN)
{
  string text = "an unmarked recall rune";
  if(hasObjVar(Q4XN, "markLoc"))
  {
    loc Q55G = getObjVar(Q4XN, "markLoc");
    loc Q5AH = getLocation(Q4XN);
    string Q4HI = Q42N(Q55G, Q5AH);
    text = "a recall rune for " + Q4HI;
  }
  setObjVar(Q4XN, "lookAtText", text);
  return();
}

trigger creation
{
  Q42Z(this);
  return(0x01);
}

trigger message("marked")
{
  Q42Z(this);
  return(0x01);
}

function void Q430(obj Q4XN, obj user)
{
  if(!hasObjVar(Q4XN, "markLoc"))
  {
    systemMessage(user, "That rune is not yet marked.");
    return();
  }
  systemMessage(user, "Please enter a description for this marked object:");
  textEntry(Q4XN, user, 0x15, 0x00, "");
  return();
}

trigger textentry(0x15)
{
  if(!hasObjVar(this, "markLoc"))
  {
    systemMessage(sender, "That rune is not yet marked.");
    return(0x00);
  }
  if(button == 0x00)
  {
    systemMessage(sender, "Request cancelled.");
    return(0x00);
  }
  string Q4HJ = "a recall rune for ";
  concat(Q4HJ, text);
  setObjVar(this, "lookAtText", Q4HJ);
  systemMessage(sender, "Rune now described as: " + Q4HJ);
  return(0x00);
}

trigger use
{
  Q430(this, user);
  return(0x00);
}

trigger isstackableon
{
  if((hasObjVar(this, "markLoc")) || (hasObjVar(stackon, "markLoc")))
  {
    return(0x00);
  }
  return(0x01);
}