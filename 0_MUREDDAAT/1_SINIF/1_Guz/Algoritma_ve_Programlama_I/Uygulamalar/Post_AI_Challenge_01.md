# 🤖 Post-AI Lab Challenge: Algoritma & C

Bu laboratuvar uygulaması, geleneksel C programlama bilgisini AI yardımıyla nasıl **Mastery** seviyesine çıkarabileceğinizi ölçer.

---

## 🎯 Challenge: Bellek Güvenli Metin İşleyici

**Görev:** Kullanıcıdan alınan bir metni kelimelerine ayıran, her kelimeyi alfabetik sıralayan ve sonucun bellek dökümünü (memory dump) gösteren bir C programı yazın.

### 🛠️ Geleneksel Adımlar
1. `malloc` ile metin için yer ayırın.
2. `strtok` veya manuel pointer aritmetiği ile kelimeleri ayırın.
3. Kabarcık sıralaması (Bubble Sort) veya `qsort` kullanın.
4. Belleği `free` ile temizleyin.

### 🚀 Post-AI Mastery Adımları
1. **AI Refactoring:** AI'ya yazdığınız kodu verin ve "Bu kodu bellek sızıntılarına (memory leak) karşı nasıl daha dayanıklı hale getirebiliriz?" diye sorun. 
2. **Optimization:** AI'dan sıralama algoritmanızın zaman karmaşıklığını (Big O) analiz etmesini ve daha verimli bir yaklaşım önermesini isteyin.
3. **Security Audit:** AI'ya "Bu kodda buffer overflow riski var mı?" diye sorun ve verdiği önerileri koda uygulayın.
4. **Isispat:** Kodun son halini ve AI ile yaptığınız debug/optimize sürecini `LOG.md` olarak kaydedin.

---
## 🛡️ Başarı Kriteri
- Kodun `valgrind` (veya benzeri bir bellek denetçisi) ile sıfır hata vermesi.
- AI tarafından önerilen en az 2 mimari iyileştirmenin koda entegre edilmesi.
- Kodun "Clean Code" prensiplerine %100 uyumu.

---
`DURUM: LAB_ACTIVE`
`VİZYON: POST_AI_EXCELLENCE`
