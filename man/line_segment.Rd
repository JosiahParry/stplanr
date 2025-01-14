% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/linefuns.R
\name{line_segment}
\alias{line_segment}
\title{Divide an sf object with LINESTRING geometry into regular segments}
\usage{
line_segment(l, segment_length = NA, use_rsgeo = NULL, debug_mode = FALSE)
}
\arguments{
\item{l}{A spatial lines object}

\item{segment_length}{The approximate length of segments in the output (overides n_segments if set)}

\item{use_rsgeo}{Should the \code{rsgeo} package be used?
If \code{rsgeo} is available, this faster implementation is used by default.
If \code{rsgeo} is not available, the \code{lwgeom} package is used.}

\item{debug_mode}{Should debug messages be printed? Default is FALSE.}
}
\description{
This function keeps the attributes
}
\examples{
l <- routes_fast_sf[2:4, ]
l_seg_multi = line_segment(l, segment_length = 1000)
plot(l_seg_multi, col = seq_along(l_seg_multi), lwd = 5)
# Test rsgeo implementation:
# rsmulti = line_segment(l, segment_length = 1000, use_rsgeo = TRUE)
# waldo::compare(l_seg_multi, rsmulti)
}
\seealso{
Other lines: 
\code{\link{angle_diff}()},
\code{\link{geo_toptail}()},
\code{\link{is_linepoint}()},
\code{\link{line2df}()},
\code{\link{line2points}()},
\code{\link{line_bearing}()},
\code{\link{line_breakup}()},
\code{\link{line_midpoint}()},
\code{\link{line_segment1}()},
\code{\link{line_via}()},
\code{\link{mats2line}()},
\code{\link{n_vertices}()},
\code{\link{onewaygeo}()},
\code{\link{points2line}()},
\code{\link{toptail_buff}()}
}
\concept{lines}
