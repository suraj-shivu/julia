"""
    AbstractInterpreter

An abstract base class that allows multiple dispatch to determine the method of
executing Julia code.  The native Julia LLVM pipeline is enabled by using the
`TypeInference` concrete instantiatoin of this abstract class, others can be
swapped in as long as they follow the AbstractInterpreter API.
"""
abstract type AbstractInterpreter; end

"""
    NativeInterpreter

This represents Julia's native type inference algorithm and codegen backend.
"""
struct NativeInterpreter <: AbstractInterpreter; end
