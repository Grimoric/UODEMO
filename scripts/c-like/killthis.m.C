// Real-C
#include "ENGINE.hpp"

TRIGGER( use )(obj user)
{
  bark(this, "who do I kill???");
  targetObj(user, this);
  return(0x00);
}

TRIGGER( targetobj )(obj user, obj usedon)
{
  attack(this, usedon);
  attack(usedon, this);
  bark(this, "Attack!");
  bark(usedon, "Hurrah! Let's kill!");
  return(0x00);
}