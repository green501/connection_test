package wdson.me.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class PersonDao {
	private JdbcTemplate jdbcTemplate;

	@Autowired
	public PersonDao(DataSource datasource) {
		this.jdbcTemplate = new JdbcTemplate(datasource);
	}

	public List<Person> selectById(String name) {

		String sql = "select * from Person where pid = ?";

		RowMapper<Person> rm = new RowMapper<Person>() {
			public Person mapRow(ResultSet rs, int rowNum) throws SQLException {
				return new Person(rs.getString("pid"),rs.getString("ppw"),rs.getString("pname"),rs.getString("pemail"),rs.getString("pgrade"));
			}
		};
		
		List<Person> results = (List<Person>) jdbcTemplate.query(sql, rm, new Object[] { name });

		return results;
	}

}
