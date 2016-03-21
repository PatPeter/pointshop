ITEM.Name = 'FAS2 SG552'
ITEM.Price = 5

ITEM.Model = 'models/weapons/w_rif_ak47.mdl'
ITEM.WeaponClass = 'fas2_sg552'
ITEM.SingleUse = true

function ITEM:OnBuy(ply)
	ply:Give(self.WeaponClass)
	ply:SelectWeapon(self.WeaponClass)
end

function ITEM:OnSell(ply)
	ply:StripWeapon(self.WeaponClass)
end