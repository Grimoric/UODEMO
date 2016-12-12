// UOSL (native)
inherits sndfx;

function obj Q55L(obj guard, obj killer)
{
  obj Q58D;
  obj Q4QI;
  obj Q47Z = findClosestBBoard(getLocation(guard));
  list Q4E4;
  int Q55K = 0x00;
  int blah;
  string Q4GQ;
  int Q463;
  getContents(Q4E4, Q47Z);
  int Q55T = numInList(Q4E4);
  for(int i = 0x00; i < Q55T; i ++)
  {
    Q58D = Q4E4[i];
    if(getObjType(Q58D) == 0x0EB0)
    {
      if(0x00)
      {
        blah = getResource(Q463, Q58D, "gold", 0x03, 0x02);
        Q4GQ = Q463;
        bark(guard, "Message has " + Q4GQ + " gold reward.");
      }
      if(hasObjVar(Q58D, "killer"))
      {
        Q4QI = getObjVar(Q58D, "killer");
        if(killer == Q4QI)
        {
          if(0x00)
          {
            bark(guard, "Posting for " + getName(killer) + " found!");
            blah = getResource(Q463, Q58D, "gold", 0x03, 0x02);
            Q4GQ = Q463;
            bark(guard, "Message has " + Q4GQ + " gold reward.");
          }
          return(Q58D);
        }
      }
    }
  }
  return(NULL());
}

trigger give
{
  if(getObjType(givenobj) != 0x1DA0)
  {
    return(0x01);
  }
  if(!hasObjVar(givenobj, "bountyObjID"))
  {
    bark(this, "'Tis a decapitated head. How disgusting.");
    return(0x00);
  }
  if(!hasObjVar(givenobj, "bountyClaimant"))
  {
    bark(this, "'Tis a decapitated head. How disgusting.");
    return(0x00);
  }
  obj killer = getObjVar(givenobj, "bountyObjID");
  obj Q4DA = getObjVar(givenobj, "bountyClaimant");
  obj Q58D = Q55L(this, killer);
  if(Q58D == NULL())
  {
    bark(this, "There is indeed a price on this head, but not here. Travel on, my friend, to a precinct of the guards that will pay thee.");
    return(0x00);
  }
  if(getNotorietyLevel(giver) < 0x01)
  {
    bark(this, "We only accept bounty hunting from honorable folk! Away with thee!");
    return(0x00);
  }
  if(giver != Q4DA)
  {
    bark(this, "I had heard that this scum was taken care of. But thou didst not do the deed, and thus shall not get the reward!");
    deleteObject(Q58D);
    return(0x00);
  }
  deleteObject(givenobj);
  int Q463;
  string Q4GQ;
  int blah = getResource(Q463, Q58D, "gold", 0x03, 0x02);
  Q4GQ = Q463;
  obj reward = createNoResObjectAt(0x0EED, getLocation(giver));
  transferResources(reward, Q58D, Q463, "gold");
  if(giveItem(giver, reward) == NULL())
  {
    int Q4TR = teleport(reward, getLocation(giver));
  }
  string Q65L = "The reward is " + Q463 + " gold pieces. Here you go!"
  );
  bark(this, Q65L);
  deleteObject(Q58D);
  sfx(getLocation(giver), 0x35, 0x00);
  return(0x00);
}