using Test

include("../src/julia_collatz.jl")
using .julia_collatz

@testset "Collatz" begin
    @testset "collatz_operator" begin
        @testset "Test 1" begin
            @test collatz_operator(1) == 4
            @test collatz_operator(2) == 8
            @test collatz_operator(3) == 10
           