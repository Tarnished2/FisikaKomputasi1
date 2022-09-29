function C=perkalianmatrik(A,B) %mendefinisikan suatu fungsi
[m,~]=size(A); %meunjukkan matriks A
[o,N]=size(B); %menunjukkan ukuran matriks B
C=zeros(m,N);%inisasi matriks C
for i=1:m %iterasi baris matriks C   
    for j=1:N %iterasi kolom matriks C
        for k=1:o %iterasi kolom matriks A dan baris matriks B
        C(i,j)=C(i,j)+A(i,k)*B(k,j); %iterasi tiap elemen pada matriks C
        end
    end
end