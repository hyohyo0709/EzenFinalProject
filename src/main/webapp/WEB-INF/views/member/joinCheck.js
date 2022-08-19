 $(document).ready(function () {
         $("#submit").click(function () {
          
          let member_id = $("#member_id").val();
          let member_pass = $("#member_pass").val();
          let member_passChk = $("#member_passChk").val();
          let member_email = $("#member_email").val();
          let member_name = $("#member_name").val();
          let member_phone = $("#member_phone").val();
          let member_address = $("#member_address").val();
          return checkAll(member_id, member_pass, member_passChk,  member_email, member_name, member_phone,member_address);
        });
      });

      function checkID(member_id) {
        if (member_id == "") {
          alert("아이디를 입력하세요");
          return false;
        }
        if (member_id.match(/^[a-zA-Z0-9]{4,12}$/)) {
          return true;
        } else {
          alert("아이디는 4~12자리의 영문 대소문자와 숫자로만 입력하세요");
          return false;
        }
      }

      function checkPWChk(member_pass, member_passChk) {
          if (member_pass == "" || member_passChk == "") {
            alert("비밀번호를 입력해주세요.");
            return false;
          }
          if (member_pass === member_passChk) {
            return true;
          } else {
            alert("비밀번호가 일치하지 않습니다.");
            return false;
          }
          
     function checkPW(member_pass) {        
          if (member_pass.match(/^[a-zA-Z0-9]{4,12}$/)) {
            return true;
          } else {
            alert(
              "비밀번호는 4~12자리의 영문 대소문자와 숫자로만 입력하세요."
            );
            return false;
          }
        }


      function checkEmail(member_email) {
        if (member_email == "") {
          alert("이메일을 입력하세요");
          return false;
        }
        if (
        		member_email.match(
            /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i
          )
        ) {
          return true;
        } else {
          alert("이메일 형식에 맞게 입력하세요");
          return false;
        }
      }

      function checkName(member_name) {
        if (member_name == "") {
          alert("이름을 입력하세요");
          return false;
        }
        if (member_name.match(/^[가-힣]{2,4}$/)) {
          return true;
        } else {
          alert("이름을 5자 이내로 입력하세요");
          return false;
        }
      }

      function checkPhone(member_phone) {
        if (member_phone == "") {
          alert("휴대폰 번호를 입력하세요");
          return false;
        }
        if (member_phone.match(/^[0-9]{10,11}$/)) {
          return true;
        } else {
          alert("휴대폰 번호를 확인해주세요");
          return false;
        }
      }
      function checkAll(member_id, member_pass, member_passChk, member_email, member_name, member_phone) {
        return (
          checkID(member_id) &&
          checkPW(member_pass, member_passChk) &&
          checkEmail(member_email) &&
          checkName(member_name) &&
          checkPhone(member_phone)
        );
      }
      }