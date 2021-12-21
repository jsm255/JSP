


        function checkAll(form) {
            if (form.all.checked) {
                $(form.must).prop("checked", true);
                $(form.free).prop("checked", true);
            }
            else {
                $(form.must).prop("checked", false);
                $(form.free).prop("checked", false);
            }
        }
        
        
        // 얘도 된거
        $(".agree").submit(e => {
            e.preventDefault();
            let mustCnt = 0;
            for(let i = 0; i<$(".agree #must").length; i++) {
                if($(".agree #must")[i].checked) mustCnt++;
            }
        
            if(mustCnt >= 2) document.querySelector(".agree").submit();
			// jquery를 사용할때 $() jquery선택자를 쓰면 submit()이 on submit 이벤트로 처리됨
			// 그 경우 밑에 $().submit을 사용하면 콜백함수가 되어버림
			// 기본 javascript 선택자인 document.querySelector().submit()를 써야 정상적으로 데이터를 전송함
            else alert("필수 약관에 동의해주세요.");
        });
        
        // 되었던거
        //     function go(form){
        //     let mustCnt = 0;
        //     for(let i = 0; i<form.must.length; i++) {
        //         if(form.must[i].checked) mustCnt++;
        //     }
        
        //     console.log(mustCnt);
        
        //     if(mustCnt >= 2) form.submit();
        //     alert("필수 약관에 동의해주세요.");
        // };

        $(".join").submit(e => {
            e.preventDefault();

            let check = true;
            
            if($(".join #id").val() === "") check = false;
            if($(".join #pw").val() === "") check = false;
            if($(".join #pwre").val() === "") check = false;
            if($(".join #pw").val() === "" || $(".join #pw").val() !== $(".join #pwre").val()) check = false;

            if($(".join #name").val() === "") check = false;

            if($(".join #year").val() === "") check = false;
            if($(".join #month").val() === "none") check = false;
            if($(".join #date").val() === "") check = false;

            if($(".join #gender").val() === "none") check = false;

            if($(".join #tel").val() === "") check = false;

            if(check === false) alert("이메일을 제외하고 빠짐없이 채워주세요.");
            else document.querySelector(".join").submit();
        });

		

