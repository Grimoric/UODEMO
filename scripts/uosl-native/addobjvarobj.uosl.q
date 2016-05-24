// UOSL (native)
member obj Q5F6;

trigger use
{
  Q5F6 = NULL();
  systemMessage(user, "What would you like to add?");
  targetObj(user, this);
  return(0x00);
}

trigger targetobj
{
  if(usedon == NULL())
  {
    return(0x00);
  }
  if(Q5F6 == NULL())
  {
    Q5F6 = usedon;
    systemMessage(user, "What would you like to add " + getName(usedon) + " to?");
    targetObj(user, this);
  }
  else
  {
    string Q5FA;
    if(hasObjVar(this, "objVarListSetName"))
    {
      Q5FA = getObjVar(this, "objVarListSetName");
      int Q4Q1 = addToObjVarListSet(usedon, Q5FA, Q5F6);
    }
    if(hasObjVar(this, "objVarObjName"))
    {
      Q5FA = getObjVar(this, "objVarObjName");
      setObjVar(usedon, Q5FA, Q5F6);
    }
  }
  return(0x00);
}