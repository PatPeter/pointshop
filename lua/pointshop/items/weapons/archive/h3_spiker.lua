ITEM.Name = 'Halo 3 Spiker'
ITEM.Price = 5

ITEM.Model = 'models/spiker.mdl'
ITEM.WeaponClass = 'h3_spiker_swep'
ITEM.SingleUse = true

function ITEM:OnBuy(ply)
	ply:Give(self.WeaponClass)
	ply:SelectWeapon(self.WeaponClass)
end

function ITEM:OnSell(ply)
	ply:StripWeapon(self.WeaponClass)
end