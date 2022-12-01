### Fixed

- The GridExporter could randomly fail to include certain matches. This was
  caused by a buggy logic, where a result was ommitted when any node in the
  result was not connected to a token. Instead, just exclude this single node
  and also check the other nodes. Only fail when no node is connected to any
  token. There is now also a warning in the console messages when this occurs. 
- Long running exports could fail when you are logged in and the internal token
  expired. The communication with the REST webservice has been refactored to
  always get the newest token (automatically refreshed by spring) before
  executing the call.