ITEM.Name = 'MP7'
ITEM.Price = 5

ITEM.Model = 'models/weapons/w_mp7_silenced.mdl'
ITEM.WeaponClass = 'weapon_ttt_mp7'
ITEM.SingleUse = true

function ITEM:OnBuy(ply)
	ply:Give(self.WeaponClass)
	ply:SelectWeapon(self.WeaponClass)
end

function ITEM:OnSell(ply)
	ply:StripWeapon(self.WeaponClass)
end