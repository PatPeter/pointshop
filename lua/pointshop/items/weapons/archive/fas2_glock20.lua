ITEM.Name = 'FAS2 Glock20'
ITEM.Price = 5

ITEM.Model = 'models/weapons/w_pist_glock18.mdl'
ITEM.WeaponClass = 'fas2_glock20'
ITEM.SingleUse = true

function ITEM:OnBuy(ply)
	ply:Give(self.WeaponClass)
	ply:SelectWeapon(self.WeaponClass)
end

function ITEM:OnSell(ply)
	ply:StripWeapon(self.WeaponClass)
end