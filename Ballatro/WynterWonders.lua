SMODS.Joker{
    key = 'crown',
    loc_txt = {
        name = 'Crown of Lust',
        text = {
            '{X:red,C:white}x#1#{C:red} Mult{}, {C:red}BUT{}',
            '{C:red}lose {C:money}$#2#{} when scored'
        }
    },
    atlas = 'jokers',
    rarity = 3,
    cost = 12,
    unlocked = true,
    discovered = true,
    blueprint_compat = true, 
    eternal_compat = true, 
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = {extra = {
        Xmult = 1.5
    },
    loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xmult,} }
	end,
	calculate = function(self, card, context)
		if context.individual and context.cardarea == G.play then
			if ('crown') < G.card.ability.extra. then
				if context.other_card:is_suit('Hearts') then
					return{
						Xmult_mod = card.ability.extra.Xmult,
						message = 'X' .. card.ability.extra.Xmult,
						colour = G.C.MULT,
					}
				end

			end
		end
	end
}
 }
