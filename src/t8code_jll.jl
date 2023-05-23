# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule t8code_jll
using Base
using Base: UUID
using LazyArtifacts
using MPIPreferences
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("t8code")
JLLWrappers.@generate_main_file("t8code", UUID("4ee9bed8-4011-53f7-90c2-22363c2f500d"))
end  # module t8code_jll
