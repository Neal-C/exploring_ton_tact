import { toNano } from '@ton/core';
import { ExploringTonTact } from '../build/ExploringTonTact/ExploringTonTact_ExploringTonTact';
import { NetworkProvider } from '@ton/blueprint';

export async function run(provider: NetworkProvider) {
    const exploringTonTact = provider.open(await ExploringTonTact.fromInit(BigInt(Math.floor(Math.random() * 10000)), 0n));

    await exploringTonTact.send(
        provider.sender(),
        {
            value: toNano('0.05'),
        },
        null,
    );

    await provider.waitForDeploy(exploringTonTact.address);

    console.log('ID', await exploringTonTact.getId());
}