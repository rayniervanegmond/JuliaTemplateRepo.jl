using JuliaTemplateRepo
using Documenter

DocMeta.setdocmeta!(JuliaTemplateRepo, :DocTestSetup, :(using JuliaTemplateRepo); recursive=true)

makedocs(;
    modules=[JuliaTemplateRepo],
    authors="Raynier van Egmond",
    repo="https://github.com/rayniervanegmond/JuliaTemplateRepo.jl/blob/{commit}{path}#{line}",
    sitename="JuliaTemplateRepo.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://rayniervanegmond.github.io/JuliaTemplateRepo.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/rayniervanegmond/JuliaTemplateRepo.jl",
)
