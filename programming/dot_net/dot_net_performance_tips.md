# Reduce Startup Time

## Precompilation
* NGen
%% ngen install my_app.exe
* Multicore background JIT
* MPGO
* RyuJIT
* Precompile Serialization assemblies
%% sgen
%% protobuf-net
* Merge assemblies
%% ILMerge
* Precompiling Regexes
%% Regexr = new Regex(pattern, RegexOptions.Compiled)


:.net:

