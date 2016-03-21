ITEM.Name = 'FAS2 M24'
ITEM.Price = 5

ITEM.Model = 'models/weapons/w_snip_awp.mdl'
ITEM.WeaponClass = 'fas2_m24'
ITEM.SingleUse = true

function ITEM:OnBuy(ply)
	ply:Give(self.WeaponClass)
	ply:SelectWeapon(self.WeaponClass)
end

function ITEM:OnSell(ply)
	ply:StripWeapon(self.WeaponClass)
end