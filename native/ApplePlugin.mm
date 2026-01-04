#include "ApplePlugin.h"

static SpawnItemCallback g_callback = nullptr;

void RegisterSpawnCallback(SpawnItemCallback cb)
{
    g_callback = cb;
}

void RequestSpawn(const char* itemName, int count)
{
    if (!g_callback || !itemName || count <= 0)
        return;

    for (int i = 0; i < count; i++)
    {
        g_callback(itemName);
    }
}
