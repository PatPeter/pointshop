ITEM.Name = "Asault rifle/pistol ammo"
ITEM.Price = 10
ITEM.Model = 'models/items/boxsrounds.mdl'
ITEM.WeaponClass = 'item_ammo_pistol_ttt'
ITEM.SingleUse = true

function ITEM:OnBuy(ply)
	ply:Give(self.WeaponClass)
	ply:SelectWeapon(self.WeaponClass)
end

function ITEM:OnSell(ply)
	ply:StripWeapon(self.WeaponClass)
end