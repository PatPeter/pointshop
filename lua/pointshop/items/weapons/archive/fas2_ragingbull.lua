ITEM.Name = 'FAS2 Raging Bull'
ITEM.Price = 5

ITEM.Model = 'models/weapons/w_357.mdl'
ITEM.WeaponClass = 'fas2_ragingbull'
ITEM.SingleUse = true

function ITEM:OnBuy(ply)
	ply:Give(self.WeaponClass)
	ply:SelectWeapon(self.WeaponClass)
end

function ITEM:OnSell(ply)
	ply:StripWeapon(self.WeaponClass)
end