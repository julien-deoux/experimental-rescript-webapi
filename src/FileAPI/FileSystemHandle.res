open FileAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemHandle/isSameEntry)
*/
@send
external isSameEntry: (fileSystemHandle, fileSystemHandle) => Promise.t<bool> = "isSameEntry"
