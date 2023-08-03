clc;clear;

root = Quadtree(0, 1, 0, 1, 1);
root.levelUp(); 

%%
meshListLevelOne = root.meshList; 
firstMesh = meshListLevelOne{1}; % southWest


firstMesh.levelUp(); 
meshListLevelOne{2}.levelUp();


%%
meshListLevelTwo = firstMesh.meshList;
meshListLevelTwo{2}.levelUp();
meshthree = meshListLevelTwo{2};



%% Visualize the quadtree
figure;
hold on;
visualizeQuadtree(root);
axis equal;
