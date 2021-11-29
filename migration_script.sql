-- ----------------------------------------------------------------------------
-- MySQL Workbench Migration
-- Migrated Schemata: master
-- Source Schemata: master
-- Created: Fri Nov 26 15:48:35 2021
-- Workbench Version: 8.0.27
-- ----------------------------------------------------------------------------

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------------------------------------------------------
-- Schema master
-- ----------------------------------------------------------------------------
DROP SCHEMA IF EXISTS `master` ;
CREATE SCHEMA IF NOT EXISTS `master` ;

-- ----------------------------------------------------------------------------
-- Table master.spt_fallback_db
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`spt_fallback_db` (
  `xserver_name` VARCHAR(30) NOT NULL,
  `xdttm_ins` DATETIME(6) NOT NULL,
  `xdttm_last_ins_upd` DATETIME(6) NOT NULL,
  `xfallback_dbid` SMALLINT NULL,
  `name` VARCHAR(30) NOT NULL,
  `dbid` SMALLINT NOT NULL,
  `status` SMALLINT NOT NULL,
  `version` SMALLINT NOT NULL);

-- ----------------------------------------------------------------------------
-- Table master.spt_fallback_dev
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`spt_fallback_dev` (
  `xserver_name` VARCHAR(30) NOT NULL,
  `xdttm_ins` DATETIME(6) NOT NULL,
  `xdttm_last_ins_upd` DATETIME(6) NOT NULL,
  `xfallback_low` INT NULL,
  `xfallback_drive` CHAR(2) NULL,
  `low` INT NOT NULL,
  `high` INT NOT NULL,
  `status` SMALLINT NOT NULL,
  `name` VARCHAR(30) NOT NULL,
  `phyname` VARCHAR(127) NOT NULL);

-- ----------------------------------------------------------------------------
-- Table master.spt_fallback_usg
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`spt_fallback_usg` (
  `xserver_name` VARCHAR(30) NOT NULL,
  `xdttm_ins` DATETIME(6) NOT NULL,
  `xdttm_last_ins_upd` DATETIME(6) NOT NULL,
  `xfallback_vstart` INT NULL,
  `dbid` SMALLINT NOT NULL,
  `segmap` INT NOT NULL,
  `lstart` INT NOT NULL,
  `sizepg` INT NOT NULL,
  `vstart` INT NOT NULL);

-- ----------------------------------------------------------------------------
-- Table master.AracBilgisi
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`AracBilgisi` (
  `IDAltModel` INT NOT NULL,
  `IDAracMarka` INT NULL,
  `IDAracTipi` INT NULL,
  `AltModelAdi` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `AracMotorGucu` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `AracSilindirHacmi` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `AracAzamiKutle` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `AracYururKutlesi` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `AracArkaAksYururKutlesi` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `AracIstihabKisi` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `AracIstihabYuk` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `AracAzamiAksKutlesi` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `AracDOYakitCinsi` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `AracDingilKapasiteOn` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `AracDingilKapasiteArka` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `AracDingilYukluKapasiteOn` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `AracDingilYukluKapasiteArka` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `AracUzunluk` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `AracGenislik` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `AracYukseklik` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `AracDingilUzakligi` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `AracDingilTekerlekSayisi` VARCHAR(10) CHARACTER SET 'utf8mb4' NULL,
  `AracLastikTekerlekler` VARCHAR(10) CHARACTER SET 'utf8mb4' NULL,
  `AracTahrikliDingiller` VARCHAR(10) CHARACTER SET 'utf8mb4' NULL,
  `AracDSYakitCinsi` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `TipOnayNo` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL);

-- ----------------------------------------------------------------------------
-- Table master.AracMarka
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`AracMarka` (
  `IDAracMarka` INT NOT NULL,
  `MarkaAdi` VARCHAR(255) CHARACTER SET 'utf8mb4' NULL);

-- ----------------------------------------------------------------------------
-- Table master.AracTipi
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`AracTipi` (
  `IDAracTipi` INT NOT NULL,
  `IDAracMarka` INT NULL,
  `AracTipAdi` VARCHAR(255) CHARACTER SET 'utf8mb4' NULL);

