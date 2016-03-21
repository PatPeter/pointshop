ITEM.Name = 'FAS2 M3S90'
ITEM.Price = 5

ITEM.Model = 'models/weapons/w_shot_m3super90.mdl'
ITEM.WeaponClass = 'fas2_m3s90'
ITEM.SingleUse = true

function ITEM:OnBuy(ply)
	ply:Give(self.WeaponClass)
	ply:SelectWeapon(self.WeaponClass)
end

function ITEM:OnSell(ply)
	ply:StripWeapon(self.WeaponClass)
end