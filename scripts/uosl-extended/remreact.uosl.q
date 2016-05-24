// UOSL (enhanced)
inherits spelskil;

trigger callback<0x2F>()
{
  if(hasScript(this, "reaction"))
  {
    detachScript(this, "reaction");
  }
  else
  {
    debugMessage("ERROR - reactive armor remover: reaction already deleted.");
  }
  detachScript(this, "remreact");
  return(0x00);
}