-- ----------------------------------------------------------------------------
-- Table master.CariArac
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`CariArac` (
  `IDCariArac` INT NOT NULL,
  `IDCari` INT NULL,
  `IDAracMarka` INT NULL,
  `MarkaAdi` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `IDAracTipi` INT NULL,
  `AracTipAdi` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `IDAltModel` INT NULL,
  `AltModelAdi` VARCHAR(40) CHARACTER SET 'utf8mb4' NULL,
  `KullanimAmaci` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `Cinsi` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `Plaka` VARCHAR(10) CHARACTER SET 'utf8mb4' NULL,
  `ModelYili` INT NULL,
  `Renk` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL,
  `MotorNo` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `SasiNo` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `Kilometre` INT NULL);

-- ----------------------------------------------------------------------------
-- Table master.BankaTanim
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`BankaTanim` (
  `IDBanka` INT NOT NULL,
  `BankaAdi` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `SubeAdi` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `Yetkili` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `YetkiliTel` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `HesapNo` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `HesapAdi` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `IBAN` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `Aciklama` VARCHAR(100) CHARACTER SET 'utf8mb4' NULL,
  `Adres` VARCHAR(100) CHARACTER SET 'utf8mb4' NULL);

-- ----------------------------------------------------------------------------
-- Table master.CariHareket
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`CariHareket` (
  `IDCariHareket` INT NOT NULL,
  `IDCari` INT NULL,
  `IDIslemTuru` INT NULL,
  `IDOdemeSekli` INT NULL,
  `IDBanka` INT NULL,
  `IDKasa` INT NULL,
  `Tarih` DATETIME(6) NULL,
  `Saat` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `EvrakNo` VARCHAR(15) CHARACTER SET 'utf8mb4' NULL,
  `Tutar` DOUBLE NULL,
  `KDVTutari` DOUBLE NULL,
  `VadeTarihi` DATETIME(6) NULL,
  `VadeGun` INT NULL,
  `Aciklama` VARCHAR(255) CHARACTER SET 'utf8mb4' NULL,
  `CekSahibi` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `Durumu` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL,
  `IDCiroCari` INT NULL,
  `IDTahsilEdilenCekSenet` INT NULL,
  `IDServisHareket` INT NULL,
  `FaturaDurumu` TINYINT(1) NULL,
  `FaturaNo` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `FaturaTarihi` DATETIME(6) NULL,
  `FaturaTipi` VARCHAR(6) CHARACTER SET 'utf8mb4' NULL,
  `IrsaliyeDurumu` TINYINT(1) NULL,
  `IrsaliyeNo` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `IrsaliyeTarihi` DATETIME(6) NULL,
  `SevkTarihi` DATETIME(6) NULL,
  `StokOdemeSekli` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `IDStokHareketSekli` INT NULL);

-- ----------------------------------------------------------------------------
-- Table master.CariKart
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`CariKart` (
  `IDCari` INT NOT NULL,
  `CariKodu` VARCHAR(130) CHARACTER SET 'utf8mb4' NULL,
  `IDHesapTuru` INT NULL,
  `TCKimlik` VARCHAR(40) CHARACTER SET 'utf8mb4' NULL,
  `Unvan` VARCHAR(100) CHARACTER SET 'utf8mb4' NULL,
  `AdiSoyadi` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `Adres` VARCHAR(225) CHARACTER SET 'utf8mb4' NULL,
  `Ili` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `Ilce` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL,
  `VergiDaire` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `VergiNo` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `EvTel` VARCHAR(255) CHARACTER SET 'utf8mb4' NULL,
  `IsTel` VARCHAR(17) CHARACTER SET 'utf8mb4' NULL,
  `CepTel` VARCHAR(17) CHARACTER SET 'utf8mb4' NULL,
  `Fax` VARCHAR(17) CHARACTER SET 'utf8mb4' NULL,
  `BankaAdiSube` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL,
  `BankaHesapNo` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `BankaHesapAdi` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL,
  `EkBankaBilgi` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `MailAdres` VARCHAR(70) CHARACTER SET 'utf8mb4' NULL,
  `WebAdres` VARCHAR(120) CHARACTER SET 'utf8mb4' NULL,
  `Aciklama` LONGTEXT NULL);

-- ----------------------------------------------------------------------------
-- Table master.ECUListe
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`ECUListe` (
  `IDECUListe` INT NOT NULL,
  `ECUAdi` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL);

