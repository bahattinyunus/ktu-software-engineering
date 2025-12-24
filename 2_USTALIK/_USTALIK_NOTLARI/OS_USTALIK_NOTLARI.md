# 🧠 USTALIK NOTLARI: İŞLETİM SİSTEMLERİ (OS)

**Görev:** Bilgisayarın çekirdeğine (kernel) hükmetmek ve donanımı orkestra gibi yönetmek.

---

## 🏛️ 1. ÇEKİRDEK (KERNEL): MUTLAK DENETÇİ
Sistemdeki tüm kaynakların (CPU, Bellek, I/O) yegane yöneticisi çekirdektir.
- **Ustalık:** Kullanıcı Modu (User Mode) ile Çekirdek Modu (Kernel Mode) arasındaki o "ateşten duvarı" anlayın. Bir sistem çağrısı (syscall) yapıldığında donanımın nasıl durdurulduğunu hayal edin.

## 🧵 2. PARALEL SAVAŞ: THREADS VE PROSESLER
Threads ve Processes farkını bilmek başlangıçtır; asıl mesele onları çatışma olmadan senkronize etme disiplinidir.
- **Ustalık:** Yarış Durumu (Race Condition) ve Ölü Lokma (Deadlock) birer "hata" değil, tasarım eksikliğidir. Bunları önceden öngören bir mimar olarak kod yazın.

## 🗄️ 3. BELLEK SANALLAŞTIRMA (VIRTUAL MEMORY)
RAM sınırlıdır, ancak sistem vizyonumuz değildir.
- **Ustalık:** Paging ve Segmentasyon mimarisini bilmek, yazdığınız kodun neden `Segmentation Fault` aldığını size açıklar. Bellek sızıntılarını (Memory leaks) kernel'ın gözüyle görün.

## 🛠️ LABORATUVAR CHALLENGE
- **Görev:** C dili ile Unix/Linux üzerinde çalışan bir "Shell" (kabuk) prototipi yaz. `fork()`, `exec()` ve `wait()` sistem çağrılarını kullanarak proses yönetimini bizzat deneyimle.

---
\`SİNYAL: ÇEKİRDEK_USTALIGI_KİLİTLENDİ\`
