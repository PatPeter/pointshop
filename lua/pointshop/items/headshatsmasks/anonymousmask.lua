ITEM.Name = 'Anonymous Mask'
ITEM.Price = 1000
ITEM.Model = 'models/anonymous_mask/anonymous_mask.mdl'
ITEM.Attachment = 'eyes'
ITEM.AdminOnly = false

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
	model:SetModelScale(1.25, 0)
	pos = pos + (ang:Forward() * 2)
	pos = pos + (ang:Up() * -4)
	ang:RotateAroundAxis(ang:Forward(), -1)
	
	return model, pos, ang
end
