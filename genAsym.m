%The function generates a random m × m dimensional symmetric matrix A with
%approximate density d and eigenvalues rc. The eigenvalues of A are given
%as the input vector rc. The number of non-zero elements of rc is the 
%desired rank r. The matrix is generated by sprandsym using random plane 
%rotations applied to a diagonal matrix with the given singular values. 
%The shape of this distribution is concave, and the entries are not extreme.


function A = genAsym(m,r,dens)

    M = 2;
    
    rho=(1/M)^(2/(r+1));
    
    rc=M*rho.^(1:r);
    rc=rc.*(2*randi(2,1,length(rc))-3);
    rc=[rc,zeros(1,m-r)];

    A=sprandsym(m,dens,rc);
    
end
            
