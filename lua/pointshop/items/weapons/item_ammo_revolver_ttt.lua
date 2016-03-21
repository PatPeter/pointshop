ITEM.Name = ".50 AE Ammo"
ITEM.Price = 1
ITEM.Model = 'models/items/357ammo.mdl'
ITEM.WeaponClass = 'item_ammo_revolver_ttt'
ITEM.SingleUse = true

function ITEM:OnBuy(ply)
	ply:Give(self.WeaponClass)
	ply:SelectWeapon(self.WeaponClass)
end

function ITEM:OnSell(ply)
	ply:StripWeapon(self.WeaponClass)
end