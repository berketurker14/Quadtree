function visualizeQuadtree(node)
    if isempty(node)
        return;
    end
    
    %Boundary of the region
    rectangle('Position', [node.xmin, node.ymin, node.xmax - node.xmin, node.ymax - node.ymin], 'EdgeColor', 'b');
    

    visualizeQuadtree(node.northWest);
    visualizeQuadtree(node.northEast);
    visualizeQuadtree(node.southWest);
    visualizeQuadtree(node.southEast);
end