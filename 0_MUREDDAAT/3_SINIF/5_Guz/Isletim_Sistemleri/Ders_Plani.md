# 🧠 İşletim Sistemleri: Çekirdek Hakimiyeti (OS Battle Plan)

## 📊 Stratejik Bilgiler
- **Misyon:** Bilgisayarın ruhunu (çekirdek) anlamak, donanımı yönetmek ve en alt seviyede sistem disiplini kazanmak.
- **Mastery Hedefi:** Bir işletim sisteminin nasıl nefes aldığını kavramak ve kendi sistemleriniz için çekirdek seviyesinde optimizasyon yapabilmek.

## 📅 Operasyonel Akış (Mastery Focused)

| Hafta | Konu | Çekirdek Disiplini |
| :--- | :--- | :--- |
| 1 | OS Giriş & Mimari Disiplin | Monolitik vs Microkernel; Kernel Mode vs User Mode ayrımı. |
| 2 | Sistem Çağrıları (System Calls) | `read()`, `write()`, `fork()` mekanizmaları ve Trap disiplini. |
| 3 | Süreç Yönetimi (Process Mgmt) | Context Switching (Bağlam değişimi) ve PCB veri yapısı. |
| 4 | İş Parçacıkları (Threads) | User-level vs Kernel-level threads; Race Condition analizi. |
| 5 | CPU Zamanlama (Scheduling) | FCFS, SJF, Round Robin ve Multilevel Feedback Queue. |
| 6 | Senkronizasyon & Locklar | Mutex, Semaphore, Spinlocks ve Deadlock Prevention. |
| 7 | Bellek Yönetimi (Memory) | Adres Uzayları, Paging (Sayfalama) ve Translation Lookaside Buffer. |
| 8 | ARA DEĞERLENDİRME | (Kernal Status: OK) |
| 9 | Sanal Bellek (Virtual Memory) | Demand Paging, Page Fault yönetimi ve Değiştirme (LRU) algoritmaları. |
| 10 | Dosya Sistemleri (File Systems) | Inodes, VFS (Virtual File System) ve Journaling disiplini. |
| 11 | Giriş/Çıkış (I/O) Sistemleri | DMA (Direct Memory Access), Interrupts ve Polling mekanizmaları. |
| 12 | Güvenlik ve İzolasyon | Access Control Lists (ACL) ve Bellek Koruma (Protection Rings). |
| 13 | Dağıtık İşletim Sistemleri | Remote Procedure Call (RPC) ve Dağıtık Paylaşılan Bellek. |
| 14 | Final Mastery Project | Basit bir "Shell" (Kabuk) veya "Scheduler" (Zamanlayıcı) prototipi. |

## 🎯 Ustalık Perspektifi (Mastery Perspective)

### 🏢 Sektörel Karşılık
Bu ders, **Sistem Programlama**, **Siber Güvenlik** (Exploit geliştirme), **Bulut Bilişim Altyapıları** (Hypervisor, Container) ve **Gerçek Zamanlı İşletim Sistemleri (RTOS)** için bir temeldir. Bir çekirdek (kernel) mühendisi, yazılım dünyasının "Master Blacksmith"idir.

### 🤖 Yapay Zeka Sinerjisi (Prompt Örneği)
> "Linux çekirdeğindeki (kernel) `fork()` sistem çağrısının 'Copy-on-Write' (CoW) mekanizmasını teknik detaylarıyla açıkla. Bu mekanizmanın bellek verimliliğine ve süreç oluşturma hızına etkisini bir senaryo üzerinden kurgula."

### 🚩 Kritik Eşik (The Bottleneck)
**"Süreç Senkronizasyonu (Critical Section Problem)"** ve **"Sanal Bellek Adresleme"** bu dersin en zorlu ve mühendislik zekasını en çok sınayan bölümleridir. Bu kavramları kod üzerinde ispatlayamayan liyakatini kazanamaz.
