<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Session;

class GetUTM
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $params = $request->toArray();


        if (!Session::has('utm') OR Session::get('utm') === '')
        {
            $paramStr = "";

            foreach ($params as $key => $param) {
                $paramStr .= $key . '=' . $param . '&';
            }

            Session::put('utm', $paramStr);
        }

        return $next($request);
    }
}