-- ----------------------------------------------------------------------------
-- Table master.Enjektor
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`Enjektor` (
  `IDEnjektor` INT NOT NULL,
  `IDMontaj` INT NULL,
  `SilindirNumarasi` TINYINT UNSIGNED NULL,
  `SilindirSeriNo` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `EnjektorMontajKodu` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL);

-- ----------------------------------------------------------------------------
-- Table master.HesapTuru
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`HesapTuru` (
  `IDHesapTuru` INT NOT NULL,
  `HesapTuru` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `BorcHesabi` TINYINT(1) NULL,
  `AlacakHesabi` TINYINT(1) NULL,
  `HesapTuruKodu` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL);

-- ----------------------------------------------------------------------------
-- Table master.Ilceler
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`Ilceler` (
  `IDIlceler` INT NOT NULL,
  `IDIller` INT NULL,
  `IlceAdi` LONGTEXT NULL);

-- ----------------------------------------------------------------------------
-- Table master.Iller
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`Iller` (
  `IDIller` INT NOT NULL,
  `IlKodu` INT NULL,
  `IlAdi` LONGTEXT NULL);

-- ----------------------------------------------------------------------------
-- Table master.KasaTanim
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`KasaTanim` (
  `IDKasa` INT NOT NULL,
  `KasaKodu` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `KasaAdi` VARCHAR(100) CHARACTER SET 'utf8mb4' NULL,
  `Aciklama` VARCHAR(150) CHARACTER SET 'utf8mb4' NULL);

-- ----------------------------------------------------------------------------
-- Table master.KitListe
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`KitListe` (
  `IDKitListe` INT NOT NULL,
  `KitAdi` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `VerilisTarihi` DATETIME(6) NULL);

-- ----------------------------------------------------------------------------
-- Table master.Montaj
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`Montaj` (
  `IDMontaj` INT NOT NULL,
  `IDCari` INT NULL,
  `IDCariArac` INT NULL,
  `IDAracMarka` INT NULL,
  `IDAracTipi` INT NULL,
  `IDAltModel` INT NULL,
  `IDKitListe` INT NULL,
  `IDECUListe` INT NULL,
  `IDTankListe` INT NULL,
  `IDSamandiraListe` INT NULL,
  `IDMuhendis` INT NULL,
  `KitEnjeksiyonCinsi` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL,
  `KitCinsi` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL,
  `KitTipi` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `KitSeriNo` VARCHAR(40) CHARACTER SET 'utf8mb4' NULL,
  `KitDurumu` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `ECUCinsi` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL,
  `ECUTipi` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL,
  `ECUSeriNo` VARCHAR(40) CHARACTER SET 'utf8mb4' NULL,
  `ECUImalatTarihi` DATETIME(6) NULL,
  `TankCinsi` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL,
  `TankTipi` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL,
  `TankSeriNo` VARCHAR(255) CHARACTER SET 'utf8mb4' NULL,
  `TankImalatTarihi` DATETIME(6) NULL,
  `TankDurumu` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `SamandiraCinsi` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL,
  `SamandiraTipi` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL,
  `SamandiraCapi` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL,
  `SamandiraSeriNo` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL,
  `EnjektorRengi` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `EnjektorKutukNo` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `EnjektorMontajKodu` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `FaturaTarihi` DATETIME(6) NULL,
  `MontajTarihi` DATETIME(6) NULL,
  `MontajSekli` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `AracKullanimAmaci` VARCHAR(40) CHARACTER SET 'utf8mb4' NULL,
  `TipOnayNo` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `VerilisTarihi` DATETIME(6) NULL,
  `DonusumCinsi` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL,
  `FaturaNo` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `MontajTespitNo` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `MontajBaslamaTarihi` DATETIME(6) NULL,
  `MontajBitisTarihi` DATETIME(6) NULL,
  `KabulFormuNo` VARCHAR(10) CHARACTER SET 'utf8mb4' NULL);

-- ----------------------------------------------------------------------------
-- Table master.Muhendis
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`Muhendis` (
  `IDMuhendis` INT NOT NULL,
  `MuhendisAdiSoyadi` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `MuhendisYetkiBelgeNo` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL,
  `MuhendisOdaSicilNo` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL);

