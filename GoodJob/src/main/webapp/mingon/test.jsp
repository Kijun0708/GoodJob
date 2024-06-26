<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<%@include file="/WEB-INF/views/inc/asset.jsp"%>
<style>

#itvSearchInput {
	position: 
}

#suggestions {
  position: relative
  background-color: #fff;
  border: 1px solid #ccc;
  border-top: none;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
  z-index: 1;
  width: 500px;
   
}

#suggestions div {
  width : 500px;
  padding: 8px 12px;
  cursor: pointer;
}

#suggestions div:hover {
  background-color: #f1f1f1;
}
</style>
</head>
<%@include file="/WEB-INF/views/inc/header.jsp"%>
<body>
	<section class="integration-single section pt-0">
		<div class="container">
			<div class="row justify-center">
				<div class="lg:col-10 mt-16">
					<div
						class="integration-single-container rounded-xl bg-white py-16 px-5 shadow-lg md:px-10 tab"
						data-tab-group="service-tab" id="itvWriteQnA">
						<div class="px-4 text-center">
							<h1 class="mt-3 gradiTitle">
								<span>면접 후기</span>
							</h1>
							<p class="mt-2">작성해주신 면접 후기는 익명으로 등록됩니다.</p>
						</div>
						<div class="mt-8 border-y border-border py-10 text-left">
							<div>
								<h5>기본 정보 입력</h5>
								<div class="form-group mb-5 mt-2 itvCpContent">
									<div class="itvInputContainer">
									<label class="itv-label" for="name">회사명</label> <input
										class="form-control itvCpname" type="text"
										placeholder="회사명을 입력해주세요." id="itvSearchInput" onkeyup="showSuggestions()"/> <input
										class="btn btn-primary block btn-sm" type="submit" value="검색" />
										<div id="suggestions"></div>
									</div>
								</div>
							</div>
							<div class="space-btw mt-2">
								<div class="itvCpContent">
									<label class="itv-label">면접 당시 경력</label>
									<div class="form-group itvCpContent">
										<input type="radio" name="experience" id="new"> <label
											for="new">신입</label> <input type="radio" name="experience"
											id="career"> <label for="career">경력</label>
									</div>
								</div>
								<div class="itvCpContent">
									<label class="itv-label">면접 일자</label>
									<div class="form-group itvCpContent">
										<select>
											<option>연도 선택</option>
											<option>2021</option>
											<option>2022</option>
											<option>2023</option>
											<option>2024</option>
										</select> <select>

											<option>월 선택</option>
											<option value="1">1월</option>
											<option value="2">2월</option>
											<option value="3">3월</option>
											<option value="4">4월</option>
											<option value="5">5월</option>
											<option value="6">6월</option>
											<option value="7">7월</option>
											<option value="8">8월</option>
											<option value="9">9월</option>
											<option value="10">10월</option>
											<option value="11">11월</option>
											<option value="12">12월</option>
										</select>
									</div>
								</div>
							</div>
						</div>
						<div class="border-b border-border py-10">
							<h5>면접 정보 입력</h5>
							<div class="itvCpContent">
								<label class="itv-label" for="name">전반적 평가</label>
								<div class="itv-toolbar">
									<input type="radio" id="opinion1" name="opinion" value="1">
										<label for="opinion1"> 긍정적</label> 
									<input type="radio" id="opinion2" name="opinion" value="2">
										<label for="opinion2">보통</label>
									<input type="radio" id="opinion3" name="opinion" value="3"> 
								 		<label for="opinion3">부정적</label>
								</div>

							</div>
							<div class="itvCpContent">
								<label class="itv-label" for="name">난이도</label>
								<div class="itv-toolbar">
									<input type="radio" id="opinion4" name="difficulty" value="1">
										<label for="opinion4">쉬움</label> 
									<input type="radio" id="opinion5" name="difficulty" value="2"> 
										<label for="opinion5">보통</label> 
									<input type="radio" id="opinion6" name="difficulty" value="3"> 
										<label for="opinion6">어려움</label>
								</div>

							</div>
							<div class="mt-6">
								<label class="itv-label" for="name">면접 및 전형 유형 필수 (다중 선택
									가능)</label>
								<div class="itvCpContent">
									<label> <input type="radio" name="option" checked>
										직무 및 인성면접
									</label> <label> <input type="radio" name="option">
										PT면접
									</label> <label> <input type="radio" name="option">
										토론면접
									</label> <label> <input type="radio" name="option" checked>
										실무 과제 및 시험
									</label> <label> <input type="radio" name="option"> 인적성
										검사
									</label> <label> <input type="radio" name="option"> 기타
									</label>
								</div>
							</div>
							<div class="mt-6">
								<label class="itv-label" for="name">면접 인원 필수</label>
								<div class="itvCpContent">
									<label> <input type="radio" name="option" checked>
										1:1 면접
									</label> <label> <input type="radio" name="option"> 지원자
										1명, 면접관다수
									</label> <label> <input type="radio" name="option"> 그룹
										면접
									</label>
								</div>
							</div>
						</div>
						<div class="border-b border-border py-10">
							<h5>합격 정보 입력</h5>
							<div class="mt-6">
								<label class="itv-label" for="name">가장 기억에 남는 면접 질문</label>
								<div class="form-group mt-2">
									<form>
										<input class="form-control h-1" type="text"
											placeholder="ex) 회사를 선택한 이유" /> 
									</form>
								</div>
							</div>
							<div class="form-group mt-6">
								<label class="itv-label" for="name">면접 TIP 및 특이 사항</label>
								<div class="form-group itvCpContent mt-2">
									<input class="form-control h-1" type="text"
										placeholder="분위기, 준비 TIP을 공유해주세요." />
								</div>
							</div>
							<div class="form-group mt-6">
								<label class="itv-label" for="name">합격 여부</label>
								<div class="form-group itvCpContent">
									<div class="itv-toolbar">
										<input type="radio" id="opinion1" name="opinion" value="1">
										<label for="opinion1">합격</label> <input type="radio"
											id="opinion2" name="opinion" value="2"> <label
											for="opinion2">불합격</label> <input type="radio" id="opinion3"
											name="opinion" value="3"> <label for="opinion3">대기중</label>
									</div>

								</div>
							</div>
						</div>
						<div class="text-center mt-4">
							<p>
								면접 후기에 대한 저작권은 IT's Good Job에 있습니다. <br>등록하신 콘텐츠는 임의로 삭제하실
								수 없습니다.
							</p>
							<input class="btn btn-primary mt-4" type="submit" value="등록" />
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%@include file="/WEB-INF/views/inc/footer.jsp"%>
	<script>
	function showSuggestions() {
		  const input = document.getElementById("itvSearchInput").value.toLowerCase();
		  const suggestionsList = document.getElementById("suggestions");
		  suggestionsList.innerHTML = "";


		  const companies = ["Apple", "Amazon", "Google", "Microsoft", "Samsung"];

		  // 입력값과 일치하는 회사명 찾기
		  const matchedCompanies = companies.filter(company =>
		    company.toLowerCase().startsWith(input)
		  );

		  // 일치하는 회사명을 suggestions div에 추가
		  matchedCompanies.forEach(company => {
		    const suggestion = document.createElement("div");
		    suggestion.textContent = company;
		    suggestionsList.appendChild(suggestion);
		  });
		}
	</script>
</body>
</html>