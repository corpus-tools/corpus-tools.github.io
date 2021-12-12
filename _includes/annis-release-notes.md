### Fixed

- Enforce upgrade of (unused) log4j dependency to 2.15.0.
  While we do have log4j in our classpath, Spring is not configured per default
  to actually use log4j for debugging and thus ANNIS should be unaffected by
  CVE-2021-44228 (see https://spring.io/blog/2021/12/10/log4j2-vulnerability-and-spring-boot). 
  But it is better safe to than to be sorry, so we force Spring to use the fixed 
  log4j version.