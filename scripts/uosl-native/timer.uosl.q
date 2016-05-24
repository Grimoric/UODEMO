// UOSL (native)
inherits globals;

trigger message("activate")
{
  if(hasObjVar(this, "time1"))
  {
    int time1 = getobjvar_int(this, "time1");
    if(!hasObjVar(this, "running"))
    {
      int Q5I3 = 0x00;
      setObjVar(this, "running", Q5I3);
      if(hasObjVar(this, "count"))
      {
        int count = getobjvar_int(this, "count");
        setObjVar(this, "tempCount", count);
      }
      callback(this, time1, 0x2F);
      return(0x00);
    }
  }
  return(0x00);
}

trigger message("deactivate")
{
  if(hasObjVar(this, "running"))
  {
    removeObjVar(this, "running");
  }
  return(0x00);
}

trigger callback(0x2F)
{
  int time1;
  list args;
  if(hasObjVar(this, "running"))
  {
    int Q5I3 = getobjvar_int(this, "running");
    if(Q5I3 == 0x00)
    {
      processTriggerCmds(this, "a");
      if(hasObjVar(this, "time2"))
      {
        int time2 = getobjvar_int(this, "time2");
        Q5I3 = 0x01;
        setObjVar(this, "running", Q5I3);
        callback(this, time2, 0x2F);
      }
      else
      {
        time1 = getobjvar_int(this, "time1");
        callback(this, time1, 0x2F);
      }
    }
    else
    {
      processTriggerCmds(this, "d");
      time1 = getobjvar_int(this, "time1");
      Q5I3 = 0x00;
      setObjVar(this, "running", Q5I3);
      callback(this, time1, 0x2F);
    }
  }
  if(hasObjVar(this, "tempCount"))
  {
    int tempCount = getobjvar_int(this, "tempCount");
    if(tempCount > 0x01)
    {
      tempCount --;
      setObjVar(this, "tempCount", tempCount);
    }
    else
    {
      removeObjVar(this, "tempCount");
      message(this, "deactivate", args);
    }
  }
  return(0x00);
}

trigger enterrange(0x07)
{
  if(isPlayer(target))
  {
    if(!hasObjVar(this, "noAuto") && !hasObjVar(this, "running"))
    {
      list args;
      message(this, "activate", args);
    }
  }
  return(0x01);
}

trigger leaverange(0x07)
{
  if(!hasObjVar(this, "noAuto") && hasObjVar(this, "running"))
  {
    if(isPlayer(target))
    {
      list Q5J1;
      getPlayersInRange(Q5J1, getLocation(this), 0x06);
      if(numInList(Q5J1) == 0x00)
      {
        list args;
        message(this, "deactivate", args);
      }
    }
  }
  return(0x01);
}

trigger creation
{
  if(!hasObjVar(this, "noAuto") && !hasObjVar(this, "running"))
  {
    list Q5J1;
    getPlayersInRange(Q5J1, getLocation(this), 0x06);
    if(numInList(Q5J1) > 0x00)
    {
      list args;
      message(this, "activate", args);
    }
  }
  return(0x00);
}