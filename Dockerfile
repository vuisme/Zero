# Sử dụng image Node.js v16 làm base image
FROM node:16

# Tạo thư mục làm việc trong container
WORKDIR /app

# Sao chép package.json và package-lock.json vào container
COPY package*.json ./

# Cài đặt các dependency
RUN npm install

# Sao chép toàn bộ code của dự án vào container
COPY . .

# Expose port mà bot sẽ sử dụng (nếu có)
# EXPOSE <port>

# Lệnh mặc định để chạy bot
CMD ["npm", "start"]
