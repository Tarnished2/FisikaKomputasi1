function B=invers(A) %mendefinisikan fungsi invers
[~,n]=size(A); %menyatakan ukuran matriks A
b = eye(n,n); %menyatakan matriks b sebagai matriks identitas
%melakukan iterasi untuk membentuk matriks segitiga atas
for i=1:n-1
    for j=i+1:n
        m=-A(j,i)/A(i,i);
        A(j,:)=A(j,:)+m*A(i,:);
        b(j,:)=b(j,:)+m*b(i,:);
    end
end
%melakukan iterasi untuk membuat semua entri pada diagonal matriks A
%menjadi 1
for i=1:n
    l=1/A(i,i);
    A(i,:)=A(i,:).*l;
    b(i,:)=b(i,:).*l;
end
%eliminasi segitiga atas
for i=n:-1:2
    for j=i-1:-1:1
        k=-A(j,i)/A(i,i);
        A(j,:)=A(j,:)+k*A(i,:);
        b(j,:)=b(j,:)+k*b(i,:);
    end
end
%menyatakan matriks b yang sudah diperoleh adalah invers dari matriks A
B=b;

