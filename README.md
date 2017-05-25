# Throttlebox

Rate limiting and caching nginx proxy configuration for outbound API requests.  

# Environment variables

## PROXY_PATH (required)
The URL to the api/website you want to proxy (e.g. http://api2.bigoven.com)

## RATE (default: 5r/s)
The maximum number of requests per second/minute. See [Nginx docs](http://nginx.org/en/docs/http/ngx_http_limit_req_module.html)  
E.g. to limit to 100 requests per minute, you would use: `100r/m`   
For 10 requests per second use: `10r/s`

## BURST (default: 500)
Requests over the specified rate limit are queued to process when a time window opens up. This sets the maximum number of requests that can be queued before the proxy starts denying them.  

## CACHE_LIFETIME (default: 60s)
How long a cached resource is valid, any value accepted by nginx `proxy_cache_valid` will work here.  
