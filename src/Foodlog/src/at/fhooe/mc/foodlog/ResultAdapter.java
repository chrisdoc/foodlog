package at.fhooe.mc.foodlog;

import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import at.fhooe.mc.foodlog.model.Item;
import com.fedorvlasov.lazylist.ImageLoader;

import java.util.ArrayList;

/**
 * An Adapter which is responsible for displaying and storing of results.
 * This adapter is used to show search results
 */
public class ResultAdapter extends ArrayAdapter<Item> {
    /**
     * Context of the invoked Activity
     */
    private Context context;
    /**
     * Resourceid of the layout
     */
    private int layoutResourceId;
    /**
     * An ArrayList which stores all results
     */
    private ArrayList<Item> data = null;
    /**
     * A LayoutInflater to instantiate the layout
     */
    private static LayoutInflater inflater = null;
    /**
     * A ImageLoader which is used to load the displayed images in the background
     */
    public ImageLoader imageLoader;

    /**
     * Instantiate a new ResultAdapter for a Listview
     * @param context Context of the invoked Activity
     * @param layoutResourceId The id of the used layout
     * @param data An ArrayList with search results
     */
    public ResultAdapter(Context context, int layoutResourceId,
                         ArrayList<Item> data) {
        super(context, layoutResourceId, data);
        this.layoutResourceId = layoutResourceId;
        this.context = context;
        this.data = data;

        inflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        imageLoader = new ImageLoader(context.getApplicationContext());
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        View vi = convertView;
        //	instantiate a new view if the vi hasn't been instantiated yet
        if (convertView == null)
            vi = inflater.inflate(R.layout.result_row, null);

        //gets the views from the layout
        TextView title = (TextView) vi.findViewById(R.id.result_row_title);
        TextView subtitle = (TextView) vi
                .findViewById(R.id.result_row_subtitle);
        ImageView thumb_image = (ImageView) vi
                .findViewById(R.id.result_row_image);

        Item item = data.get(position);
        //loads the thumbnail image
        imageLoader.DisplayImage(item.getThumbsrc(), thumb_image);

        // Setting all values in listview
        title.setText(item.getDescription().getName());
        subtitle.setText(item.getDescription().getGroup());

        //alternating background color
        if (position % 2 == 0) {
            vi.setBackgroundColor(context.getResources().getColor(R.color.color_bg));
        } else {
            vi.setBackgroundColor(Color.WHITE);
        }
        return vi;
    }

}