-- ----------------------------------------------------------------------------
-- Table master.OdemeSekli
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`OdemeSekli` (
  `IDOdemeSekli` INT NOT NULL,
  `OdemeAdi` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL,
  `IDIslemTuru` INT NULL);

-- ----------------------------------------------------------------------------
-- Table master.SamandiraCapi
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`SamandiraCapi` (
  `IDSamandiraCapi` INT NOT NULL,
  `SamandiraCapAdi` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL);

-- ----------------------------------------------------------------------------
-- Table master.SamandiraListe
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`SamandiraListe` (
  `IDSamandiraListe` INT NOT NULL,
  `SamandiraAdi` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL);

-- ----------------------------------------------------------------------------
-- Table master.ServisHareket
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`ServisHareket` (
  `IDServisHareket` INT NOT NULL,
  `IDCariArac` INT NULL,
  `IDCari` INT NULL,
  `ServisTipi` VARCHAR(40) CHARACTER SET 'utf8mb4' NULL,
  `Tarih` DATETIME(6) NULL,
  `Saat` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `EvrakNo` VARCHAR(15) CHARACTER SET 'utf8mb4' NULL,
  `Kilometre` INT NULL,
  `MusteriSikayet` LONGTEXT NULL,
  `TespitEdilenAriza` LONGTEXT NULL,
  `YapilanIslem` LONGTEXT NULL,
  `KullanilanMalzeme` LONGTEXT NULL,
  `Tutar` DOUBLE NULL,
  `Aciklama` LONGTEXT NULL,
  `BorcDurum` TINYINT(1) NULL);

-- ----------------------------------------------------------------------------
-- Table master.SMS
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`SMS` (
  `IDMesaj` INT NOT NULL,
  `Tarih` DATETIME(6) NULL,
  `HedefGrup` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `Kime` LONGTEXT NULL,
  `KisiSayisi` INT NULL,
  `Konu` VARCHAR(250) CHARACTER SET 'utf8mb4' NULL,
  `Mesaj` LONGTEXT NULL,
  `Sonuc` VARCHAR(250) CHARACTER SET 'utf8mb4' NULL);

-- ----------------------------------------------------------------------------
-- Table master.SMSHesabi
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`SMSHesabi` (
  `IDSMSHesabi` INT NOT NULL,
  `ServisSaglayici` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `KullaniciAdi` VARCHAR(255) CHARACTER SET 'utf8mb4' NULL,
  `Sifre` VARCHAR(255) CHARACTER SET 'utf8mb4' NULL,
  `Gonderen` VARCHAR(255) CHARACTER SET 'utf8mb4' NULL,
  `BayiKodu` VARCHAR(255) CHARACTER SET 'utf8mb4' NULL);

-- ----------------------------------------------------------------------------
-- Table master.StokBirim
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`StokBirim` (
  `IDStokBirim` INT NOT NULL,
  `StokBirimAdi` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL);

-- ----------------------------------------------------------------------------
-- Table master.StokGrup
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`StokGrup` (
  `IDStokGrup` INT NOT NULL,
  `StokGrupAdi` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL,
  `IDUstGrup` INT NULL);

-- ----------------------------------------------------------------------------
-- Table master.StokHareket
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`StokHareket` (
  `IDStokHareket` INT NOT NULL,
  `IDStokKart` INT NULL,
  `IDCariHareket` INT NULL,
  `IDCari` INT NULL,
  `IDStokHareketSekli` INT NULL,
  `StokIslemTuru` INT NULL,
  `Tarih` DATETIME(6) NULL,
  `Saat` VARCHAR(10) CHARACTER SET 'utf8mb4' NULL,
  `EvrakNo` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `Aciklama` VARCHAR(255) CHARACTER SET 'utf8mb4' NULL,
  `StokBirimi` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `KdvDurumu` VARCHAR(5) CHARACTER SET 'utf8mb4' NULL,
  `KdvOrani` DOUBLE NULL,
  `KdvTutari` DOUBLE NULL,
  `Miktar` INT NULL,
  `IskontoOrani` DOUBLE NULL,
  `IskontoTutari` DOUBLE NULL,
  `BirimFiyati` DOUBLE NULL,
  `ToplamTutar` DOUBLE NULL);

