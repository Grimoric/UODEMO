// UOSL (native)
inherits globals;

trigger creation
{
  member obj enticer = getObjVar(this, "enticer");
  removeObjVar(this, "enticer");
  member obj enticed = getObjVar(this, "enticed");
  removeObjVar(this, "enticed");
  return(0x00);
}

trigger pathnotfound(0x01)
{
  if(isHuman(this))
  {
    bark(enticed, "Hmm, I can't find that lovely music...");
  }
  barkTo(enticer, enticer, "They seem unable to reach you.");
  return(0x00);
}

trigger pathfound(0x01)
{
  if(isHuman(this))
  {
    bark(enticed, "It was you playing that lovely music!");
  }
  detachScript(enticed, "enticepathfind");
  return(0x00);
}