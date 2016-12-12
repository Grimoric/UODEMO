// UOSL (native)
trigger use
{
  list a = this, "wobble", "llama";
  loc b = getLocation(this);
  bark(this, "sending this wobble llama oss list");
  multiMessageToLoc(b, "flop", a);
  return(0x01);
}

trigger message("flop")
{
  barkint(numInList(args));
  printList(args);
  return(0x01);
}