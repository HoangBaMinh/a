package com.example.vinfast.constant;

public class SystemConstant {
    public static final String MODEL = "model";
    public static final String BOOK = "book";
    public static final String CATEGORY = "category";
    public static final String USER = "user";
    public static final String HOTPRODUCT = "hotproduct";
    public static final String UPLOADPATH = "D:\\jv\\testJsp\\src\\main\\webapp\\template\\web\\images\\";
}
//Lớp này chứa các giá trị cố định (hằng số) được sử dụng ở nhiều nơi trong ứng dụng.
//Các hằng số này thường được dùng để đảm bảo tính thống nhất (không phải khai báo trùng lặp) và dễ bảo trì
// (chỉ cần sửa tại một nơi nếu cần thay đổi).

//Lớp `SystemConstant` trong mã nguồn của bạn là một **lớp chứa các hằng số** dùng chung trong hệ thống. Dưới đây là phần giải thích chi tiết:
//
//---
//
//### **1. Mục đích**
//- **`SystemConstant`**:
//  - Lớp này chứa các giá trị cố định (hằng số) được sử dụng ở nhiều nơi trong ứng dụng.
//  - Các hằng số này thường được dùng để đảm bảo tính thống nhất (không phải khai báo trùng lặp) và dễ bảo trì (chỉ cần sửa tại một nơi nếu cần thay đổi).
//
//---
//
//### **2. Ý nghĩa từng hằng số**
//
//#### **2.1. `MODEL`, `BOOK`, `CATEGORY`, `USER`, `HOTPRODUCT`**
//```java
//public static final String MODEL = "model";
//public static final String BOOK = "book";
//public static final String CATEGORY = "category";
//public static final String USER = "user";
//public static final String HOTPRODUCT = "hotproduct";
//```
//- Các hằng số này được dùng làm **key (tên định danh)** khi:
//  - Gửi/nhận dữ liệu giữa các thành phần trong ứng dụng, ví dụ:
//    - Trong request hoặc response của Servlet/JSP.
//    - Làm tham số trong các phương thức xử lý logic.
//  - Lưu trữ các loại dữ liệu khác nhau.
//
//**Ví dụ:**
//- **`MODEL`**: Có thể là key trong một đối tượng `HttpServletRequest` hoặc `HttpServletResponse` để lưu dữ liệu cần truyền vào JSP.
//  ```java
//  request.setAttribute(SystemConstant.MODEL, someModelObject);
//  ```
//- **`BOOK`**, **`CATEGORY`**, **`USER`**, **`HOTPRODUCT`**:
//  - Được dùng để xác định loại dữ liệu, ví dụ:
//    - **`BOOK`**: Đối tượng sách trong hệ thống.
//    - **`CATEGORY`**: Thể loại sách hoặc sản phẩm.
//    - **`USER`**: Người dùng hệ thống.
//    - **`HOTPRODUCT`**: Sản phẩm nổi bật trên giao diện người dùng.



//#### **2.2. `UPLOADPATH`**
//```java
//public static final String UPLOADPATH = "D:\\jv\\testJsp\\src\\main\\webapp\\template\\web\\images\\";
//```
//- **`UPLOADPATH`**: Là đường dẫn tuyệt đối trên máy chủ nơi lưu trữ các tệp (ví dụ: hình ảnh).
//  - Trong ứng dụng, đường dẫn này có thể được dùng để lưu file ảnh tải lên từ người dùng.
//
//**Ví dụ sử dụng:**
//- Khi người dùng tải một file ảnh, ứng dụng sẽ lưu file này vào thư mục `UPLOADPATH`:
//  ```java
//  String filePath = SystemConstant.UPLOADPATH + fileName;
//  filePart.write(filePath);
//  ```

//**Lưu ý**:
//- Đường dẫn này là **cố định**, chỉ hoạt động trên máy tính hoặc server cụ thể có thư mục `D:\\jv\\testJsp\\src\\main\\webapp\\template\\web\\images\\`.
//- Nên cân nhắc:
//  - **Sử dụng đường dẫn tương đối** thay vì tuyệt đối để đảm bảo tính linh hoạt khi triển khai ứng dụng trên các môi trường khác nhau.
//  - Ví dụ thay `UPLOADPATH` bằng:
//    ```java
//    public static final String UPLOADPATH = "src/main/webapp/template/web/images/";
//    ```

//### **3. Ưu điểm của lớp `SystemConstant`**
//- **Tính tái sử dụng:** Các hằng số được khai báo một lần và có thể sử dụng ở nhiều nơi.
//- **Giảm lỗi:** Tránh việc khai báo giá trị lặp lại (hard-code) nhiều lần, giúp giảm thiểu lỗi do viết sai.
//- **Dễ bảo trì:** Nếu cần thay đổi một giá trị (ví dụ đường dẫn upload), chỉ cần chỉnh sửa tại một chỗ.

//### **4. Cải thiện và lưu ý**
//1. **Tổ chức đường dẫn một cách linh hoạt:**
//   - Thay vì sử dụng đường dẫn tuyệt đối, hãy lấy đường dẫn từ cấu hình (ví dụ `application.properties` hoặc `web.xml`) để dễ quản lý hơn khi triển khai ứng dụng.

//   **Ví dụ: Sử dụng biến môi trường hoặc file cấu hình:**
//   ```java
//   public static final String UPLOADPATH = System.getProperty("user.dir") + "/src/main/webapp/template/web/images/";

//2. **Đặt tên hằng số theo quy ước chuẩn:**
//   - Tất cả các hằng số trong Java nên đặt tên bằng chữ in hoa và sử dụng dấu gạch dưới `_` để phân cách:
//     - Ví dụ: `HOT_PRODUCT` thay vì `HOTPRODUCT`.
//
//3. **Cấu trúc hằng số theo nhóm:**
//   - Nếu số lượng hằng số lớn, có thể nhóm chúng thành các lớp con hoặc sử dụng enum để quản lý tốt hơn.
