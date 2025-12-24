# 📔 Veri Yapıları: Kağıdı Yakın, Koda Bakın! (Theoretical Rebellion)

Bu notlar, kodun kağıda yazılmasını dayatan zihniyete bir yanıttır. Kod yaşayan bir organizmadır, kağıt ise onun mezarıdır.

---

## 🚀 1. Zaman Karmaşıklığı (Big O)
Bir algoritmanın başarısı kağıttaki şıklığıyla değil, işlemciyi ne kadar yorduğuyla ölçülür.

- **O(1):** Sabit Zaman (Efsanevi Hız)
- **O(log n):** Logaritmik (Hızlı - Binary Search)
- **O(n):** Lineer Zaman (Kabul Edilebilir)
- **O(n log n):** (Sort Algoritmaları - Standart)
- **O(n²):** (Hata! - İç içe döngüler)

## 🔗 2. Bağlı Listeler (Linked Lists) vs Diziler
Diziler statiktir, kuralcıdır (analog zihniyet). Bağlı listeler dinamiktir, özgürdür.

```c
// ÖZGÜR BİR DÜĞÜM (NODE) YAPISI
struct Node {
    int data;           // Saf bilgi
    struct Node* next;  // Bir sonraki adıma (geleceğe) referans
};
```

## 🌳 3. Ağaçlar (Trees) ve Hiyerarşi
Analog sistemler katıdır. Ağaç yapıları ise veriyi ararken yolu kısaltır. İkili Arama Ağacı (BST), veriye ulaşmanın en demokratik yoludur.

> [!IMPORTANT]
> **Rebellion Tip:** Veri yapılarını kağıda çizerken bile arkadaki bellek (RAM) adreslerini düşünün. Adresleri düşünmeyen mühendis, sadece bir kalem tutucudur.

---
`SİSTEM DURUMU: ANALOG REDDEDİLDİ`
`KOD DURUMU: RUNNABLE`
