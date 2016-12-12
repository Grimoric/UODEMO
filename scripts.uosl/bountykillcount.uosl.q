// UOSL (native)
trigger creation
{
  if(!hasObjVar(this, "killcount"))
  {
    bark(this, "No kills are tallied on this person.");
    detachScript(this, "bountykillcount");
  }
  int x;
  list Q51M;
  getObjListVar(Q51M, this, "killcount");
  x = numInList(Q51M);
  string blah = x;
  bark(this, "There are " + blah + " kills reported on this character.");
  if(hasScript(this, "bountymark"))
  {
    bark(this, "There is a bounty outstanding as well.");
  }
  detachScript(this, "bountykillcount");
  return(0x01);
}