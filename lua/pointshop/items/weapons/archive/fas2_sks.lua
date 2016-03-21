ITEM.Name = 'FAS2 SKS'
ITEM.Price = 5

ITEM.Model = 'models/weapons/w_snip_awp.mdl'
ITEM.WeaponClass = 'fas2_sks'
ITEM.SingleUse = true

function ITEM:OnBuy(ply)
	ply:Give(self.WeaponClass)
	ply:SelectWeapon(self.WeaponClass)
end

function ITEM:OnSell(ply)
	ply:StripWeapon(self.WeaponClass)
end