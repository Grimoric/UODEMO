// UOSL (enhanced)
inherits cook;

trigger use(obj user)
{
  systemMessage(user, "What should I cook this on?");
  targetObj(user, this);
  return(0x01);
}

trigger targetobj(obj user, obj usedon)
{
  if(usedon == NULL())
  {
    return(0x00);
  }
  list Q5KP;
  if(getResourcesOnObj(usedon, 0x03, Q5KP))
  {
    if(isInList(Q5KP, "fire"))
    {
      bark(this, "You cook the pie.");
      setType(this, 0x1041);
      attachScript(this, "4161");
      string name = getObjVar(this, "lookAtText");
      if(name == "unbaked apple pie")
      {
        name = "baked apple pie";
      }
      if(name == "unbaked peach cobbler")
      {
        name = "baked peach cobbler";
      }
      if(name == "unbaked quiche")
      {
        name = "baked quiche";
      }
      if(name == "unbaked fruit pie")
      {
        name = "baked fruit pie";
      }
      if(name == "unbaked meat pie")
      {
        name = "baked meat pie";
      }
      if(name == "unbaked pumpkin pie")
      {
        name = "baked pumpkin pie";
      }
      removeObjVar(this, "lookAtText");
      setObjVar(this, "lookAtText", name);
      detachScript(this, "4162");
    }
  }
  return(0x01);
}