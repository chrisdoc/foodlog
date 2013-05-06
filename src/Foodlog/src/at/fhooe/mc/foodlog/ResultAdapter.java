package at.fhooe.mc.foodlog;

import java.util.ArrayList;

import com.fedorvlasov.lazylist.ImageLoader;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import at.fhooe.mc.foodlog.model.Item;

public class ResultAdapter extends ArrayAdapter<Item> {
	Context context;
	int layoutResourceId;
	ArrayList<Item> data = null;

	private static LayoutInflater inflater = null;
	public ImageLoader imageLoader;

	public ResultAdapter(Context context, int layoutResourceId,
			ArrayList<Item> data) {
		super(context, layoutResourceId, data);
		this.layoutResourceId = layoutResourceId;
		this.context = context;
		this.data = data;
		
		inflater = (LayoutInflater)context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        imageLoader=new ImageLoader(context.getApplicationContext());
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		View vi = convertView;
	//	LayoutInflater inflater = ((Activity) context).getLayoutInflater();
		if (convertView == null)
			vi = inflater.inflate(R.layout.result_row, null);

		TextView title = (TextView) vi.findViewById(R.id.result_row_title); // title
		TextView subtitle = (TextView) vi
				.findViewById(R.id.result_row_subtitle); // artist name
		ImageView thumb_image = (ImageView) vi
				.findViewById(R.id.result_row_image); // thumb image

		Item item = data.get(position);
		imageLoader.DisplayImage(item.getThumbsrc(), thumb_image);
		// Setting all values in listview
		title.setText(item.getDescription().getName());
		subtitle.setText(item.getDescription().getGroup());
		return vi;
	}

}
