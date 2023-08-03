function visualizeQuadtree(node)
    if isempty(node)
        return;
    end
    
    % Draw the boundary of the region
    rectangle('Position', [node.xmin, node.ymin, node.xmax - node.xmin, node.ymax - node.ymin], 'EdgeColor', 'b');
    
    % Recursively visualize the children
    visualizeQuadtree(node.northWest);
    visualizeQuadtree(node.northEast);
    visualizeQuadtree(node.southWest);
    visualizeQuadtree(node.southEast);
end