<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>master product</title>
</head>
<body>
	<form action="ProductC" method="post" enctype="multipart/form-data" id="masterReg_container">
		<div class="masterReg_title">
			<strong>상품등록 페이지</strong>
			<p>상품등록 페이지 입니다.</p>
		</div>
		<div class="masterReg_contentsWrapper">
			<table>
				<tbody>
					<tr>
						<td class="masterReg_td1"><span>제품 명</span></td>
						<td class="masterReg_td2"><input type="text"
							class="masterReg_pdinput" placeholder="EX) PolyPotion"></td>
					</tr>
					<tr>
						<td class="masterReg_td1"><span>제품 브랜드 지정</span></td>
						<td class="masterReg_td2"><select name="brand">
								<option value="shan_hai_jing">SHAN HAI JING</option>
								<option value="trinity">TRINITY</option>
								<option value="abydos">ABYDOS</option>
								<option value="gehenna">GEHENNA</option>
								<option value="srt">SRT</option>
								<option value="arius">ARIUS</option>
						</select></td>
					</tr>
					<tr>
						<td class="masterReg_td1"><span>제품 가격</span></td>
						<td class="masterReg_td2">
						<input type="number" class="masterReg_pdinput" placeholder=", 없이 숫자만 입력해주세요"></td>
					</tr>
					<tr>
						<td class="masterReg_td1"><span>제품 이미지 등록 (썸네일)</span></td>
						<td class="masterReg_td2"><input name="tilte_img" type="file"></td>
					</tr>
					<tr>
						<td class="masterReg_td1"><span>제품 상세 이미지 등록</span></td>
						<td class="masterReg_td2"><input name="content_img"
							type="file"></td>
					</tr>
					<tr>
						<td class="masterReg_td1"><span>신제품 여부</span></td>
						<td class="masterReg_td2"><label><input name="p_new"
								type="radio" value="1">신제품 YES</label> <label><input
								name="p_new" type="radio" value="0" checked="checked">신제품 NO</label></td>
					</tr>
					<tr>
						<td class="masterReg_td1"><span>세일 품목 여부</span></td>
						<td class="masterReg_td2">
							<label><input name="sale" type="radio" value="1">세일 YES</label>
							<label><input name="sale" type="radio" value="0" checked="checked">세일 NO</label>
						</td>
					</tr>
					<tr>
						<td class="masterReg_td1"><span>세일 금액</span></td>
						<td class="masterReg_td2">
							<input type="number" name="saleprice" class="masterReg_pdinput" placeholder=", 없이 숫자만 입력해주세요">
						</td>
					</tr>
				</tbody>
			</table>
		</div>
			<button class="btn btn-primary">등록</button>
	</form>
</body>
</html>