-- ----------------------------------------------------------------------------
-- Table master.StokHareketSekli
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`StokHareketSekli` (
  `IDStokHareketSekli` INT NOT NULL,
  `HareketAdi` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL,
  `IDStokIslemTuru` INT NULL,
  `IDIslemTuru` INT NULL);

-- ----------------------------------------------------------------------------
-- Table master.StokKart
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`StokKart` (
  `IDStokKart` INT NOT NULL,
  `IDStokGrup` INT NULL,
  `IDStokBirim` INT NULL,
  `IDStokUstBirim` INT NULL,
  `BirimMiktari` INT NULL,
  `StokKodu` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL,
  `Barkod` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `StokAdi` VARCHAR(100) CHARACTER SET 'utf8mb4' NULL,
  `AlisFiyati` DOUBLE NULL,
  `SatisFiyati` DOUBLE NULL,
  `AlisKdvDurumu` VARCHAR(5) CHARACTER SET 'utf8mb4' NULL,
  `SatisKdvDurumu` VARCHAR(5) CHARACTER SET 'utf8mb4' NULL,
  `KdvOrani` INT NULL,
  `AlisIskontoOrani` DOUBLE NULL,
  `AlisIskontoTutari` DOUBLE NULL,
  `SatisIskontoOrani` DOUBLE NULL,
  `SatisIskontoTutari` DOUBLE NULL,
  `Tedarikci` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL);

-- ----------------------------------------------------------------------------
-- Table master.TankDurumu
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`TankDurumu` (
  `IDTankDurumu` INT NOT NULL,
  `TankDurumAdi` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL);

-- ----------------------------------------------------------------------------
-- Table master.TankListe
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`TankListe` (
  `IDTankListe` INT NOT NULL,
  `TankAdi` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL);

-- ----------------------------------------------------------------------------
-- Table master.TankTip
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`TankTip` (
  `IDTankTip` INT NOT NULL,
  `TankTipAdi` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL);

-- ----------------------------------------------------------------------------
-- Table master.vwBankaHesaplariGridDoldur
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`vwBankaHesaplariGridDoldur` (
  `IDBanka` INT NOT NULL,
  `HesapNo` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `HesapAdi` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `BankaAdi` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `Alacak` DOUBLE NULL,
  `Borc` DOUBLE NULL,
  `Bakiye` DOUBLE NULL);

-- ----------------------------------------------------------------------------
-- Table master.vwCariHesaplariGridDoldur
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`vwCariHesaplariGridDoldur` (
  `IDCari` INT NOT NULL,
  `IDHesapTuru` INT NULL,
  `HesapTuru` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `CariKodu` VARCHAR(130) CHARACTER SET 'utf8mb4' NULL,
  `Unvan` VARCHAR(100) CHARACTER SET 'utf8mb4' NULL,
  `TCKimlik` VARCHAR(40) CHARACTER SET 'utf8mb4' NULL,
  `AdiSoyadi` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `Borc` DOUBLE NULL,
  `Alacak` DOUBLE NULL,
  `Bakiye` DOUBLE NULL,
  `Ili` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `Ilce` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL,
  `Adres` VARCHAR(225) CHARACTER SET 'utf8mb4' NULL,
  `CepTel` VARCHAR(17) CHARACTER SET 'utf8mb4' NULL);

-- ----------------------------------------------------------------------------
-- Table master.vwEnjektorArama
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`vwEnjektorArama` (
  `IDMontaj` INT NOT NULL,
  `AdiSoyadi` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `CariKodu` VARCHAR(130) CHARACTER SET 'utf8mb4' NULL,
  `Plaka` VARCHAR(10) CHARACTER SET 'utf8mb4' NULL,
  `MontajTarihi` DATETIME(6) NULL,
  `MontajSekli` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `MarkaAdi` VARCHAR(255) CHARACTER SET 'utf8mb4' NULL,
  `AracTipAdi` VARCHAR(255) CHARACTER SET 'utf8mb4' NULL,
  `KitTipi` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `KitSeriNo` VARCHAR(40) CHARACTER SET 'utf8mb4' NULL,
  `EnjektorRengi` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `EnjektorKutukNo` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `SilindirNumarasi` TINYINT UNSIGNED NULL,
  `SilindirSeriNo` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL);

