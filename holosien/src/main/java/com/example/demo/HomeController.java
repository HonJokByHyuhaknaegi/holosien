package com.example.demo;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.board.domain.BoardVO;
import com.example.demo.board.domain.CommentVO;
import com.example.demo.board.domain.ReviewVO;
import com.example.demo.board.service.BoardService;
import com.example.demo.member.domain.MemberVO;
import com.example.demo.member.service.MemberService;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@Controller
public class HomeController {


	 @Resource(name="com.example.demo.board.service.BoardService")
	 BoardService bBoardService;
	 
   @RequestMapping(value="/")
   public String home() {
         return "home";
      }
   
   @RequestMapping(value="/join")
   public String join() {
         return "join";
      }
   
   @RequestMapping(value="/myPage")
   public String myPage() {
         return "myPage";
      }
   
   @RequestMapping(value="/emailJoin")
   public String emailJoin() {
         return "emailJoin";
      }
   
   @RequestMapping(value="/kakaoJoin")
   public String kakaoJoin() {
         return "kakaoJoin";
      }
   
   @RequestMapping(value="/login")
   public String login() {
         return "login";
      }
   
   @RequestMapping(value="/logout")
   public String logout(HttpSession session) {
      session.invalidate();
         return "home";
      }
   
   @RequestMapping(value="/together")
   public String together(Model model,@RequestParam(value="category", required=false, defaultValue="all") String category) throws Exception {
	   model.addAttribute("category", category);
	   model.addAttribute("boardlist", bBoardService.boardListService(category));
         return "together";
      }
   @RequestMapping(value="/review")
   public String review(Model model,@RequestParam(value="category", required=false, defaultValue="all") String category) throws Exception{
	   model.addAttribute("category", category);
	   model.addAttribute("reviewlist", bBoardService.reviewListService(category));
	   return "review";
      }
   @RequestMapping(value="/tip")
   public String tip(Model model,@RequestParam(value="category", required=false, defaultValue="all") String category) throws Exception {
	   model.addAttribute("boardlist", bBoardService.boardListService(category));
         return "tip";
      }
   @RequestMapping(value="/map")
   public String map(Model model,@RequestParam(value="category", required=false, defaultValue="all") String category) throws Exception {
	   model.addAttribute("category", category);
	   model.addAttribute("boardlist", bBoardService.boardListService(category));
         return "map";
      }
/*   @RequestMapping(value="/list")
   public String list() throws Exception {
         return "list";
      }*/

   @RequestMapping(value="/comment")
   public String comment(Model model, @RequestParam(value="boardNo") int boardNo) throws Exception {
	   model.addAttribute("boardNo", (int)boardNo);
	   model.addAttribute("Commentlist", bBoardService.CommentListService(boardNo));
         return "comment";
      }
   
   @RequestMapping(value="/detailBoard")
   public String detailBoard(Model model, @RequestParam(value="boardNo") int boardNo) throws Exception {
	   BoardVO vo = new BoardVO();
	   vo.setBno(boardNo);
	   
	   model.addAttribute("board", bBoardService.viewBoard(vo));
         return "detailBoard";
      }
   
   @RequestMapping(value="/detailReview")
   public String detailReview(Model model, @RequestParam(value="reviewNo") int reviewNo) throws Exception {
	   ReviewVO vo = new ReviewVO();
	   vo.setBno(reviewNo);
	   
	   model.addAttribute("Commentlist", bBoardService.CommentListService(reviewNo));
	   model.addAttribute("review", bBoardService.viewReview(vo));
         return "detailReview";
      }
   
   @RequestMapping(value="/writeBoard")
   public String writeBoard() {
         return "writeBoard";
      }
   
   @RequestMapping(value="/writeReview")
   public String writeReview() {
         return "writeReview";
      }

