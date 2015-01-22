﻿using System.Collections.Generic;
using GraphX.Measure;
using QuickGraph;

namespace GraphX.GraphSharp.Algorithms.Layout.Compound
{
    public interface ICompoundLayoutContext<TVertex, TEdge, TGraph> : ILayoutContext<TVertex, TEdge, TGraph>
        where TEdge : IEdge<TVertex>
		where TGraph : IBidirectionalGraph<TVertex, TEdge>
    {
        IDictionary<TVertex, Thickness> VertexBorders { get; }
        IDictionary<TVertex, CompoundVertexInnerLayoutType> LayoutTypes { get; }
    }
}
