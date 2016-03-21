ITEM.Name = 'Rifle'
ITEM.Price = 5

ITEM.Model = 'models/weapons/w_snip_scout.mdl'
ITEM.WeaponClass = 'weapon_zm_rifle'
ITEM.SingleUse = true

function ITEM:OnBuy(ply)
	local w = weapons.Get(self.WeaponClass)
	
	for k, v in pairs(ply:GetWeapons()) do
		if not w.Slot or not v.Slot then
			continue
		end
		
		if w.Slot == v.Slot then
			ply:DropWeapon( v )
		end
	end

	ply:Give(self.WeaponClass)
	ply:SelectWeapon(self.WeaponClass)
end

function ITEM:OnSell(ply)
	ply:StripWeapon(self.WeaponClass)
end