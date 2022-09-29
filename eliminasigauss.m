function [A,x]=eliminasigauss(A,b) %mendefinisikan suatu fungsi
[n,n]=size(A); %menunjukkan ukuran matriks A
n=length(b); %menunjukkan matriks b sebagai vektor
%melakukan iterasi untuk membuat matriks segitiga atas
for i=1:n-1
    for j=i+1:n
        m=-A(j,i)/A(i,i);
        A(j,:)=A(j,:)+m*A(i,:);
        b(j,:)=b(j,:)+m*b(i,:);
        x(n,:)=b(n,:)/A(n,n); %solusi x ke n
        for i=n-1:-1:1
        x(i,:)=(b(i,:)-A(i,i+1:n)*x(i+1:n,:))/A(i,i); %menunjukkan solusi akhir 
        end
    end
end