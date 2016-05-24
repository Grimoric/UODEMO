// UOSL (enhanced)
inherits housestuff;

function void Q5T6(obj Q4XN)
{
  if(hasScript(Q4XN, "locked"))
  {
    detachScript(Q4XN, "locked");
  }
  if(hasObjVar(Q4XN, "isLocked"))
  {
    removeObjVar(Q4XN, "isLocked");
  }
  if(hasObjVar(Q4XN, "lockLevel"))
  {
    removeObjVar(Q4XN, "lockLevel");
  }
  return;
}

trigger creation()
{
  Q5T6(this);
  obj Q5AK = getMultiSlaveId(this);
  setObjVar(Q5AK, "myhousesign", this);
  return(0x01);
}

trigger objectloaded()
{
  Q5T6(this);
  return(0x01);
}

trigger use(obj user)
{
  obj Q5AK = getMultiSlaveId(this);
  if(Q4X6(Q5AK, user) || isEditing(user))
  {
    systemMessage(user, "What dost thou wish the sign to say?");
    textEntry(this, user, 0x17, 0x00, "");
  }
  return(0x00);
}

trigger textentry<0x17>(obj sender, int button, string text)
{
  if(button == 0x00)
  {
    return(0x00);
  }
  obj Q5AK = getMultiSlaveId(this);
  if(Q4X6(Q5AK, sender) || isEditing(sender))
  {
    if(text == "")
    {
      if(Q58R(Q5AK))
      {
        Q58U(Q5AK);
        barkTo(this, sender, "I now say nothing.");
      }
    }
    else
    {
      string Q5N7 = "I now say ";
      concat(Q5N7, text);
      concat(Q5N7, ".");
      barkTo(this, sender, Q5N7);
      Q58V(Q5AK, text);
    }
  }
  return(0x00);
}

trigger lookedat(obj looker)
{
  obj Q5AK = getMultiSlaveId(this);
  if(Q58R(Q5AK))
  {
    barkTo(this, looker, Q58N(Q5AK));
    Q58J(this, looker, "house");
    return(0x00);
  }
  Q58J(this, looker, "house");
  return(0x01);
}