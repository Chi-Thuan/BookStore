package Model;

public class Category {
	private String _id;
	private String name;
	private String slug;
	
	public Category(String _id, String name, String slug) {
		super();
		this._id = _id;
		this.name = name;
		this.slug = slug;
	}

	public String getSlug() {
		return slug;
	}

	public void setSlug(String slug) {
		this.slug = slug;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String get_id() {
		return _id;
	}
}
