#pragma once

#ifdef __cplusplus
extern "C" {
#endif

typedef void (*SpawnItemCallback)(const char* itemName);

void RegisterSpawnCallback(SpawnItemCallback cb);
void RequestSpawn(const char* itemName, int count);

#ifdef __cplusplus
}
#endif