-- ----------------------------------------------------------------------------
-- Table master.vwFatura
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`vwFatura` (
  `IDCariHareket` INT NOT NULL,
  `Unvan` VARCHAR(100) CHARACTER SET 'utf8mb4' NULL,
  `AdiSoyadi` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `TCKimlik` VARCHAR(40) CHARACTER SET 'utf8mb4' NULL,
  `Adres` VARCHAR(225) CHARACTER SET 'utf8mb4' NULL,
  `Ili` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `Ilce` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL,
  `VergiDaire` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `VergiNo` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `CepTel` VARCHAR(17) CHARACTER SET 'utf8mb4' NULL,
  `FaturaTarihi` DATETIME(6) NULL,
  `IrsaliyeTarihi` DATETIME(6) NULL,
  `StokKodu` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL,
  `StokAdi` VARCHAR(100) CHARACTER SET 'utf8mb4' NULL,
  `Miktar` INT NULL,
  `StokBirimi` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `KdvTutari` DOUBLE NULL,
  `KdvOrani` DOUBLE NULL,
  `IskontoOrani` DOUBLE NULL,
  `IskontoTutari` DOUBLE NULL,
  `BirimFiyati` DOUBLE NULL,
  `ToplamTutar` DOUBLE NULL,
  `Tarih` DATETIME(6) NULL,
  `Saat` VARCHAR(10) CHARACTER SET 'utf8mb4' NULL,
  `SevkTarihi` DATETIME(6) NULL,
  `IrsaliyeNo` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `Aciklama` VARCHAR(255) CHARACTER SET 'utf8mb4' NULL,
  `FaturaNo` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL);

-- ----------------------------------------------------------------------------
-- Table master.vwKasaHesaplariGridDoldur
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`vwKasaHesaplariGridDoldur` (
  `IDKasa` INT NOT NULL,
  `KasaKodu` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `KasaAdi` VARCHAR(100) CHARACTER SET 'utf8mb4' NULL,
  `Borc` DOUBLE NULL,
  `Alacak` DOUBLE NULL,
  `Bakiye` DOUBLE NULL);

-- ----------------------------------------------------------------------------
-- Table master.vwMontaj
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`vwMontaj` (
  `IDMontaj` INT NOT NULL,
  `Plaka` VARCHAR(10) CHARACTER SET 'utf8mb4' NULL,
  `MontajSekli` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `KullanimAmaci` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `Cinsi` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `DonusumCinsi` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL,
  `MarkaAdi` VARCHAR(255) CHARACTER SET 'utf8mb4' NULL,
  `AracTipAdi` VARCHAR(255) CHARACTER SET 'utf8mb4' NULL,
  `ModelYili` INT NULL,
  `SasiNo` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `MotorNo` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `AracMotorGucu` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `AracSilindirHacmi` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `AracAzamiKutle` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `AracYururKutlesi` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `AracArkaAksYururKutlesi` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `AracIstihabYuk` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `AracIstihabKisi` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `AracAzamiAksKutlesi` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `AracDOYakitCinsi` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `AracDingilKapasiteOn` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `AracDingilKapasiteArka` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `AracDingilYukluKapasiteOn` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `AracDingilYukluKapasiteArka` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `AracUzunluk` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `AracGenislik` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `AracYukseklik` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `AracDingilUzakligi` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `AracDingilTekerlekSayisi` VARCHAR(10) CHARACTER SET 'utf8mb4' NULL,
  `AracLastikTekerlekler` VARCHAR(10) CHARACTER SET 'utf8mb4' NULL,
  `AracTahrikliDingiller` VARCHAR(10) CHARACTER SET 'utf8mb4' NULL,
  `AracDSYakitCinsi` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `TipOnayNo` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `KitCinsi` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL,
  `KitAdi` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `KitTipi` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `KitSeriNo` VARCHAR(40) CHARACTER SET 'utf8mb4' NULL,
  `KitDurumu` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `VerilisTarihi` DATETIME(6) NULL,
  `TankCinsi` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL,
  `TankAdi` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `TankTipi` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL,
  `TankSeriNo` VARCHAR(255) CHARACTER SET 'utf8mb4' NULL,
  `TankImalatTarihi` DATETIME(6) NULL,
  `TankDurumu` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `FaturaTarihi` DATETIME(6) NULL,
  `MontajTarihi` DATETIME(6) NULL,
  `MuhendisYetkiBelgeNo` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL,
  `MuhendisAdiSoyadi` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `MuhendisOdaSicilNo` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL);

