function startAnimation(main, anime, field)
   main = Entity.wrapp(main)

   main[field] = {}
   local cur_anim = main[field]
   cur_anim.animation_frame = 0
   cur_anim.func = anime
   doAnimation(main, field)
   return cur_anim
end

function doAnimation(main, field)
   local cur_anim = main[field]

   if cur_anim then
      cur_anim.func(main:cent(), cur_anim:cent())
      if main[field] then
	 cur_anim.animation_frame = cur_anim.animation_frame + 1
      end
      return true
   end
   return false
end

function endAnimation(main, field)
   main[field] = nil
end
