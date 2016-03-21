ITEM.Name = 'AWP'
ITEM.Price = 5

ITEM.Model = 'models/weapons/w_snip_awp.mdl'
ITEM.WeaponClass = 'weapon_ttt_awp'
ITEM.SingleUse = true

function ITEM:OnBuy(ply)
	ply:Give(self.WeaponClass)
	ply:SelectWeapon(self.WeaponClass)
end

function ITEM:OnSell(ply)
	ply:StripWeapon(self.WeaponClass)
end