-- ----------------------------------------------------------------------------
-- Table master.vwMontajListesi
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`vwMontajListesi` (
  `IDMontaj` INT NOT NULL,
  `AdiSoyadi` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `CariKodu` VARCHAR(130) CHARACTER SET 'utf8mb4' NULL,
  `Plaka` VARCHAR(10) CHARACTER SET 'utf8mb4' NULL,
  `MontajTarihi` DATETIME(6) NULL,
  `MontajSekli` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `SasiNo` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `MotorNo` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `MarkaAdi` VARCHAR(255) CHARACTER SET 'utf8mb4' NULL,
  `AracTipAdi` VARCHAR(255) CHARACTER SET 'utf8mb4' NULL,
  `KitAdi` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `TankSeriNo` VARCHAR(255) CHARACTER SET 'utf8mb4' NULL,
  `TankAdi` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `KitSeriNo` VARCHAR(40) CHARACTER SET 'utf8mb4' NULL,
  `SamandiraSeriNo` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL,
  `ECUSeriNo` VARCHAR(40) CHARACTER SET 'utf8mb4' NULL,
  `FaturaNo` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL);

-- ----------------------------------------------------------------------------
-- Table master.vwServisHareket
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`vwServisHareket` (
  `IDServisHareket` INT NOT NULL,
  `Plaka` VARCHAR(10) CHARACTER SET 'utf8mb4' NULL,
  `MarkaAdi` VARCHAR(255) CHARACTER SET 'utf8mb4' NULL,
  `AracTipAdi` VARCHAR(255) CHARACTER SET 'utf8mb4' NULL,
  `AltModelAdi` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `ServisTipi` VARCHAR(40) CHARACTER SET 'utf8mb4' NULL,
  `Tarih` DATETIME(6) NULL,
  `Saat` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `AdiSoyadi` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `CepTel` VARCHAR(17) CHARACTER SET 'utf8mb4' NULL,
  `Ili` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `Ilce` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL,
  `Adres` VARCHAR(225) CHARACTER SET 'utf8mb4' NULL,
  `EvrakNo` VARCHAR(15) CHARACTER SET 'utf8mb4' NULL,
  `Kilometre` INT NULL,
  `MusteriSikayet` LONGTEXT NULL,
  `TespitEdilenAriza` LONGTEXT NULL,
  `YapilanIslem` LONGTEXT NULL,
  `KullanilanMalzeme` LONGTEXT NULL,
  `Tutar` DOUBLE NULL,
  `Aciklama` LONGTEXT NULL,
  `BorcDurum` TINYINT(1) NULL);

-- ----------------------------------------------------------------------------
-- Table master.vwSozlesme
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`vwSozlesme` (
  `IDMontaj` INT NOT NULL,
  `Plaka` VARCHAR(10) CHARACTER SET 'utf8mb4' NULL,
  `Kilometre` INT NULL,
  `MarkaAdi` VARCHAR(255) CHARACTER SET 'utf8mb4' NULL,
  `AracTipAdi` VARCHAR(255) CHARACTER SET 'utf8mb4' NULL,
  `AltModelAdi` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `MotorNo` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `SasiNo` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `KitAdi` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `KitTipi` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `KitCinsi` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL,
  `KitSeriNo` VARCHAR(40) CHARACTER SET 'utf8mb4' NULL,
  `KitDurumu` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `TankAdi` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `TankTipi` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL,
  `TankCinsi` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL,
  `TankSeriNo` VARCHAR(255) CHARACTER SET 'utf8mb4' NULL,
  `TankImalatTarihi` DATETIME(6) NULL,
  `TankDurumu` VARCHAR(20) CHARACTER SET 'utf8mb4' NULL,
  `AdiSoyadi` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `TCKimlik` VARCHAR(40) CHARACTER SET 'utf8mb4' NULL,
  `Ili` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `Ilce` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL,
  `Adres` VARCHAR(225) CHARACTER SET 'utf8mb4' NULL,
  `CepTel` VARCHAR(17) CHARACTER SET 'utf8mb4' NULL,
  `MontajTarihi` DATETIME(6) NULL,
  `MontajBaslamaTarihi` DATETIME(6) NULL,
  `MontajBitisTarihi` DATETIME(6) NULL);

