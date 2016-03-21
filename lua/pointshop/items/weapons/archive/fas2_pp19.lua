ITEM.Name = 'FAS2 PP19'
ITEM.Price = 5

ITEM.Model = 'models/weapons/w_smg_biz.mdl'
ITEM.WeaponClass = 'fas2_pp19'
ITEM.SingleUse = true

function ITEM:OnBuy(ply)
	ply:Give(self.WeaponClass)
	ply:SelectWeapon(self.WeaponClass)
end

function ITEM:OnSell(ply)
	ply:StripWeapon(self.WeaponClass)
end