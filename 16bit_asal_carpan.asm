org 100h
mov di,0FFFFh      ; di'ye asal carpanlari bulunacak sayi girilir
mov ax,di          ; ax 'e di degeri atilir
mov bx,2           ; bx'e en kucuk asal sayi atilir
bol:
div bx             ; eger ax deki sayi bx degerine tam bolunuyorsa 
cmp dx,0           ; bx degerini , stacke at ve di' de yeni sayiyi tut ,
jnz degil          ; yeni sayi ile ayni islemi tekrarla
push bx
mov di,ax
jmp bol
degil:
inc bx             ; eger ax deki sayi bx degerine tam bolunmuyorsa
mov dx,0           ; bx degerini bir arttir ,dx i sifir yap(sifirlamayinca bolum hatasi oluyor)
mov ax,di          ; di de tutulan sayiyi  tekrar ax e at
cmp ax,1           ; ax 1 e esitse programi bitir, degilse islemleri tekrarla
jnz bol
end




