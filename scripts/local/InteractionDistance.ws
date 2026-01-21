@wrapMethod(CR4Player) function OnSpawned( spawnData : SEntitySpawnData ) {
    interactDist = 4.5;

    return wrappedMethod(spawnData);
}