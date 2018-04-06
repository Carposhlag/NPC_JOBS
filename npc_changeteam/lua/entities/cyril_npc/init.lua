AddCSLuaFile('cl_init.lua')
AddCSLuaFile('shared.lua')

include('shared.lua')

function ENT:Initialize()
    self:SetModel( "models/breen.mdl" )
    self:SetHullType( HULL_HUMAN )
    self:SetHullSizeNormal()
    self:SetNPCState( NPC_STATE_SCRIPT )
    self:SetSolid( SOLID_BBOX )
    self:CapabilitiesAdd( CAP_ANIMATEDFACE || CAP_TURN_HEAD )
    self:SetUseType( SIMPLE_USE )
    self:DropToFloor()
end




-- SKIP --



util.AddNetworkString( "CyrilNPC2" )

function ENT:AcceptInput( Name, _,Caller)
	if Name == "Use" && IsValid( Caller ) && Caller:IsPlayer() then
		net.Start( "CyrilNPC2" )
		net.Send( Caller )
	end
end

net.Receive("CyrilNPC2",function(_,ply )
   ply:changeTeam(TEAM_HOBO) -- EDIT THE JOB HERE


end)



-- SKIP --



util.AddNetworkString( "CyrilNPC3" )

		net.Start( "CyrilNPC3" )

net.Receive("CyrilNPC3",function(_,ply )
   ply:changeTeam(TEAM_MAYOR) -- EDIT THE JOB HERE


end)



-- SKIP --



util.AddNetworkString( "CyrilNPC4" )

		net.Start( "CyrilNPC4" )

net.Receive("CyrilNPC4",function(_,ply )
   ply:changeTeam(TEAM_CITIZEN) -- EDIT THE JOB HERE


end)



-- SKIP --



util.AddNetworkString( "CyrilNPC5" )

		net.Start( "CyrilNPC5" )

net.Receive("CyrilNPC5",function(_,ply )
   ply:changeTeam(TEAM_GANG) -- EDIT THE JOB HERE


end)



-- SKIP --



util.AddNetworkString( "CyrilNPC6" )

		net.Start( "CyrilNPC6" )

net.Receive("CyrilNPC6",function(_,ply )
   ply:changeTeam(TEAM_MOB) -- EDIT THE JOB HERE


end)




-- SKIP --



util.AddNetworkString( "CyrilNPC7" )

		net.Start( "CyrilNPC7" )

net.Receive("CyrilNPC7",function(_,ply )
   ply:changeTeam(TEAM_POLICE) -- EDIT THE JOB HERE


end)



-- SKIP --



util.AddNetworkString( "CyrilNPC8" )

		net.Start( "CyrilNPC8" )

net.Receive("CyrilNPC8",function(_,ply )
   ply:changeTeam(TEAM_CHIEF) -- EDIT THE JOB HERE


end)



-- SKIP --



util.AddNetworkString( "CyrilNPC9" )

		net.Start( "CyrilNPC9" )

net.Receive("CyrilNPC9",function(_,ply )
   ply:changeTeam(TEAM_GUN) -- EDIT THE JOB HERE


end)




   