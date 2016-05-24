// UOSL (enhanced)
trigger use(obj user)
{
  list a = this, "wobble", "llama";
  loc b = getLocation(this);
  bark(this, "sending this wobble llama oss list");
  multiMessageToLoc(b, "flop", a);
  return(0x01);
}

trigger message<"flop">(obj sender, list args)
{
  barkint(numInList(args));
  printList(args);
  return(0x01);
}