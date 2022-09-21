load data 
Strain = X(:,2);
Elasity = X(:,3)./100;
Stress = Strain .* Elasity;
Mean_stress = mean(Stress);
Std_stress = std(Stress);
Stress_normlized = (Stress-Mean_stress)./Std_stress ; 
T = clusterdata(Stress,"Maxclust",3);
figure;
scatter(Strain(T==1),Stress(T==1),"o");
hold on
scatter(Strain(T==2),Stress(T==2),"x");
hold on
scatter(Strain(T==3),Stress(T==3),"v");

D = pdist(Stress);
Z = linkage(Stress);
dendrogram(Z)

