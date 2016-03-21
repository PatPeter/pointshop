ITEM.Name = 'Halo 3 Beam Rifle'
ITEM.Price = 5

ITEM.Model = 'models/h3beamrifle.mdl'
ITEM.WeaponClass = 'h3_beam_rifle_swep'
ITEM.SingleUse = true

function ITEM:OnBuy(ply)
	ply:Give(self.WeaponClass)
	ply:SelectWeapon(self.WeaponClass)
end

function ITEM:OnSell(ply)
	ply:StripWeapon(self.WeaponClass)
end