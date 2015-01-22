﻿using GraphX.GraphSharp.Algorithms.Layout;
using GraphX.Measure;
using QuickGraph;
using System.Collections.Generic;
using GraphX.GraphSharp.Algorithms.Layout.Simple.Hierarchical;

/*
 External layout algorithm implementation example
 
 Also shows how to use internal algorithms inside the external one.
 
 */
namespace ShowcaseApp.WPF
{
    public class ExampleExternalLayoutAlgorithm: IExternalLayout<DataVertex>
    {
        public bool SupportsObjectFreeze
        {
            get { return true; }
        }

        private readonly IVertexAndEdgeListGraph<DataVertex, DataEdge> _graph;
        public ExampleExternalLayoutAlgorithm(IVertexAndEdgeListGraph<DataVertex, DataEdge> graph)
        {
            _graph = graph;
        }

        public void Compute()
        {
            var pars = new EfficientSugiyamaLayoutParameters { LayerDistance = 200 };
            var algo = new EfficientSugiyamaLayoutAlgorithm<DataVertex, DataEdge, IVertexAndEdgeListGraph<DataVertex, DataEdge>>(_graph, pars, _vertexPositions, VertexSizes);
            algo.Compute();

            // now you can use = algo.VertexPositions for custom manipulations

            //set this algo calculation results 
            _vertexPositions = algo.VertexPositions;
        }

        IDictionary<DataVertex, Point> _vertexPositions = new Dictionary<DataVertex, Point>();
        public IDictionary<DataVertex, Point> VertexPositions
        {
            get { return _vertexPositions;  }
        }

        public IDictionary<DataVertex, Size> VertexSizes { get; set; }

        public bool NeedVertexSizes
        {
            get { return true; }
        }
    }
}
