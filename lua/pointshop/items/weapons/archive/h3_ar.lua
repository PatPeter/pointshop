ITEM.Name = 'Halo 3 Assault Rifle'
ITEM.Price = 5

ITEM.Model = 'models/ar.mdl'
ITEM.WeaponClass = 'h3_ar_swep'
ITEM.SingleUse = true

function ITEM:OnBuy(ply)
	ply:Give(self.WeaponClass)
	ply:SelectWeapon(self.WeaponClass)
end

function ITEM:OnSell(ply)
	ply:StripWeapon(self.WeaponClass)
end