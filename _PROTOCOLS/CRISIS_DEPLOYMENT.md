# 🚨 PROTOCOL: CRISIS DEPLOYMENT (Kriz Dağıtım)

**Status:** EMERGENCY_ONLY  
**Authority:** Master Engineer

---

## 🛑 STAGE 1: ISOLATION (İzolasyon)
Hata tespit edildiği an, sistemin geri kalanına yayılmasını engelleyin.
1. **Traffic Cut:** Etkilenen servise giden trafiği kesin veya yedek servise (fallback) yönlendirin.
2. **State Freeze:** Veritabanı tutarlılığını korumak için gerekirse yazma işlemlerini durdurun.

## 🔍 STAGE 2: DIAGNOSIS (Teşhis)
"Neden?" sorusundan önce "Neresi?" sorusuna yanıt bulun.
1. **Log Analysis:** Son 5 dakikadaki tüm \`ERROR\` ve \`CRITICAL\` loglarını süzün.
2. **Commit Recon:** Son yapılan deployment'ı ve ilgili kod değişikliklerini inceleyin.

## 🛠️ STAGE 3: RESOLUTION (Çözüm)
Hızlı yama (Hotfix) veya Geri alma (Rollback).
1. **Rollback First:** Eğer hata kritikse ve çözüm zaman alacaksa, hemen bir önceki kararlı sürüme dönün.
2. **Hotfix:** Çözüm netse, minimum değişiklik ile patch uygulayın ve CI/CD hattını manuel bypass etmeyin.

## ✅ STAGE 4: POST-MORTEM (Analiz)
Aynı hatanın bir daha yaşanmaması için:
1. **Root Cause Analysis:** Hatanın kök sebebini dökümante edin.
2. **Test Integration:** Bu hatayı yakalayacak yeni bir Unit/Integration testi ekleyin.

---
\`SIGNAL: CRISIS_CONTROL_ACTIVE\`
