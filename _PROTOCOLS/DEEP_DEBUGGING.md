# 🔍 PROTOCOL: DEEP STACK DEBUGGING (Derin Hata Ayıklama)

**Status:** ACTIVE_RESEARCH  
**Authority:** System Architect

---

## ☣️ 1. REPRODUCIBILITY (Tekrarlanabilirlik)
Hatanın varlığını ispatlayın. Tekrarlanamayan bir hata, çözülemez bir hayalettir.
1. **Minimum Lab:** Hatayı tetikleyen en küçük (minimal) kod parçasını veya veri setini izole edin.
2. **Environment Sync:** Hatanın sadece belirli bir ortamda (OS, Network, AI Model version) olup olmadığını kontrol edin.

## 🔬 2. DIVIDE AND CONQUER (Böl ve Yönet)
Sistemi parçalara ayırarak hatanın kaynağını daraltın.
1. **Binary Search Debug:** Kodun yarısını devre dışı bırakıp hatanın devam edip etmediğini kontrol edin. Kaynağı bulana kadar tekrarlayın.
2. **State Inspection:** Bellekteki değişkenlerin ve veri akışının her adımdaki değerini (logging veya debugger ile) doğrulayın.

## 🧠 3. ASSUMPTION CHALLENGE (Varsayımları Sorgula)
"Burası kesin çalışıyor" dediğiniz yer, hatanın en büyük adayıdır.
1. **Third-party Audit:** Kendi kodunuz kadar, kullandığınız kütüphaneleri (libraries) ve AI önerilerini de sorgulayın.
2. **Rubber Ducking:** Sorunu başka birine (veya AI'ya) adım adım anlatın. Anlatırken yaptığınız mantık hatasını fark edeceksiniz.

---
\`SIGNAL: DEBUG_MODE_MAXIMIZED\`
