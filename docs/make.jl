using Documenter, PhyloClustering, PhyloNetworks

DocMeta.setdocmeta!(PhyloClustering, :DocTestSetup, :(using PhyloClustering, PhyloNetworks); recursive=true)

makedocs(
    sitename="PhyloClustering.jl",
    authors="Yibo Kong, Tiley, G. P., Claudia Solís-Lemus, and contributors",
    modules=[PhyloClustering],
    format = Documenter.HTML(prettyurls = get(ENV, "CI", nothing) == "true"),
    checkdocs=:exports,
    pages = [
        "Home" => "index.md",
        "Installation" => "man/installation.md",
        "Models" => [
            "model/basic.md",
            "model/kmeans.md",
            "model/hclust.md",
            "model/dbscan.md",
            "model/gmm.md",
        ],
        "Library" => [
            "Helper Functions" => "lib/helper_methods.md",
        ]
    ]
)

deploydocs(
    repo = "github.com/solislemuslab/PhyloClustering.jl.git",
)
