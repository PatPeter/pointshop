ITEM.Name = 'Halo 3 Submachine Gun'
ITEM.Price = 5

ITEM.Model = 'models/smg.mdl'
ITEM.WeaponClass = 'h3_smg_swep'
ITEM.SingleUse = true

function ITEM:OnBuy(ply)
	ply:Give(self.WeaponClass)
	ply:SelectWeapon(self.WeaponClass)
end

function ITEM:OnSell(ply)
	ply:StripWeapon(self.WeaponClass)
end