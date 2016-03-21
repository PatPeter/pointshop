ITEM.Name = "Shotgun ammo"
ITEM.Price = 10
ITEM.Model = 'models/items/boxbuckshot.mdl'
ITEM.WeaponClass = 'item_box_buckshot_ttt'
ITEM.SingleUse = true

function ITEM:OnBuy(ply)
	ply:Give(self.WeaponClass)
	ply:SelectWeapon(self.WeaponClass)
end

function ITEM:OnSell(ply)
	ply:StripWeapon(self.WeaponClass)
end