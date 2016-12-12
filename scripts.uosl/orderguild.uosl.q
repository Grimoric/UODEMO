// UOSL (native)
inherits virtueguild;

trigger message("addedToSpecialGuild")
{
  systemMessage(this, "To get your shield, ask any of Lord British's Guards.");
  setObjVar(this"displayGuildAbbr", 0x01);
  return(0x01);
}