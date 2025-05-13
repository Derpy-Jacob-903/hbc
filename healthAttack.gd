extends SigilEffect

# c# Version
##int damageout = 0;
##if (base.PlayableCard && base.PlayableCard.Health > 0)
##	{
##		damageout = base.PlayableCard.Health;
##	}
##return new int[]
##	{
##		damageout,	# Damage...
##		0			# and Health
##	};

#Used for sigils that passively define the power of the card they're attached to, such as Ant, Spilled Blood, etc...
#IMPORTANT! Sigils with this effect do not go with normal sigils, they must be put in the 'atkspecial' arguement.
#Note that sigils in 'atkspecial' will be excluded from the normal sigil list(s), meaning none of their other functions will trigger.
func define_power():
	print("we are defining power with this one!!")
	var damageout = 0
	if card and card.health > 0:
		damageout = card.health
		print("Bloon Health:", card.health)
	return damageout

