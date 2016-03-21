ITEM.Name = 'FAS2 AK47'
ITEM.Price = 5

ITEM.Model = 'models/weapons/w_ak47.mdl'
ITEM.WeaponClass = 'fas_ak47'
ITEM.SingleUse = true

function ITEM:OnBuy(ply)
	ply:Give(self.WeaponClass)
	ply:SelectWeapon(self.WeaponClass)
end

function ITEM:OnSell(ply)
	ply:StripWeapon(self.WeaponClass)
end