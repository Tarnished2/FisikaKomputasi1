function B=detgauss(A) %mendefinisikan suatu fungsi
[~,n]=size(A); %menunjukkan ukuran matriks A
%melakukan iterasi untuk membuat matriks segitiga atas
for i=1:n-1
    for j=i+1:n
        m=-A(j,i)/A(i,i);
        A(j,:)=A(j,:)+m*A(i,:);
        for i=n-1:-1:1
 %melakukan perhitungan diagonal matriks segitiga atas
        B=prod(diag(A)); %mengalikan diagonal matriks 
        end
    end
end