classdef Quadtree < handle
    properties
        northWest; % top left quadrant
        northEast; % top right quadrant
        southWest; % bottom left quadrant
        southEast; % bottom right quadrant
        xmin; % minimum x coordinate
        xmax; % maximum x coordinate
        ymin; % minimum y coordinate
        ymax; % maximum y coordinate
        level; % level of the node
        meshList; % list of meshes
    end
    
    methods
        % constructor
        function obj = Quadtree(xmin, xmax, ymin, ymax, level)
            obj.xmin = xmin;
            obj.xmax = xmax;
            obj.ymin = ymin;
            obj.ymax = ymax;
            obj.level = level;
            obj.meshList = {};
        end
        
        % function to subdivide the node and level up
        function levelUp(obj)
            xmid = (obj.xmin + obj.xmax) / 2;
            ymid = (obj.ymin + obj.ymax) / 2;
            obj.southWest = Quadtree(obj.xmin, xmid, obj.ymin, ymid, obj.level+1);
            obj.southEast = Quadtree(xmid, obj.xmax, obj.ymin, ymid, obj.level+1);
            obj.northEast = Quadtree(xmid, obj.xmax, ymid, obj.ymax, obj.level+1);
            obj.northWest = Quadtree(obj.xmin, xmid, ymid, obj.ymax, obj.level+1);
            
            % add meshes to the list
            obj.meshList = {obj.southWest, obj.southEast, obj.northEast, obj.northWest};
        end
    end
end
