ITEM.Name = 'Halo 3 Sniper Rifle'
ITEM.Price = 5

ITEM.Model = 'models/sniper.mdl'
ITEM.WeaponClass = 'h3_sr_swep'
ITEM.SingleUse = true

function ITEM:OnBuy(ply)
	ply:Give(self.WeaponClass)
	ply:SelectWeapon(self.WeaponClass)
end

function ITEM:OnSell(ply)
	ply:StripWeapon(self.WeaponClass)
end