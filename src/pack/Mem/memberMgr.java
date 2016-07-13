package pack.Mem;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ResourceBundle;
import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
public class memberMgr {
	MysqlDataSource ds = null;
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;	
//	public static void main(String[] args) {
//		testSource();
//		System.out.println("***********");
//		
//	}

	public static MysqlDataSource getMySqlDataSource(){
		//Properties props = new Properties();
		ResourceBundle props = ResourceBundle.getBundle("db");
		//FileInputStream fis = null;
		MysqlDataSource mysqlDS = null;		
		try {
			//fis = new FileInputStream("WEB-INF/db.properties");
			//Context context = new InitialContext();
			//mysqlDS = (MysqlDataSource) context.lookup("java:comp/env/db.properties");
            
            mysqlDS = new MysqlDataSource();
            mysqlDS.setURL(props.getString("MYSQL_DB_URL"));
            mysqlDS.setUser(props.getString("MYSQL_DB_USERNAME"));
            mysqlDS.setPassword(props.getString("MYSQL_DB_PASSWORD"));
            int p =1234;
            String s="야호?";
            System.out.printf("ddd %d%s ㅋㅋㅋ",p,s);
            
            
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mysqlDS;
	}
	public void testSource(){		
		try {
			ds=getMySqlDataSource();
			conn=ds.getConnection();
			pstmt=conn.prepareStatement("select * from member");
			rs=pstmt.executeQuery();
			while(rs.next()){
				System.out.println("id="+rs.getString("id")+"psw="+rs.getString("psw"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt !=null)pstmt.close();
				if(conn != null)conn.close();
			} catch (Exception e2) {
			}
		}
	}
	public boolean Insertmem(memberBean bean){		
		boolean b = false;
		String sql = "insert into member (id,psw) values(?,?)";
		//insert into member(id,psw) values('수민2','1234');
		try {
			ds = getMySqlDataSource();
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,bean.getId());
			pstmt.setString(2, bean.getPsw());
			pstmt.executeUpdate();			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt !=null)pstmt.close();
				if(conn != null)conn.close();
			} catch (Exception e2) {
			}
		}
		return b;
	}
	public void UpdateMem(memberBean bean){
		String sql="update member (id,psw) values(?,?)";
		try{
			ds=getMySqlDataSource();
			conn=ds.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, bean.getId());
			pstmt.setString(2, bean.getPsw());		
			pstmt.executeUpdate();
			
		}catch(Exception e){
			System.out.println("update err");
		}finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt !=null)pstmt.close();
				if(conn !=null)conn.close();
			} catch (Exception e2) {
			}
		}
		
	}
	public void DeleteMem(String id){
		String sql = "delete from member where id=?";
		try {
			ds=getMySqlDataSource();
			conn=ds.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,id);
			pstmt.executeQuery();
		} catch (Exception e) {
			System.out.println("delete err");
		}finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)pstmt.close();
			} catch (Exception e2) {
			}
		}
	}
	public boolean selectID(String id){
		boolean b=false;
		String sql= "select id from member where id=?";
		try {
			ds=getMySqlDataSource();
			conn=ds.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeQuery();
		} catch (Exception e) {
			System.out.println("select Id err");
		}finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		return b;
	}
}
