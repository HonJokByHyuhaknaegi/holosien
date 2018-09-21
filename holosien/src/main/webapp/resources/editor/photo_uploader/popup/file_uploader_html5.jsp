<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<script>
String sFileInfo = "";
//���ϸ� - �̱����Ͼ��ε�� �ٸ��� ��Ƽ���Ͼ��ε�� HEADER�� �Ѿ��
String name = request.getHeader("file-name");
String ext = name.substring(name.lastIndexOf(".")+1);
//���� �⺻���
String defaultPath = request.getServletContext().getRealPath("/");
//���� �⺻��� _ �󼼰��
String path = defaultPath + "upload" + File.separator;
File file = new File(path);
if(!file.exists()) {
    file.mkdirs();
}
String realname = UUID.randomUUID().toString() + "." + ext;
InputStream is = request.getInputStream();
OutputStream os=new FileOutputStream(path + realname);
int numRead;
// ���Ͼ���
byte b[] = new byte[Integer.parseInt(request.getHeader("file-size"))];
while((numRead = is.read(b,0,b.length)) != -1){
    os.write(b,0,numRead);
}
if(is != null) {
    is.close();
}
os.flush();
os.close();
sFileInfo += "&bNewLine=true&sFileName="+ name+"&sFileURL="+"/upload/"+realname;
out.println(sFileInfo);
</script>
</body>
</html>