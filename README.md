
# Dev-land Tweak for WhatsApp

تويك احترافي لتطبيق WhatsApp من تطوير فريق **Dev-land**

---

## ✅ الميزات:
- تغيير الخط داخل التطبيق
- تزييف الموقع الجغرافي مع واجهة خريطة تفاعلية
- بدء محادثة بدون حفظ الرقم في جهات الاتصال
- تعطيل المكالمات الواردة داخل التطبيق
- عرض اسم صاحب الرقم عبر NumberBook
- نافذة ترحيبية داخل التطبيق (مرحبًا، المصمم: @Ee3tz)
- زر إعدادات مدمج بأعلى شاشة WhatsApp
- إخفاء جميع المحادثات عند النقر مرتين خلف الجهاز

---

## 📦 طريقة التثبيت:

### 1. على جهاز Jailbreak:
- ثبت الحزمة `dev-land_1.0_iphoneos-arm.deb` عبر Filza أو:
```bash
dpkg -i dev-land_1.0_iphoneos-arm.deb
```

### 2. على جهاز غير مروّت:
- استخدم `Dev-land.dylib` وادمجه داخل تطبيق WhatsApp بصيغة IPA باستخدام أدوات مثل:
  - `insert_dylib`
  - `ldid`
  - `zsign`

---

## 📡 إعداد خدمة البحث عن الرقم:
1. شغّل السكربت `numberbook_flask_api.py` على سيرفر أو جهازك:
```bash
pip install flask beautifulsoup4 requests
python3 numberbook_flask_api.py
```
2. تأكد أن التويك يستطيع الوصول إلى `http://localhost:5050/lookup?number=...`

---

## 🧠 التواصل والدعم:
- المصمم: [@Ee3tz](https://t.me/Ee3tz)
- الدعاء له ولوالديه بالجنة 💙

---