   @RequestMapping(value="/writeComment")
   public String writeComment(Model model, @RequestParam(value="boardNo") int boardNo,
		   HttpServletRequest request, HttpSession session) throws Exception {
	   CommentVO Cvo = new CommentVO();
	   Cvo.setBoardNo(boardNo);
	   Cvo.setComment((String)request.getParameter("Comment_content"));
	   Cvo.setAge((int) session.getAttribute("userAge"));
	   Cvo.setGender((String) session.getAttribute("userGender"));
	   Cvo.setWriter((String) session.getAttribute("userName"));
	   Cvo.setWriterID((String) session.getAttribute("userID"));
	   bBoardService.CommentInsertService(Cvo);
	   
	   BoardVO vo = new BoardVO();
	   vo.setBno(boardNo);
	   model.addAttribute("board", bBoardService.viewBoard(vo));
         return "redirect:detailBoard?boardNo="+boardNo;
   }
   
   @RequestMapping(value="/deleteComment")
   public String deleteComment(Model model, @RequestParam(value="boardNo") int boardNo,
		   HttpServletRequest request, HttpSession session) throws Exception {
	   CommentVO Cvo = new CommentVO();
	   Cvo.setBoardNo(boardNo);
	   Cvo.setComment((String)request.getParameter("Comment_content"));
	   Cvo.setAge((int) session.getAttribute("userAge"));
	   Cvo.setGender((String) session.getAttribute("userGender"));
	   Cvo.setWriter((String) session.getAttribute("userName"));
	   Cvo.setWriterID((String) session.getAttribute("userID"));
	   bBoardService.CommentInsertService(Cvo);
	   
	   BoardVO vo = new BoardVO();
	   vo.setBno(boardNo);
	   model.addAttribute("board", bBoardService.viewBoard(vo));
         return "redirect:detailBoard?boardNo="+boardNo;
   }

   @RequestMapping(value="/send")
   public String send(Model model,HttpServletRequest request, HttpSession session,@RequestParam(value="category", required=false, defaultValue="all") String category) throws Exception {
	   BoardVO vo = new BoardVO();
	   
	   vo.setCategory((String) request.getParameter("category"));
	   vo.setPoint_x(Double.parseDouble(request.getParameter("location_position_x")));
	   vo.setPoint_y(Double.parseDouble(request.getParameter("location_position_y")));
	   vo.setSubject(request.getParameter("subject"));
	   vo.setNumber(request.getParameter("number"));
	   vo.setContent(request.getParameter("textAreaContent"));
	   vo.setLocation(request.getParameter("location_result"));
	   vo.setWriter((String) session.getAttribute("userName"));
			   
	   bBoardService.boardInsertService(vo);
	   
	   model.addAttribute("category", category);
	   model.addAttribute("boardlist", bBoardService.boardListService(category));
       return "together";
      }
   
   @RequestMapping(value="/sendReview")
   public String sendReview(Model model,HttpServletRequest request, HttpSession session,@RequestParam(value="category", required=false, defaultValue="all") String category) throws Exception {
	   ReviewVO vo = new ReviewVO();

	   String savePath = '<img src="${pageContext.request.contextPath}/resources/editor/upload/'+request.getParameter("photo")+'">';
       int sizeLimit = 5*1024*1024;
       String encType ="euc-kr";
       MultipartRequest multi = new MultipartRequest(request, savePath, sizeLimit, encType, new DefaultFileRenamePolicy());

	   vo.setCategory((String) request.getParameter("category"));
	   vo.setPoint_x(Double.parseDouble(request.getParameter("location_position_x")));
	   vo.setPoint_y(Double.parseDouble(request.getParameter("location_position_y")));
	   vo.setSubject(request.getParameter("subject"));
	   vo.setContent(request.getParameter("textAreaContent"));
	   vo.setWriter((String) session.getAttribute("userName"));
	   vo.setPhoto(savePath);
	   
	   bBoardService.reviewInsertService(vo);
	   
	   model.addAttribute("category", category);
	   model.addAttribute("reviewlist", bBoardService.reviewListService(category));
	   
       return "review";
      }
 
   @RequestMapping(value="/searchLocation")
   public String searchLocation() {
         return "searchLocation";
      }
   
	 @Resource(name="com.example.demo.member.service.MemberService")
	 MemberService mMemberService;
	 
