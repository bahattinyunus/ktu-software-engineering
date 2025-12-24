# 📔 Algoritma ve Programlama I - Teorik Özet

## Bölüm 1: Algoritma Nedir?

Algoritma, bir problemi çözmek için takip edilen sonlu ve net adımlar dizisidir.

### Algoritma Kriterleri:
1. **Giriş:** 0 veya daha fazla giriş olmalıdır.
2. **Çıkış:** En az 1 çıkış olmalıdır.
3. **Netlik:** Her adım kesin ve anlaşılır olmalıdır.
4. **Sonluluk:** Algoritma bir noktada durmalıdır.
5. **Etkinlik:** Her adım gerçekleştirilebilir olmalıdır.

## Bölüm 2: Akış Diyagramları (Flowcharts)

| Sembol | Anlamı |
| :--- | :--- |
| Elips | Başla / Bitir |
| Paralelkenar | Veri Girişi / Çıkışı |
| Dikdörtgen | İşlem / Atama |
| Eşkenar Dörtgen | Karar / Karşılaştırma |

## Bölüm 3: Örnek C Kodu (Sayı Toplama)

```c
#include <stdio.h>

int main() {
    int sayi1, sayi2, toplam;
    
    printf("Birinci sayiyi girin: ");
    scanf("%d", &sayi1);
    
    printf("Ikinci sayiyi girin: ");
    scanf("%d", &sayi2);
    
    toplam = sayi1 + sayi2;
    
    printf("Toplam: %d\n", toplam);
    
    return 0;
}
```
