using System.Collections.Generic;
using GraphX.Measure;

namespace GraphX
{
    public sealed class GraphState<TVertex, TEdge, TGraph>
    {
        /// <summary>
        /// Graph state unique identificator
        /// </summary>
        public string ID { get; private set; }

        /// <summary>
        /// State description
        /// </summary>
        public string Description { get; private set; }

        /// <summary>
        /// Saved data graph
        /// </summary>
        public TGraph Graph { get; private set; }

        /// <summary>
        /// Saved vertex positions
        /// </summary>
        public Dictionary<TVertex, Point> VertexPositions { get; private set; }

        /// <summary>
        /// Saved visible edges with route points
        /// </summary>
        public List<TEdge> VisibleEdges { get; private set; }

        public GraphState(string id, TGraph graph, Dictionary<TVertex, Point> vPos, List<TEdge> vEdges, string description = "")
        {
            ID = id; Graph = graph; Description = description; VertexPositions = vPos;
            VisibleEdges = vEdges;
        }
    }
}
