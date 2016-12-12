// UOSL (native)
inherits quest_general_funcs;

trigger creation
{
  if(!hasObjVar(this, "questDeliverObjectRec"))
  {
    debugMessage("Attempted to attach deliver quest without telling the destination mobile the object wanted.");
    detachScript(this, "quest_deliver_dest");
    return(0x01);
  }
  member obj Q59U = getObjVar(this, "questDeliverObjectRec");
  return(0x01);
}

trigger give
{
  int Q4QI = 0x00;
  if(Q59U != NULL())
  {
    if(givenobj == Q59U)
    {
      Q4QI = 0x01;
    }
  }
  if(!Q4QI)
  {
    return(0x01);
  }
  Q4MC(this, giver, 0x01);
  deleteObject(givenobj);
  removeObjVar(this, "isActor");
  removeObjVar(this, "questDeliverObjectRec");
  detachScript(this, "quest_deliver_dest");
  return(0x00);
}