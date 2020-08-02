import cpp

from MacroInvocation f
where f.getMacroName().regexpMatch("ntoh.*")
select f, "ntoh.* invocation"