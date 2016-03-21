ITEM.Name = 'FAS2 MP5A5'
ITEM.Price = 5

ITEM.Model = 'models/weapons/w_smg_mp5.mdl'
ITEM.WeaponClass = 'fas2_mp5a5'
ITEM.SingleUse = true

function ITEM:OnBuy(ply)
	ply:Give(self.WeaponClass)
	ply:SelectWeapon(self.WeaponClass)
end

function ITEM:OnSell(ply)
	ply:StripWeapon(self.WeaponClass)
end