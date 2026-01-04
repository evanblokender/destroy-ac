#include "ApplePlugin.h"

static SpawnItemCallback spawnCallback = nullptr;

void RegisterSpawnCallback(SpawnItemCallback cb)
{
    spawnCallback = cb;
}

void RequestSpawn(const char* itemName, int count)
{
    if (!spawnCallback) return;

    for (int i = 0; i < count; i++)
    {
        spawnCallback(itemName);
    }
}
