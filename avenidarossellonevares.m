# (C) M. A. Carro et al. Todos los derechos reservados 2018.
# 0310MMXVIII A.D. SJU 0511 hrs AST UTC-0400 0911 hrs ZULU.
# 
# Avenida Rossello Nevares (PR-199 anteriormente Avenida Lomas Verdes)
# Rossello Nevares Este (En direccion hacia Trujillo Alto)
# Rossello Nevares Oeste (En direccion hacia Guaynabo)
# ---
# Rampa Ferre-Aguayo Las Americas Rossello Nevares Norte Oeste y Este  
# Rampa Ferre-Aguayo Las Americas Rossello Nevares Sur Este y Oeste 
#
#
# EAST INTERSECTION STATES DATUM
##1,0,0,1,0,0,1,0,0,1,0,0,0,0,0,0
##0,1,0,1,0,0,1,0,0,1,0,0,0,0,0,0
##0,0,1,1,0,0,1,0,0,1,0,0,0,0,0,0
##0,1,0,1,0,0,1,0,0,1,0,0,0,0,0,0
##1,0,0,1,0,0,1,0,0,1,0,0,0,0,0,0
##1,0,0,0,1,0,0,1,0,1,0,0,0,0,0,0
##1,0,0,0,0,1,0,0,1,1,0,0,0,0,0,0
##1,0,0,0,1,0,0,0,1,1,0,0,0,0,0,0
##1,0,0,1,0,0,0,0,1,1,0,0,0,0,0,0
##1,0,0,1,0,0,0,1,0,1,0,0,0,0,0,0
##1,0,0,1,0,0,1,0,0,1,0,0,0,0,0,0
##1,0,0,1,0,0,1,0,0,0,1,0,0,0,0,0
##1,0,0,1,0,0,1,0,0,0,0,1,0,0,0,0
##1,0,0,1,0,0,1,0,0,0,1,0,0,0,0,0
##1,0,0,1,0,0,1,0,0,1,0,0,0,0,0,0
##0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

# ---

# Comment or uncomment the following line for "a clean run"...
# clean;

# Datum aquisitia
L = TRUTH_TABLE;
LS = L;
y_pad_ltd = 13;
LS(:,y_pad_ltd:end)=[];
x_pad_ltd = size(LS)(1)-2;
LS(x_pad_ltd:end,:)=[];
LSS = LS;
LSS([4 5 13],:)=[];
% Edit this for checking if the passing ought to be alongst x or y (I)
lss = zeros(max(size(LSS)(:)),max(size(LSS)(:)));
lss([1:size(LSS)(1)],:)=LSS; % Padded to 12.12; however see (I)

% STATES 
% SS, S1, S2, ..., S12
% SS is the Safe State
lssl = lss;
% n = .. (size(lss(1))) or 2 it's it's zero padded to a square (matrix)
% %% CHECK: is.True(size(lssl)(1)==size(lssl)(2))

%lssl = reshape(dec2bin(lssl),size(lss)(1),size(lss)(1));



