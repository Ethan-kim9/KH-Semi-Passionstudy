<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <title>Welcome Passion StudyCafe~!</title>
  </head>
  <body>
  
    <div class="cont_header">
      <div class="cont_wrapper">
        <h1>커뮤니티</h1>
      </div>
    </div>



    <section>
      <div id="board">
        <div id="board_main">
          <div id="board_form">
            <form id="board_form_title" action="board_notice_manager_write" method="post">
              <input
                type="text"
                name="title"
                class="form-control mt-4 mb-2"
                placeholder="제목을 입력해주세요."
                required
              />
              <div class="form-group">
                <textarea
                  class="form-control"
                  rows="10"
                  name="content"
                  placeholder="내용을 입력해주세요"
                  required
                ></textarea>
              </div>
              <div class="board_write_btn">
                  <input type="submit" class="write_btn yb" value="등록하기"/>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>

  </body>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</html>
