# 🏗️ Sistem Tasarımı El Kitabı: Büyük Ölçekli Düşünmek

Sadece bir uygulama değil, milyonlarca insanın kullanabileceği bir sistem nasıl tasarlanır?

---

## 🏛️ 1. Monolit vs Microservices
- **Monolit:** Küçük ve orta ölçekli projelerde hız kazandırır.
- **Microservices:** Dev ölçekli, ekiplerin bağımsız çalışması gereken yerlerde (örn: Trendyol, Netflix) esneklik sağlar.

## 📡 2. Veritabanı Seçim Stratejisi
- **SQL (İlişkisel):** Veri tutarlılığı (consistency) kritikse (örn: Banka hesapları).
- **NoSQL (İlişkisel Olmayan):** Hız ve yatay büyüme kritikse (örn: Sosyal medya feedi).

## 🛰️ 3. Ölçeklenebilirlik (Scalability)
- **Yatay (Horizontal):** Aynı makinadan 10 tane daha eklemek.
- **Dikey (Vertical):** Mevcut makinayı daha güçlü hale getirmek.
- **Mastery:** Her zaman yatayda büyüyebilen "Stateless" yapılar tasarlayın.

## 🛡️ 4. Hata Toleransı ve Dayanıklılık
Sistemlerin çökmesi bir olasılık değil, bir kesinliktir.
- **Circuit Breaker:** Bir servis çöktüğünde tüm sistemin aşağı inmesini engelleyin.
- **Caching:** Sık kullanılan verileri (Redis vb.) ön belleğe alarak sistemi rahatlatın.

---
> "Mimar, sadece bina yapan değil, deprem olduğunda içindekileri koruyabilen kişidir."
