open WebCryptoAPI
open Prelude

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/encrypt)
*/
@send
external encrypt: (
  subtleCrypto,
  ~algorithm: algorithmIdentifier,
  ~key: cryptoKey,
  ~data: bufferSource,
) => Promise.t<ArrayBuffer.t> = "encrypt"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/decrypt)
*/
@send
external decrypt: (
  subtleCrypto,
  ~algorithm: algorithmIdentifier,
  ~key: cryptoKey,
  ~data: bufferSource,
) => Promise.t<ArrayBuffer.t> = "decrypt"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/sign)
*/
@send
external sign: (
  subtleCrypto,
  ~algorithm: algorithmIdentifier,
  ~key: cryptoKey,
  ~data: bufferSource,
) => Promise.t<any> = "sign"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/verify)
*/
@send
external verify: (
  subtleCrypto,
  ~algorithm: algorithmIdentifier,
  ~key: cryptoKey,
  ~signature: bufferSource,
  ~data: bufferSource,
) => Promise.t<any> = "verify"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/digest)
*/
@send
external digest: (
  subtleCrypto,
  ~algorithm: algorithmIdentifier,
  ~data: bufferSource,
) => Promise.t<any> = "digest"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/generateKey)
*/
@send
external generateKey: (
  subtleCrypto,
  ~algorithm: algorithm,
  ~extractable: bool,
  ~keyUsages: array<keyUsage>,
) => Promise.t<any> = "generateKey"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/generateKey)
*/
@send
external generateKey2: (
  subtleCrypto,
  ~algorithm: string,
  ~extractable: bool,
  ~keyUsages: array<keyUsage>,
) => Promise.t<any> = "generateKey"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/deriveKey)
*/
@send
external deriveKey: (
  subtleCrypto,
  ~algorithm: algorithmIdentifier,
  ~baseKey: cryptoKey,
  ~derivedKeyType: algorithmIdentifier,
  ~extractable: bool,
  ~keyUsages: array<keyUsage>,
) => Promise.t<any> = "deriveKey"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/deriveBits)
*/
@send
external deriveBits: (
  subtleCrypto,
  ~algorithm: algorithm,
  ~baseKey: cryptoKey,
  ~length: int=?,
) => Promise.t<ArrayBuffer.t> = "deriveBits"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/deriveBits)
*/
@send
external deriveBits2: (
  subtleCrypto,
  ~algorithm: string,
  ~baseKey: cryptoKey,
  ~length: int=?,
) => Promise.t<ArrayBuffer.t> = "deriveBits"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/importKey)
*/
@send
external importKey: (
  subtleCrypto,
  ~format: any,
  ~keyData: bufferSource,
  ~algorithm: algorithmIdentifier,
  ~extractable: bool,
  ~keyUsages: array<keyUsage>,
) => Promise.t<cryptoKey> = "importKey"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/exportKey)
*/
@send
external exportKey: (subtleCrypto, ~format: keyFormat, ~key: cryptoKey) => Promise.t<any> =
  "exportKey"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/wrapKey)
*/
@send
external wrapKey: (
  subtleCrypto,
  ~format: keyFormat,
  ~key: cryptoKey,
  ~wrappingKey: cryptoKey,
  ~wrapAlgorithm: algorithm,
) => Promise.t<any> = "wrapKey"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/wrapKey)
*/
@send
external wrapKey2: (
  subtleCrypto,
  ~format: keyFormat,
  ~key: cryptoKey,
  ~wrappingKey: cryptoKey,
  ~wrapAlgorithm: string,
) => Promise.t<any> = "wrapKey"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/unwrapKey)
*/
@send
external unwrapKey: (
  subtleCrypto,
  ~format: keyFormat,
  ~wrappedKey: bufferSource,
  ~unwrappingKey: cryptoKey,
  ~unwrapAlgorithm: algorithmIdentifier,
  ~unwrappedKeyAlgorithm: algorithmIdentifier,
  ~extractable: bool,
  ~keyUsages: array<keyUsage>,
) => Promise.t<cryptoKey> = "unwrapKey"
