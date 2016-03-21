ITEM.Name = 'SG552'
ITEM.Price = 5

ITEM.Model = 'models/weapons/w_rif_sg552.mdl'
ITEM.WeaponClass = 'weapon_ttt_sg552'
ITEM.SingleUse = true

function ITEM:OnBuy(ply)
	ply:Give(self.WeaponClass)
	ply:SelectWeapon(self.WeaponClass)
end

function ITEM:OnSell(ply)
	ply:StripWeapon(self.WeaponClass)
end