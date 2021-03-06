% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/is_edge_multiple.R
\name{is_edge_multiple}
\alias{is_edge_multiple}
\title{Is the edge a multiple edge?}
\usage{
is_edge_multiple(graph, edge)
}
\arguments{
\item{graph}{A graph object of class \code{dgr_graph}.}

\item{edge}{A numeric edge ID value.}
}
\value{
A logical value.
}
\description{
Determines whether an edge definition has multiple edge IDs associated with
the same node pair.
}
\examples{
# Create a graph that has multiple
# edges across some node pairs
graph <-
  create_graph() \%>\%
  add_path(n = 4) \%>\%
  add_edge(
    from = 1,
    to = 2) \%>\%
  add_edge(
    from = 3,
    to = 4)

# Get the graph's internal
# edge data frame
graph \%>\% get_edge_df()

# Determine if edge `1` is
# a multiple edge
graph \%>\%
  is_edge_multiple(edge = 1)

# Determine if edge `2` is
# a multiple edge
graph \%>\%
  is_edge_multiple(edge = 2)

}
