import cpp

class NetworkByteSwap extends Expr {
  NetworkByteSwap () {
    exists(MacroInvocation f |
      f.getMacroName().regexpMatch("ntoh.*") and this = f.getExpr()
    )
  } 
}

from NetworkByteSwap n
select n, "Network byte swap" 