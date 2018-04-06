include('shared.lua')

local blur = Material("pp/blurscreen")
local function DrawBlur(panel, amount)
    local x, y = panel:LocalToScreen(0, 0)
    local scrW, scrH = ScrW(), ScrH()
    surface.SetDrawColor(255, 255, 255)
    surface.SetMaterial(blur)
    for i = 1, 10 do
        blur:SetFloat("$blur", (i / 3) * (amount or 6))
        blur:Recompute()
        render.UpdateScreenEffectTexture()
        surface.DrawTexturedRect(x * -1, y * -1, scrW, scrH)
    end
end

net.Receive("CyrilNPC2",function()
	local Base = vgui.Create( "DFrame" )
    Base:SetSize( 500, 300 )
    Base:Center()
    Base:SetTitle( "Change job here!" )
    Base:SetDraggable( true )
    Base:ShowCloseButton( false )
    Base:MakePopup() 
    Base.Paint = function( self, w, h )
    	DrawBlur(self, 4)
    		draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 80 ) )
    		surface.SetDrawColor(color_white)
    		surface.DrawOutlinedRect(25, 25, 450, 255) 
   
end


-- CLOSE THE MENU --

	local button = vgui.Create("DButton", Base)
    button:SetSize(16,20)
    button:SetPos(478,5)
  	button:SetText("X")
  		function button:DoClick()
  			Base:Remove()
	end 
	button.Paint = function( self, w, h )
		draw.RoundedBox( 0, 0, 0, w, h, Color( 255, 255, 255, 175 ))

	end


-- BUTTON JOB'S --


	local button2 = vgui.Create("DButton", Base)
    button2:SetSize(150,45)
    button2:SetPos(40,220)
  	button2:SetText("I don't want work!")
  		function button2:DoClick()
  			net.Start("CyrilNPC2")
  			net.SendToServer()
      if LocalPlayer():Team() == TEAM_HOBO then
        LocalPlayer():ChatPrint("You have arleady this job!")

      else

        LocalPlayer():ChatPrint("Thank you for use our company.")

      end
	end 
	
	button2.Paint = function( self, w, h )
		draw.RoundedBox( 0, 0, 0, w, h, Color( 255, 255, 255, 175 ))

	end


-- BUTTON JOB'S --


  local button4 = vgui.Create("DButton", Base)
    button4:SetSize(150,45)
    button4:SetPos(40,39)
    button4:SetText("I want be Citizen!")
      function button4:DoClick()
        net.Start("CyrilNPC4")
        net.SendToServer()
      if LocalPlayer():Team() == TEAM_CITIZEN then
        LocalPlayer():ChatPrint("You have arleady this job!")

      else

        LocalPlayer():ChatPrint("Thank you for use our company.")

      end
  end 
  
  button4.Paint = function( self, w, h )
    draw.RoundedBox( 0, 0, 0, w, h, Color( 255, 255, 255, 175 ))

end


-- BUTTON JOB'S --


  local button5 = vgui.Create("DButton", Base)
    button5:SetSize(150,45)
    button5:SetPos(40,102)
    button5:SetText("I want make illegal job's!")
      function button5:DoClick()
        net.Start("CyrilNPC5")
        net.SendToServer()
      if LocalPlayer():Team() == TEAM_GANG then
        LocalPlayer():ChatPrint("You have arleady this job!")

      else

        LocalPlayer():ChatPrint("Thank you for use our company.")

      end
  end 
  
  button5.Paint = function( self, w, h )
    draw.RoundedBox( 0, 0, 0, w, h, Color( 255, 255, 255, 175 ))

end


-- BUTTON JOB'S


  local button6 = vgui.Create("DButton", Base)
    button6:SetSize(150,45)
    button6:SetPos(40,162)
    button6:SetText("I want be a chief of any gang!")
      function button6:DoClick()
        net.Start("CyrilNPC6")
        net.SendToServer()
      if LocalPlayer():Team() == TEAM_MOB then
        LocalPlayer():ChatPrint("You have arleady this job!")

      else

        LocalPlayer():ChatPrint("Thank you for use our company.")

      end
  end 
  
  button6.Paint = function( self, w, h )
    draw.RoundedBox( 0, 0, 0, w, h, Color( 255, 255, 255, 175 ))

end


-- BUTTON JOB'S --


  local button7 = vgui.Create("DButton", Base)
    button7:SetSize(150,45)
    button7:SetPos(310,102)
    button7:SetText("I want protect the city!")
      function button7:DoClick()
        net.Start("CyrilNPC7")
        net.SendToServer()
      if LocalPlayer():Team() == TEAM_POLICE then
        LocalPlayer():ChatPrint("You have arleady this job!")

      else

        LocalPlayer():ChatPrint("Thank you for use our company.")

      end
  end 
  
  button7.Paint = function( self, w, h )
    draw.RoundedBox( 0, 0, 0, w, h, Color( 255, 255, 255, 175 ))

end


-- BUTTON JOB'S --


  local button8 = vgui.Create("DButton", Base)
    button8:SetSize(150,45)
    button8:SetPos(310,162)
    button8:SetText("I want to giver orders!")
      function button8:DoClick()
        net.Start("CyrilNPC8")
        net.SendToServer()
      if LocalPlayer():Team() == TEAM_CHIEF then
        LocalPlayer():ChatPrint("You have arleady this job!")

      else

        LocalPlayer():ChatPrint("Thank you for use our company.")

      end
  end 
  
  button8.Paint = function( self, w, h )
    draw.RoundedBox( 0, 0, 0, w, h, Color( 255, 255, 255, 175 ))

end


-- BUTTON JOB'S --


  local button9 = vgui.Create("DButton", Base)
    button9:SetSize(150,45)
    button9:SetPos(310,220)
    button9:SetText("I want sell weapons!")
      function button8:DoClick()
        net.Start("CyrilNPC9")
        net.SendToServer()
      if LocalPlayer():Team() == TEAM_GUN then
        LocalPlayer():ChatPrint("You have arleady this job!")

      else

        LocalPlayer():ChatPrint("Thank you for use our company.")

      end
  end 
  
  button9.Paint = function( self, w, h )
    draw.RoundedBox( 0, 0, 0, w, h, Color( 255, 255, 255, 175 ))

end


-- BUTTON JOB'S --


	local button3 = vgui.Create("DButton", Base)
    button3:SetSize(150,45)
    button3:SetPos(310,39)
  	button3:SetText("I want be Mayor!")
  		function button3:DoClick()	
        net.Start("CyrilNPC3")
        net.SendToServer()
      if LocalPlayer():Team() == TEAM_MAYOR then
        LocalPlayer():ChatPrint("You have arleady this job!")

      else

        LocalPlayer():ChatPrint("Thank you for use our company.")
 
      end 
end
 
	
	button3.Paint = function( self, w, h )
		draw.RoundedBox( 0, 0, 0, w, h, Color( 255, 255, 255, 175 ))

	end	 
end)