   @RequestMapping(value="/checkLogin")
   public ModelAndView checkLogin(@ModelAttribute MemberVO vo, HttpSession session, HttpServletRequest request) throws Exception {
	   
	   vo.setEmail(request.getParameter("InputEmail"));
	   vo.setPassword(request.getParameter("InputPassword"));
			   
	   boolean result = mMemberService.loginCheck(vo, session);
	   ModelAndView mav = new ModelAndView();
	   if(result==true){
		   mav.setViewName("myPage");
		   mav.addObject("msg","success");
	   }else{
		   mav.setViewName("login");
		   mav.addObject("msg", "fail");
	   }

       return mav;
      }
 //단일파일업로드
   @RequestMapping("/photoUpload")
   public String photoUpload(HttpServletRequest request, PhotoVo vo){
       System.out.println("photoupload!!!!!!!!!!!!!!!");
       String callback = vo.getCallback();
       String callback_func = vo.getCallback_func();
       String file_result = "";
       try {
           if(vo.getFiledata() != null && vo.getFiledata().getOriginalFilename() != null && !vo.getFiledata().getOriginalFilename().equals("")){
               //파일이 존재하면
               String original_name = vo.getFiledata().getOriginalFilename();
               String ext = original_name.substring(original_name.lastIndexOf(".")+1);
               //파일 기본경로
               String defaultPath = request.getSession().getServletContext().getRealPath("/");
               //파일 기본경로 _ 상세경로
               String path = defaultPath + "resources" + File.separator + "photo_upload" + File.separator;             
               File file = new File(path);
               System.out.println("path:"+path);
               //디렉토리 존재하지 않을경우 디렉토리 생성
               if(!file.exists()) {
                   file.mkdirs();
               }
               //서버에 업로드 할 파일명(한글문제로 인해 원본파일은 올리지 않는것이 좋음)
               String realname = UUID.randomUUID().toString() + "." + ext;
           ///////////////// 서버에 파일쓰기 /////////////////
               vo.getFiledata().transferTo(new File(path+realname));
               file_result += "&bNewLine=true&sFileName="+original_name+"&sFileURL=/resources/photo_upload/"+realname;
           } else {
               file_result += "&errstr=error";
           }
       } catch (Exception e) {
           e.printStackTrace();
       }
       return "redirect:" + callback + "?callback_func="+callback_func+file_result;
   }

 //다중파일업로드
   @RequestMapping("/multiplePhotoUpload")
   public void multiplePhotoUpload(HttpServletRequest request, HttpServletResponse response){
       try {
            //파일정보
            String sFileInfo = "";
            //파일명을 받는다 - 일반 원본파일명
            String filename = request.getHeader("file-name");
            //파일 확장자
            String filename_ext = filename.substring(filename.lastIndexOf(".")+1);
            //확장자를소문자로 변경
            filename_ext = filename_ext.toLowerCase();
            //파일 기본경로
            String dftFilePath = request.getSession().getServletContext().getRealPath("/");
            //파일 기본경로 _ 상세경로
            String filePath = dftFilePath + "board" + File.separator + "photo_upload" + File.separator;
            File file = new File(filePath);
            if(!file.exists()) {
               file.mkdirs();
            }
            String realFileNm = "";
            SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
            String today= formatter.format(new java.util.Date());
            realFileNm = today+UUID.randomUUID().toString() + filename.substring(filename.lastIndexOf("."));
            String rlFileNm = filePath + realFileNm;
            ///////////////// 서버에 파일쓰기 /////////////////
            InputStream is = request.getInputStream();
            OutputStream os=new FileOutputStream(rlFileNm);
            int numRead;
            byte b[] = new byte[Integer.parseInt(request.getHeader("file-size"))];
            while((numRead = is.read(b,0,b.length)) != -1){
               os.write(b,0,numRead);
            }
            if(is != null) {
               is.close();
            }
            os.flush();
            os.close();
            ///////////////// 서버에 파일쓰기 /////////////////
            // 정보 출력
            sFileInfo += "&bNewLine=true";
            // img 태그의 title 속성을 원본파일명으로 적용시켜주기 위함
            sFileInfo += "&sFileName="+ filename;;
            sFileInfo += "&sFileURL="+"/board/photo_upload/"+realFileNm;
            PrintWriter print = response.getWriter();
            print.print(sFileInfo);
            print.flush();
            print.close();
       } catch (Exception e) {
           e.printStackTrace();
       }
   }

   
}