ITEM.Name = "SMG ammo"
ITEM.Price = 10
ITEM.Model = 'models/items/boxmrounds.mdl'
ITEM.WeaponClass = 'item_ammo_smg1_ttt'
ITEM.SingleUse = true

function ITEM:OnBuy(ply)
	ply:Give(self.WeaponClass)
	ply:SelectWeapon(self.WeaponClass)
end

function ITEM:OnSell(ply)
	ply:StripWeapon(self.WeaponClass)
end