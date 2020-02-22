#include <sourcemod>

public void OnPluginStart()
{
	RegConsoleCmd("sm_test", Command_Callback, "test command description");
}

public Action Command_Callback(int client, int args)
{
	ReplyToCommand(client, "Test Completed!");
	
	return Plugin_Handled;
}