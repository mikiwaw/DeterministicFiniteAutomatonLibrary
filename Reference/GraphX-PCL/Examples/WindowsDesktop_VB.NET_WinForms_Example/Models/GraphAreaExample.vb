﻿Imports GraphX
Imports QuickGraph

Namespace Models

    Public Class GraphAreaExample
        Inherits GraphArea(Of DataVertex, DataEdge, BidirectionalGraph(Of DataVertex, DataEdge))
    End Class
End Namespace