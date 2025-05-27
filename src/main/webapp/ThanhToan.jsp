<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Đặt Phòng Sang Trọng</title>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">
<style>
/* Reset và cấu hình chung */
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: 'Poppins', sans-serif;
	background: linear-gradient(to right, #e3f2fd, #ffffff);
	color: #333;
	line-height: 1.6;
}

/* Container chính */
.container {
	max-width: 1200px;
	margin: 40px auto;
	background: #fff;
	box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
	border-radius: 12px;
	display: flex;
	overflow: hidden;
}

/* Các cột */
.section {
	padding: 30px;
	flex: 1;
	border-right: 1px solid #f0f0f0;
	background-color: #ffffff;
	transition: transform 0.3s ease-in-out;
}

.section:last-child {
	border-right: none;
}

.section:hover {
	transform: translateY(-5px);
}

h3 {
	font-size: 22px;
	font-weight: 600;
	margin-bottom: 20px;
	color: #007bff;
	border-bottom: 2px solid #007bff;
	padding-bottom: 10px;
}

p {
	font-size: 15px;
	margin-bottom: 10px;
}

hr {
	border: 0;
	border-top: 1px solid #ddd;
	margin: 15px 0;
}

.highlight {
	color: #e74c3c;
	font-weight: bold;
}

/* Thông tin phòng */
.price-detail {
	display: flex;
	justify-content: space-between;
	margin-bottom: 15px;
	font-size: 16px;
}

.grand-total {
	font-size: 20px;
	font-weight: 700;
	color: #27ae60;
}

/* Form nhập liệu */
input[type="text"], input[type="email"], input[type="password"], input[type="tel"]
	{
	width: 100%;
	padding: 12px;
	margin-bottom: 15px;
	border: 1px solid #ddd;
	border-radius: 8px;
	font-size: 14px;
	transition: all 0.3s ease-in-out;
}

input:focus {
	border-color: #007bff;
	box-shadow: 0 0 8px rgba(0, 123, 255, 0.2);
	outline: none;
}

a {
	color: #e74c3c;
	text-decoration: none;
	font-size: 14px;
}

a:hover {
	text-decoration: underline;
}

