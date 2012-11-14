<%@page contentType="text/html"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="default.css" rel="stylesheet" type="text/css" />  
    </head>
    <body>

        <div id="wrapper"> 
            <div>
                <H2>
                </H2>    
                <h2 align="center">Thêm vật nuôi mới</h2>
                <form action="addNewProductServlet" method="post" name="form1">
                    <table width="50%" border="1" align="center">
                        <tr>
                        <td>Loại:</td>
                        <td>
                            <select>
                                <option>Chó</option>
                                <option>Mèo</option>
                            </select>
                        </td>            
                        </tr>
                        <tr>
                        <td>Ảnh đầy đủ:</td>
                        <td><label>
                            <input type="file" name="fimage" id="fimage">
                        </label></td>
                        </tr>
                        <tr>
                        <td>Ảnh thumnail</td>
                        <td><input type="file" name="fthumb" id ="thumb"></td>
                        </tr>
                        <tr>
                        <td>Giá:</td>
                        <td><label>
                            <input type="text" name="fprice" id="fprice">
                        </label></td>
                        </tr>            
                        <tr>
                        <td>Mô tả đầy đủ:</td>
                        <td><label>
                            <textarea name="fdescribe" id="f_desc" cols="45" rows="5"></textarea>
                        </label></td>
                        </tr>
                        <tr>
                        <td height="78">Mô tả ngắn gọn:</td>
                        <td><label>
                            <textarea name="fstatus" id="s_desc" cols="45" rows="5"></textarea>
                        </label></td>
                        </tr>
                        <tr>
                        <td>Số lượng:</td>
                        <td><label>
                            <input type="text" name="fadddate" id="num">
                        </label></td>
                        </tr>
                        <tr>
                        <td><label>
                            <input type="reset" name="Reset" id="button" value="Reset">
                        </label></td>
                        <td><label>
                            <input type="submit" name="submit" id="button2" value="Submit">
                        </label></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </body>
</html>