-- ----------------------------------------------------------------------------
-- Table master.vwStokListesiGridDoldur
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`vwStokListesiGridDoldur` (
  `IDStokKart` INT NOT NULL,
  `IDStokGrup` INT NULL,
  `StokGrupAdi` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL,
  `StokBirimi` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL,
  `StokUstBirim` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL,
  `StokKodu` VARCHAR(30) CHARACTER SET 'utf8mb4' NULL,
  `Barkod` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `StokAdi` VARCHAR(100) CHARACTER SET 'utf8mb4' NULL,
  `KdvOrani` INT NULL,
  `AlisIskontoOrani` DOUBLE NULL,
  `AlisIskontoTutari` DOUBLE NULL,
  `SatisIskontoOrani` DOUBLE NULL,
  `SatisIskontoTutari` DOUBLE NULL,
  `Giren` DOUBLE NULL,
  `Cikan` DOUBLE NULL,
  `Kalan` DOUBLE NULL,
  `AlisKdvDurumu` VARCHAR(5) CHARACTER SET 'utf8mb4' NULL,
  `AlisFiyati` DOUBLE NULL,
  `SatisKdvDurumu` VARCHAR(5) CHARACTER SET 'utf8mb4' NULL,
  `SatisFiyati` DOUBLE NULL);

-- ----------------------------------------------------------------------------
-- Table master.spt_monitor
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`spt_monitor` (
  `lastrun` DATETIME(6) NOT NULL,
  `cpu_busy` INT NOT NULL,
  `io_busy` INT NOT NULL,
  `idle` INT NOT NULL,
  `pack_received` INT NOT NULL,
  `pack_sent` INT NOT NULL,
  `connections` INT NOT NULL,
  `pack_errors` INT NOT NULL,
  `total_read` INT NOT NULL,
  `total_write` INT NOT NULL,
  `total_errors` INT NOT NULL);

-- ----------------------------------------------------------------------------
-- Table master.MSreplication_options
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `master`.`MSreplication_options` (
  `optname` VARCHAR(160) NOT NULL,
  `value` TINYINT(1) NOT NULL,
  `major_version` INT NOT NULL,
  `minor_version` INT NOT NULL,
  `revision` INT NOT NULL,
  `install_failures` INT NOT NULL);

-- ----------------------------------------------------------------------------
-- View master.spt_values
-- ----------------------------------------------------------------------------
-- USE `master`;
-- 
-- create  OR REPLACE view spt_values as
-- select name collate database_default as name,
-- 	number,
-- 	type collate database_default as type,
-- 	low, high, status
-- from sys.spt_values
-- ;

-- ----------------------------------------------------------------------------
-- View master.sp_MSrepl_startup
-- ----------------------------------------------------------------------------
-- USE `master`;
-- 
-- create  OR REPLACE procedure dbo.sp_MSrepl_startup
-- as
--     exec sys.sp_MSrepl_startup_internal
-- ;

-- ----------------------------------------------------------------------------
-- View master.sp_MScleanupmergepublisher
-- ----------------------------------------------------------------------------
-- USE `master`;
-- create  OR REPLACE procedure dbo.sp_MScleanupmergepublisher
-- as
--     exec sys.sp_MScleanupmergepublisher_internal
-- ;

-- ----------------------------------------------------------------------------
-- Routine master.sp_MSrepl_startup
-- ----------------------------------------------------------------------------
-- DELIMITER $$
-- 
-- DELIMITER $$
-- USE `master`$$
-- 
-- create procedure dbo.sp_MSrepl_startup
-- as
--     exec sys.sp_MSrepl_startup_internal
-- $$
-- 
-- DELIMITER ;
-- 
-- ----------------------------------------------------------------------------
-- Routine master.sp_MScleanupmergepublisher
-- ----------------------------------------------------------------------------
-- DELIMITER $$
-- 
-- DELIMITER $$
-- USE `master`$$
-- create procedure dbo.sp_MScleanupmergepublisher
-- as
--     exec sys.sp_MScleanupmergepublisher_internal
-- $$
-- 
-- DELIMITER ;
-- SET FOREIGN_KEY_CHECKS = 1;
