open FetchAPI
open ServiceWorkerAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CacheStorage/match)
*/
@send
external match: (
  cacheStorage,
  ~request: request,
  ~options: multiCacheQueryOptions=?,
) => Nullable.t<response> = "match"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CacheStorage/match)
*/
@send
external match2: (
  cacheStorage,
  ~request: string,
  ~options: multiCacheQueryOptions=?,
) => Nullable.t<response> = "match"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CacheStorage/has)
*/
@send
external has: (cacheStorage, string) => Promise.t<bool> = "has"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CacheStorage/open)
*/
@send
external open_: (cacheStorage, string) => Promise.t<cache> = "open"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CacheStorage/delete)
*/
@send
external delete: (cacheStorage, string) => Promise.t<bool> = "delete"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CacheStorage/keys)
*/
@send
external keys: cacheStorage => Promise.t<array<string>> = "keys"
