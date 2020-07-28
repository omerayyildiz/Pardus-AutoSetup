# Pardus AutoSetup 
## **Pardus Otomatik Kurulum Aracı** / Pardus Auto Installation Tool
![Pardus Resim](sources/images/photo1.jpg)

[![GitHub license](https://img.shields.io/github/license/omerayyildiz/Pardus-AutoSetup)](https://github.com/omerayyildiz/Pardus-AutoSetup/blob/master/LICENSE) 
![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/omerayyildiz/Pardus-AutoSetup)
![GitHub repo size](https://img.shields.io/github/repo-size/omerayyildiz/Pardus-AutoSetup)

# **Dikkat! / Attention!**
Bu repoda hiçbir git kuralına uyulmayarak geliştirme yapılmıştır. Commitlerdeki hatalar almış başını gidiyor, versiyonlama ise tamamen bir facia.  

> This repo has not been developed in accordance with any git rules. The versioning is faulty in itself. I'm sorry.

# **Pardus AutoSetup Nedir?** / What is the Pardus AutoSetup?
### Türkçe
Live ya da normal kurulum sonrası açılan Pardus'a otomatik olarak belirlediğim uygulamaları indiren ve ayarlarımı yapan bir BASH Scripttir.
### English
- It is a BASH Script that downloads the applications I set automatically to Pardus that opens after Live or normal installation and makes my settings.

# **Nasıl Çalışır?** / How Does It Works?
### Türkçe
 Ana dizinde bulunan setup.sh dosyasını çalıştırın.
### English
 - Run the setup.sh file in the main directory.
 
```bash
bash setup.sh
```
# **Kullanmadan Önce Yapmanız Gerekenler** / What You Should Do Before Using?
### Türkçe
Ön kurulumda bulunan alanları doğru doldurmanız ve gerekli tüm paketlerin sayısını ve adlarını ilgili alanlara girmeniz yeterli olacaktır.
### English
- It will be enough to fill the fields in the pre-installation correctly and enter the number and names of all required packages in the relevant fields.

# **Hata Anında Ne Yapmalıyım?** / What Should I Do Instantly?
### Türkçe
 Uygulama içi hata vermemek adına sürekli apt onarılıyor ve güncelleniyor. Fakat bazı iptal etme durumlarında apt arızalanabiliyor.
 
 Eğer,
 ```
E: /var/lib/dpkg/lock kilidi alınamadı - open (11: Özkaynak geçici olarak kullanılamaz durumda)

E: Yönetim dizini (/var/lib/dpkg/)kilitlenemiyor, başka bir işlem tarafından kullanılıyor olmasın?
```
hatasını alırsanız repair klasöründe bulunan apt-lock-error-solve.sh dosyasını çalıştırın.
Bağımlılık hatası aldığınızda ise apt-repair.sh'ı çalıştırabilirsiniz.
### English
 - Apt is constantly being repaired and updated to avoid in-app errors. However, in some cancellation cases, the apt may fail.
- If you get this kind of error, run the apt-lock-error-solve.sh file.
- When you get apt error, you can run apt-repair.sh.


# **Örnek Kurulumlar** / Example Installation

[version 3.0](https://www.youtube.com/watch?v=4H4pc_ZkUGM)

[version 2.0](https://www.youtube.com/watch?v=cSXQsUMQ4z8)

[version 1.0](https://www.youtube.com/watch?v=QkfiUk5FyQc)

Ömer Ayyıldız
