#pragma once

#ifdef __cplusplus
extern "C" {
#endif

typedef void (*SpawnItemCallback)(const char* itemName);

// Unity registers callback
void RegisterSpawnCallback(SpawnItemCallback cb);

// Unity calls this to request spawn
void RequestSpawn(const char* itemName, int count);

#ifdef __cplusplus
}
#endif