/* Nút thanh toán */
.btn-submit {
	background: linear-gradient(to right, #28a745, #218838);
	color: #fff;
	border: none;
	padding: 14px;
	font-size: 16px;
	font-weight: 600;
	border-radius: 8px;
	cursor: pointer;
	transition: background 0.3s ease-in-out, transform 0.3s ease;
	text-transform: uppercase;
	display: inline-block;
	width: 100%;
}

.btn-submit:hover {
	background: linear-gradient(to right, #218838, #1e7e34);
	transform: translateY(-3px);
}

/* Phương thức thanh toán */
.payment-method img {
	width: 60px;
	margin: 10px 10px 20px 0;
	border-radius: 8px;
	box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
}

.checkbox-group {
	display: flex;
	align-items: center;
	gap: 10px;
	margin-bottom: 15px;
}

@media ( max-width : 768px) {
	.container {
		flex-direction: column;
	}
	.section {
		border-right: none;
		border-bottom: 1px solid #ddd;
	}
	.section:last-child {
		border-bottom: none;
	}
}

.payment-method {
	display: flex;
	gap: 20px;
}

.payment-method label {
	cursor: pointer;
	transition: transform 0.2s ease-in-out;
}

.payment-method input[type="radio"] {
	display: none;
}

.payment-method img {
	width: 60px;
	height: 40px;
	border-radius: 8px;
	transition: transform 0.3s ease-in-out;
	border: 2px solid transparent;
}

.payment-method input[type="radio"]:checked+img {
	border-color: #007bff;
	transform: scale(1.1);
}
</style>
</head>
<body>
	<div class="container">
		<!-- Cột 1: Thông tin đặt phòng -->
		<div class="section">
			<h3>Thông Tin Đặt Phòng</h3>
			<p class="highlight">Ưu Đãi Đặc Biệt - Giảm 28%</p>
			<div class="price-detail">
				<span>Phòng Deluxe King - 1 Đêm</span> <span>$120.96</span>
			</div>
			<p>1 người lớn &#128197;</p>
			<hr>
			<div class="price-detail">
				<span>Giá Phòng</span> <span>$120.96</span>
			</div>
			<div class="price-detail">
				<span>Sô ngày đặt phòng</span> <span>4 ngày</span>
			</div>
			<hr>
			<div class="price-detail grand-total">
				<span>Tổng Cộng</span> <span>$139.71</span>
			</div>
		</div>

		<!-- Cột 2: Form khách hàng -->
		<div class="section">
			<h3>Thông Tin Khách Hàng</h3>
			<p>
				<a href="#">Đăng nhập nếu bạn đã có tài khoản</a>
			</p>
			<form>
				<input type="text" placeholder="Họ và Tên" required> <input
					type="email" placeholder="Email" required> <input
					type="tel" placeholder="Số Điện Thoại" required> <input
					type="password" placeholder="Mật Khẩu (nếu có)" required>
			</form>
		</div>

		<!-- Cột 3: Thanh Toán -->
		<!-- Cột 3: Thanh Toán -->
		<div class="section">
			<h3>Phương Thức Thanh Toán</h3>
			<form action="GenerateQRCode" method="get">
				<!-- Lựa chọn thanh toán bằng thẻ -->
				<div class="checkbox-group">
					<input type="radio" id="creditCard" name="payment" required checked>
					<label for="creditCard">Thanh toán bằng thẻ tín dụng/ghi nợ</label>
				</div>
				<div class="checkbox-group">
					<input type="radio" id="payAfter" name="payment" required>
					<label for="payAfter">Thanh toán sau khi nhận phòng</label>
				</div>
				<div class="checkbox-group">
					<input type="radio" id="bankTransfer" name="payment" required>
					<label for="bankTransfer">Thanh toán qua ngân hàng</label>
				</div>

				<!-- Thông tin thanh toán bằng thẻ -->
				<div id="creditCardForm">
					<div class="payment-method">
						<label for="visa"> <input type="radio" id="visa"
							name="paymentMethod" class="payment-option" required> <img
							src="https://via.placeholder.com/60x40?text=Visa" alt="Visa" />
						</label> <label for="mastercard"> <input type="radio"
							id="mastercard" name="paymentMethod" class="payment-option"
							required> <img
							src="https://via.placeholder.com/60x40?text=MasterCard"
							alt="MasterCard" />
						</label> <label for="jcb"> <input type="radio" id="jcb"
							name="paymentMethod" class="payment-option" required> <img
							src="https://via.placeholder.com/60x40?text=JCB" alt="JCB" />
						</label> <label for="amex"> <input type="radio" id="amex"
							name="paymentMethod" class="payment-option" required> <img
							src="https://via.placeholder.com/60x40?text=Amex" alt="Amex" />
						</label>
					</div>
					<input type="text" placeholder="Tên Trên Thẻ" required> <input
						type="text" placeholder="Số Thẻ" required> <input
						type="text" placeholder="Ngày Hết Hạn (MM/YY)" required> <input
						type="text" placeholder="Mã CVV" required>
				</div>

				<!-- Thông tin thanh toán qua ngân hàng -->
				<div id="bankTransferForm" style="display: none;">
					<p>
						<strong>Thông tin thanh toán qua ngân hàng:</strong>
					</p>
					<p>Vui lòng chuyển khoản vào tài khoản ngân hàng dưới đây:</p>
					<p>
						<strong>Ngân hàng:</strong> ABC Bank
					</p>
					<p>
					</p>
					<p>
						<strong>Chủ tài khoản:</strong> Công ty ABC
					</p>
					<%
					// Thay đổi chuỗi này thành thông tin thanh toán ngân hàng hoặc mã giao dịch
					String maGiaoDich = "Mã Giao Dịch: 0947388807, Ngân Hàng: ABC";
					%>
						
					<img
						src="GenerateQRCode?data=<%=java.net.URLEncoder.encode(maGiaoDich, "UTF-8")%>"
						alt="QR Code" style="width: 200px; height: 200px;">
				</div>

				<div class="checkbox-group">
					<input type="checkbox" id="promo" required> <label
						for="promo">Nhận thông tin khuyến mãi</label>
				</div>
				<div class="checkbox-group">
					<input type="checkbox" id="agree" required> <label
						for="agree">Đồng ý với <a href="#">Điều khoản & Điều
							kiện</a></label>
				</div>
				<button type="submit" class="btn-submit">Thanh Toán Ngay</button>
			</form>
		</div>
</div>
		<script>
			document.addEventListener("DOMContentLoaded",
					function() {
						const creditCardOption = document
								.getElementById("creditCard");
						const payAfterOption = document
								.getElementById("payAfter");
						const bankTransferOption = document
								.getElementById("bankTransfer");
						const creditCardForm = document
								.getElementById("creditCardForm");
						const bankTransferForm = document
								.getElementById("bankTransferForm");

						function togglePaymentForms() {
							if (creditCardOption.checked) {
								creditCardForm.style.display = "block";
								bankTransferForm.style.display = "none";
							} else if (bankTransferOption.checked) {
								creditCardForm.style.display = "none";
								bankTransferForm.style.display = "block";
							} else {
								creditCardForm.style.display = "none";
								bankTransferForm.style.display = "none";
							}
						}

						creditCardOption.addEventListener("change",
								togglePaymentForms);
						payAfterOption.addEventListener("change",
								togglePaymentForms);
						bankTransferOption.addEventListener("change",
								togglePaymentForms);

						// Mặc định ẩn form thanh toán ngân hàng
						togglePaymentForms();
					});
		</script>
</html>