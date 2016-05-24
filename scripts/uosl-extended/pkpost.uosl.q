// UOSL (enhanced)
function obj Q42G(obj Q47Z)
{
  list Q4E4;
  getContents(Q4E4, Q47Z);
  int Q55T = numInList(Q4E4);
  for(int i = 0x00; i < Q55T; i ++)
  {
    obj item = Q4E4[i];
    if(getObjType(item) == 0x0EB0)
    {
      if(hasObjVar(item, "isPkMsg"))
      {
        return(item);
      }
    }
  }
  return(NULL());
}

trigger pkpost(obj killer, obj killee)
{
  setObjVar(killee, "bountyKiller", killer);
  attachScript(killee, "bounty");
  obj Q47Z = findClosestBBoard(getLocation(this));
  if(Q47Z == NULL())
  {
    return(0x00);
  }
  obj Q58D = Q42G(Q47Z);
  if(Q58D == NULL())
  {
    Q58D = createNoResObjectIn(0x0EB0, Q47Z);
    if(Q58D == NULL())
    {
      return(0x00);
    }
    setObjVar(Q58D, "isPkMsg", 0x04);
  }
  else
  {
    int Q67A = getObjVar(Q58D, "isPkMsg");
    if(Q67A != 0x04)
    {
      removeObjVar(Q58D, "postText");
      removeObjVar(Q58D, "lineTimes");
      setObjVar(Q58D, "isPkMsg", 0x04);
    }
  }
  setPostTime(Q58D);
  list postText;
  list lineTimes;
  if(hasObjListVar(Q58D, "postText"))
  {
    getObjListVar(postText, Q58D, "postText");
  }
  if(hasObjListVar(Q58D, "lineTimes"))
  {
    getObjListVar(lineTimes, Q58D, "lineTimes");
  }
  string Q636;
  if(numInList(postText) == 0x00)
  {
    append(postText, Q636);
  }
  Q636 = "Recent Killings";
  setItem(postText, Q636, 0x00);
  int Q4FP = getTimeSecs();
  while(numInList(lineTimes) >= 0x0F)
  {
    removeItem(lineTimes, 0x01);
    removeItem(postText, 0x01);
    removeItem(postText, 0x01);
    removeItem(postText, 0x01);
    removeItem(postText, 0x01);
  }
  for(int i = 0x00; i < numInList(lineTimes); i ++)
  {
    int Q632 = Q4FP - (lineTimes[i]);
    if(Q632 > 0x0708)
    {
      removeItem(lineTimes, i);
      removeItem(postText, i * 0x04 + 0x01);
      removeItem(postText, i * 0x04 + 0x01);
      removeItem(postText, i * 0x04 + 0x01);
      removeItem(postText, i * 0x04 + 0x01);
      i --;
    }
  }
  append(lineTimes, Q4FP);
  append(postText, getTitledName(killer));
  append(postText, "  killed  ");
  append(postText, getTitledName(killee));
  append(postText, "");
  setObjVar(Q58D, "lineTimes", lineTimes);
  setObjVar(Q58D, "postText", postText);
  return(0x00);
}