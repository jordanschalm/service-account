# Set Deployment Allow List
> November 16th, 2021

## New addition to the Deployment Allow List

`0xd796ff17107bbff6` - Versus
`0x329feb3ab062d289` - GigLabs
`0xdc53ab155826d528` - Blocto

## Dapper Labs Builds

```sh
flow transactions build ./templates/set_deployment_allow_list.cdc \
  --network mainnet \
  --args-json "$(cat "./transactions/deployment-allow-list/nov-16/arguments.json")" \
  --proposer 0xe467b9dd11fa00df \
  --proposer-key-index 11 \
  --authorizer 0xe467b9dd11fa00df \
  --payer 0xe467b9dd11fa00df \
  --gas-limit 500000 \
  -x payload \
  --save ./transactions/deployment-allow-list/nov-16/deployment-allow-list-nov-16-unsigned.rlp
```

## Equilibrium Signs

```sh
flow transactions sign ./transactions/deployment-allow-list/nov-16/deployment-allow-list-nov-16-unsigned.rlp \
  --signer equilibrium \
  --filter payload \
  --save ./transactions/deployment-allow-list/nov-16/deployment-allow-list-nov-16-sig-1.rlp
```

## Ichi Signs

```sh
flow transactions sign ./transactions/deployment-allow-list/nov-16/deployment-allow-list-nov-16-sig-1.rlp \
  --signer ichi \
  --filter payload \
  --save ./transactions/deployment-allow-list/nov-16/deployment-allow-list-nov-16-sig-2.rlp
```

## Layne Signs

```sh
flow transactions sign ./transactions/deployment-allow-list/nov-16/deployment-allow-list-nov-16-sig-2.rlp \
  --signer layne \
  --filter payload \
  --save ./transactions/deployment-allow-list/nov-16/deployment-allow-list-nov-16-sig-3.rlp
```

## Kan Signs

```sh
flow transactions sign ./transactions/deployment-allow-list/nov-16/deployment-allow-list-nov-16-sig-3.rlp \
  --signer kan \
  --filter payload \
  --save ./transactions/deployment-allow-list/nov-16/deployment-allow-list-nov-16-sig-complete.rlp
```


## Somebody Submits

```sh
flow transactions send-signed --network mainnet ./transactions/deployment-allow-list/nov-16/deployment-allow-list-nov-16-sig-complete.rlp
```

## Results

https://flowscan.org/transaction/
