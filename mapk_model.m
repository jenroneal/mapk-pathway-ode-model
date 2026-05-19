function dydt = mapk_model(t,y)

% Differential equation model for the cytoplasmic
% MAP kinase signaling pathway using simplified
% reactions from the assigned manuscript.

% Parameters from Supplementary Table S1
a1 = 627.9894;
a2 = 130.0689;
a3 = 771.4746;

d1 = 966.7549;
d2 = 545.3449;
d3 = 311.4579;

k1 = 378.9429;
k2 = 954.3705;
k3 = 999.2599;

% Variables
Ras = y(1);
Raf = y(2);
Ras_Raf = y(3);
Raf_star = y(4);
Raf_Pase = y(5);
Raf_star_Pase = y(6);

MEK = y(7);
MEKp = y(8);
MEKpp = y(9);

ERK = y(10);
ERKp = y(11);
ERKpp = y(12);

% Simplified reactions

v1 = a1*Ras*Raf - d1*Ras_Raf;
v2 = k1*Ras_Raf;

v3 = a2*Raf_star*Raf_Pase - d2*Raf_star_Pase;
v4 = k2*Raf_star_Pase;

v5 = a3*Raf_star*MEK - d3*MEKpp;
v6 = k3*MEKpp*ERK;

% Differential equations

dRas = -v1 + v2;
dRaf = -v1 + v2 + v4;
dRas_Raf = v1 - v2;

dRaf_star = v2 - v3;

dRaf_Pase = -v3 + v4;
dRaf_star_Pase = v3 - v4;

dMEK = -v5;
dMEKp = 0;
dMEKpp = v5 - v6;

dERK = -v6;
dERKp = 0;
dERKpp = v6;

% Return column vector
dydt = [
dRas;
dRaf;
dRas_Raf;
dRaf_star;
dRaf_Pase;
dRaf_star_Pase;
dMEK;
dMEKp;
dMEKpp;
dERK;
dERKp;
dERKpp
];

end
