# 1️⃣ نختار Base Image تحتوي على Node.js
FROM node:20-alpine

# 2️⃣ نحدد مجلد العمل داخل الحاوية (container)
WORKDIR /app

# 3️⃣ ننسخ ملفات تعريف المشروع (package.json)
COPY package*.json ./

# 4️⃣ نثبت الـ dependencies
RUN npm install

# 5️⃣ ننسخ بقية ملفات المشروع إلى الحاوية
COPY . .

# 6️⃣ نفتح المنفذ اللي التطبيق بيستخدمه
EXPOSE 3000

# 7️⃣ نحدد الأمر اللي يبدأ التطبيق
CMD ["npm", "start"]

