clc;clear;
% Create a quadtree and subdivide it
root = Quadtree(0, 1, 0, 1, 1);
root.levelUp(); % now root has 4 meshes

% Access the meshList
meshListLevelOne = root.meshList; % This gives you the list of level 1 meshes
firstMesh = meshListLevelOne{1}; % This gives you the first mesh (southWest)

% Level up the first mesh
firstMesh.levelUp(); % now firstMesh has 4 sub-meshes
meshListLevelOne{2}.levelUp();
% Access the new meshList
meshListLevelTwo = firstMesh.meshList; % This gives you the list of level 2 meshes from the firstMesh
meshListLevelTwo{2}.levelUp();
% Visualize the quadtree
figure;
hold on;
visualizeQuadtree(root);
axis equal;
