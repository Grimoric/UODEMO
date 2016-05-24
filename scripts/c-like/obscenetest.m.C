// Real-C
#include "ENGINE.hpp"

TRIGGER( speech , "*" )(obj speaker, string arg)
{
  if(isObscene(arg))
  {
    systemMessage(this, "obscene");
  }
  else
  {
    systemMessage(this, "okay");
  }
  return(0x00);
}