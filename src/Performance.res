@@warning("-30")

open Prelude
open Event

/**
[See EventCounts on MDN](https://developer.mozilla.org/docs/Web/API/EventCounts)
*/
type eventCounts = {}

/**
Provides access to performance-related information for the current page. It's part of the High Resolution Time API, but is enhanced by the Performance Timeline API, the Navigation Timing API, the User Timing API, and the Resource Timing API.
[See Performance on MDN](https://developer.mozilla.org/docs/Web/API/Performance)
*/
type performance = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/timeOrigin)
    */
  timeOrigin: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/eventCounts)
    */
  eventCounts: eventCounts,
}

/**
Encapsulates a single performance metric that is part of the performance timeline. A performance entry can be directly created by making a performance mark or measure (for example by calling the mark() method) at an explicit point in an application. Performance entries are also created in indirect ways such as loading a resource (such as an image).
[See PerformanceEntry on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceEntry)
*/
type performanceEntry = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceEntry/name)
    */
  name: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceEntry/entryType)
    */
  entryType: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceEntry/startTime)
    */
  startTime: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceEntry/duration)
    */
  duration: float,
}

/**
PerformanceMark is an abstract interface for PerformanceEntry objects with an entryType of "mark". Entries of this type are created by calling performance.mark() to add a named DOMHighResTimeStamp (the mark) to the browser's performance timeline.
[See PerformanceMark on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceMark)
*/
type performanceMark = {
  ...performanceEntry,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceMark/detail)
    */
  detail: any,
}

/**
PerformanceMeasure is an abstract interface for PerformanceEntry objects with an entryType of "measure". Entries of this type are created by calling performance.measure() to add a named DOMHighResTimeStamp (the measure) between two marks to the browser's performance timeline.
[See PerformanceMeasure on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceMeasure)
*/
type performanceMeasure = {
  ...performanceEntry,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceMeasure/detail)
    */
  detail: any,
}

type performanceEntryList = any

type performanceMarkOptions = {
  mutable detail: any,
  mutable startTime: float,
}

module Performance = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/now)
    */
  @send
  external now: performance => float = "now"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/toJSON)
    */
  @send
  external toJSON: performance => Dict.t<string> = "toJSON"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/getEntries)
    */
  @send
  external getEntries: performance => performanceEntryList = "getEntries"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/getEntriesByType)
    */
  @send
  external getEntriesByType: (performance, string) => performanceEntryList = "getEntriesByType"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/getEntriesByName)
    */
  @send
  external getEntriesByName: (performance, string, string) => performanceEntryList =
    "getEntriesByName"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/clearResourceTimings)
    */
  @send
  external clearResourceTimings: performance => unit = "clearResourceTimings"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/setResourceTimingBufferSize)
    */
  @send
  external setResourceTimingBufferSize: (performance, int) => unit = "setResourceTimingBufferSize"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/mark)
    */
  @send
  external mark: (performance, string, performanceMarkOptions) => performanceMark = "mark"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/clearMarks)
    */
  @send
  external clearMarks: (performance, string) => unit = "clearMarks"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/measure)
    */
  @send
  external measure: (performance, string, unknown, string) => performanceMeasure = "measure"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/clearMeasures)
    */
  @send
  external clearMeasures: (performance, string) => unit = "clearMeasures"
}

module PerformanceEntry = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceEntry/toJSON)
    */
  @send
  external toJSON: performanceEntry => Dict.t<string> = "toJSON"
}

module PerformanceMark = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceMark)
    */
  @new
  external make: (string, performanceMarkOptions) => performanceMark = "PerformanceMark"
}
