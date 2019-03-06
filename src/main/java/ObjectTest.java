/**
 * @author yunteng
 */

// 想要实用clone方法，要实现 Cloneable 接口
public class ObjectTest implements Cloneable {

	public static void main(String[] args) {

		//不存在
		/*Object a = new Object();
		Object b = a.clone();*/

		//原因 ： ObjectTest与Object不再同一包下，不能用Object下的protect方法
		ObjectTest a = new ObjectTest();
		try {
			ObjectTest b = (ObjectTest)a.clone();
		} catch (CloneNotSupportedException e) {
			e.printStackTrace();
		}
	}
}
