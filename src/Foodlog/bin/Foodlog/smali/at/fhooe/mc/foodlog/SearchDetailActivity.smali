.class public Lat/fhooe/mc/foodlog/SearchDetailActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SearchDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;,
        Lat/fhooe/mc/foodlog/SearchDetailActivity$NutritionAdapter;
    }
.end annotation


# instance fields
.field adapter:Lat/fhooe/mc/foodlog/SearchDetailActivity$NutritionAdapter;

.field diarySource:Lat/fhooe/mc/foodlog/model/DiaryDataSource;

.field imageLoader:Lcom/fedorvlasov/lazylist/ImageLoader;

.field item:Lat/fhooe/mc/foodlog/model/Item;

.field nutritions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lat/fhooe/mc/foodlog/SearchDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    invoke-direct {p0}, Lat/fhooe/mc/foodlog/SearchDetailActivity;->addToDiary()V

    return-void
.end method

.method private addToDiary()V
    .locals 12

    .prologue
    const/16 v11, 0xf

    const/16 v10, 0xa

    .line 144
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 146
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lat/fhooe/mc/foodlog/SearchDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 151
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f030004

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 152
    .local v7, v:Landroid/view/View;
    const v8, 0x7f0c0010

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 153
    .local v6, unit:Landroid/widget/TextView;
    iget-object v8, p0, Lat/fhooe/mc/foodlog/SearchDetailActivity;->item:Lat/fhooe/mc/foodlog/model/Item;

    invoke-virtual {v8}, Lat/fhooe/mc/foodlog/model/Item;->getUnit()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    const v8, 0x7f0c000f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 154
    check-cast v0, Landroid/widget/EditText;

    .line 157
    .local v0, amountView:Landroid/widget/EditText;
    iget-object v8, p0, Lat/fhooe/mc/foodlog/SearchDetailActivity;->item:Lat/fhooe/mc/foodlog/model/Item;

    invoke-virtual {v8}, Lat/fhooe/mc/foodlog/model/Item;->getData()Lat/fhooe/mc/foodlog/model/FoodData;

    move-result-object v8

    invoke-virtual {v8}, Lat/fhooe/mc/foodlog/model/FoodData;->getAmount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 159
    const v8, 0x7f0c0011

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 158
    check-cast v5, Landroid/widget/RadioGroup;

    .line 161
    .local v5, radioMealtime:Landroid/widget/RadioGroup;
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 162
    .local v2, calendar:Ljava/util/Calendar;
    const/16 v8, 0xb

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 163
    .local v3, hours:I
    if-lez v3, :cond_0

    if-lt v3, v10, :cond_2

    .line 165
    :cond_0
    if-lt v3, v10, :cond_1

    if-lt v3, v11, :cond_2

    .line 167
    :cond_1
    if-lt v3, v11, :cond_2

    .line 170
    :cond_2
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 171
    const-string v9, "Add"

    .line 172
    new-instance v10, Lat/fhooe/mc/foodlog/SearchDetailActivity$4;

    invoke-direct {v10, p0, v0, v5}, Lat/fhooe/mc/foodlog/SearchDetailActivity$4;-><init>(Lat/fhooe/mc/foodlog/SearchDetailActivity;Landroid/widget/EditText;Landroid/widget/RadioGroup;)V

    .line 171
    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 195
    const-string v9, "Cancel"

    .line 196
    new-instance v10, Lat/fhooe/mc/foodlog/SearchDetailActivity$5;

    invoke-direct {v10, p0}, Lat/fhooe/mc/foodlog/SearchDetailActivity$5;-><init>(Lat/fhooe/mc/foodlog/SearchDetailActivity;)V

    .line 195
    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 201
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 211
    return-void
.end method


# virtual methods
.method public getJSON()Ljava/lang/String;
    .locals 10

    .prologue
    .line 214
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 217
    .local v0, array:Lorg/json/JSONArray;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 219
    .local v4, fat:Lorg/json/JSONObject;
    :try_start_0
    const-string v7, "value"

    iget-object v8, p0, Lat/fhooe/mc/foodlog/SearchDetailActivity;->item:Lat/fhooe/mc/foodlog/model/Item;

    invoke-virtual {v8}, Lat/fhooe/mc/foodlog/model/Item;->getData()Lat/fhooe/mc/foodlog/model/FoodData;

    move-result-object v8

    invoke-virtual {v8}, Lat/fhooe/mc/foodlog/model/FoodData;->getFat_gram()D

    move-result-wide v8

    invoke-virtual {v4, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 220
    const-string v7, "color"

    const-string v8, "#D45354"

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    const-string v7, "label"

    const-string v8, "fat"

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    const-string v7, "labelColor"

    const-string v8, "#444"

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    const-string v7, "labelFontSize"

    const-string v8, "1.2em"

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 232
    .local v5, protein:Lorg/json/JSONObject;
    :try_start_1
    const-string v7, "value"

    iget-object v8, p0, Lat/fhooe/mc/foodlog/SearchDetailActivity;->item:Lat/fhooe/mc/foodlog/model/Item;

    invoke-virtual {v8}, Lat/fhooe/mc/foodlog/model/Item;->getData()Lat/fhooe/mc/foodlog/model/FoodData;

    move-result-object v8

    invoke-virtual {v8}, Lat/fhooe/mc/foodlog/model/FoodData;->getProtein_gram()D

    move-result-wide v8

    invoke-virtual {v5, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 233
    const-string v7, "color"

    const-string v8, "#A9DC3A"

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    const-string v7, "label"

    const-string v8, "protein"

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    const-string v7, "labelColor"

    const-string v8, "#444"

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    const-string v7, "labelFontSize"

    const-string v8, "1.2em"

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 243
    :goto_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 245
    .local v6, sugar:Lorg/json/JSONObject;
    :try_start_2
    const-string v7, "value"

    iget-object v8, p0, Lat/fhooe/mc/foodlog/SearchDetailActivity;->item:Lat/fhooe/mc/foodlog/model/Item;

    invoke-virtual {v8}, Lat/fhooe/mc/foodlog/model/Item;->getData()Lat/fhooe/mc/foodlog/model/FoodData;

    move-result-object v8

    invoke-virtual {v8}, Lat/fhooe/mc/foodlog/model/FoodData;->getSugar_gram()D

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 246
    const-string v7, "color"

    const-string v8, "#2FCAD8"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    const-string v7, "label"

    const-string v8, "sugar"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    const-string v7, "labelColor"

    const-string v8, "#444"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    const-string v7, "labelFontSize"

    const-string v8, "1.2em"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 256
    :goto_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 258
    .local v2, df:Lorg/json/JSONObject;
    :try_start_3
    const-string v7, "value"

    iget-object v8, p0, Lat/fhooe/mc/foodlog/SearchDetailActivity;->item:Lat/fhooe/mc/foodlog/model/Item;

    invoke-virtual {v8}, Lat/fhooe/mc/foodlog/model/Item;->getData()Lat/fhooe/mc/foodlog/model/FoodData;

    move-result-object v8

    invoke-virtual {v8}, Lat/fhooe/mc/foodlog/model/FoodData;->getDf_gram()D

    move-result-wide v8

    invoke-virtual {v2, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 259
    const-string v7, "color"

    const-string v8, "#E80C7A"

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    const-string v7, "label"

    const-string v8, "df"

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    const-string v7, "labelColor"

    const-string v8, "#444"

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    const-string v7, "labelFontSize"

    const-string v8, "1.2em"

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 268
    :goto_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 270
    .local v1, carb:Lorg/json/JSONObject;
    :try_start_4
    const-string v7, "value"

    iget-object v8, p0, Lat/fhooe/mc/foodlog/SearchDetailActivity;->item:Lat/fhooe/mc/foodlog/model/Item;

    invoke-virtual {v8}, Lat/fhooe/mc/foodlog/model/Item;->getData()Lat/fhooe/mc/foodlog/model/FoodData;

    move-result-object v8

    invoke-virtual {v8}, Lat/fhooe/mc/foodlog/model/FoodData;->getKh_gram()D

    move-result-wide v8

    invoke-virtual {v1, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 271
    const-string v7, "color"

    const-string v8, "#3E454C"

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    const-string v7, "label"

    const-string v8, "carb"

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    const-string v7, "labelColor"

    const-string v8, "#444"

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    const-string v7, "labelFontSize"

    const-string v8, "1.2em"

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 280
    :goto_4
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 281
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 282
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 283
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 284
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 285
    const-string v7, "kieslich"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 225
    .end local v1           #carb:Lorg/json/JSONObject;
    .end local v2           #df:Lorg/json/JSONObject;
    .end local v5           #protein:Lorg/json/JSONObject;
    .end local v6           #sugar:Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 227
    .local v3, e1:Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 238
    .end local v3           #e1:Lorg/json/JSONException;
    .restart local v5       #protein:Lorg/json/JSONObject;
    :catch_1
    move-exception v3

    .line 240
    .restart local v3       #e1:Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 251
    .end local v3           #e1:Lorg/json/JSONException;
    .restart local v6       #sugar:Lorg/json/JSONObject;
    :catch_2
    move-exception v3

    .line 253
    .restart local v3       #e1:Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    .line 264
    .end local v3           #e1:Lorg/json/JSONException;
    .restart local v2       #df:Lorg/json/JSONObject;
    :catch_3
    move-exception v3

    .line 266
    .restart local v3       #e1:Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 276
    .end local v3           #e1:Lorg/json/JSONException;
    .restart local v1       #carb:Lorg/json/JSONObject;
    :catch_4
    move-exception v3

    .line 278
    .restart local v3       #e1:Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 19
    .parameter "savedInstance"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 49
    invoke-super/range {p0 .. p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    new-instance v7, Lat/fhooe/mc/foodlog/model/DiaryDataSource;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lat/fhooe/mc/foodlog/model/DiaryDataSource;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lat/fhooe/mc/foodlog/SearchDetailActivity;->diarySource:Lat/fhooe/mc/foodlog/model/DiaryDataSource;

    .line 52
    move-object/from16 v0, p0

    iget-object v7, v0, Lat/fhooe/mc/foodlog/SearchDetailActivity;->diarySource:Lat/fhooe/mc/foodlog/model/DiaryDataSource;

    invoke-virtual {v7}, Lat/fhooe/mc/foodlog/model/DiaryDataSource;->open()V

    .line 54
    const v7, 0x7f03000b

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lat/fhooe/mc/foodlog/SearchDetailActivity;->setContentView(I)V

    .line 55
    invoke-virtual/range {p0 .. p0}, Lat/fhooe/mc/foodlog/SearchDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "item"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lat/fhooe/mc/foodlog/model/Item;

    move-object/from16 v0, p0

    iput-object v7, v0, Lat/fhooe/mc/foodlog/SearchDetailActivity;->item:Lat/fhooe/mc/foodlog/model/Item;

    .line 56
    const v7, 0x7f0c0036

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lat/fhooe/mc/foodlog/SearchDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 57
    .local v18, title:Landroid/widget/TextView;
    const v7, 0x7f0c0037

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lat/fhooe/mc/foodlog/SearchDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 58
    .local v17, subtitle:Landroid/widget/TextView;
    const v7, 0x7f0c0038

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lat/fhooe/mc/foodlog/SearchDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 59
    .local v13, calories:Landroid/widget/TextView;
    const v7, 0x7f0c0035

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lat/fhooe/mc/foodlog/SearchDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 60
    .local v14, image:Landroid/widget/ImageView;
    new-instance v7, Lcom/fedorvlasov/lazylist/ImageLoader;

    invoke-virtual/range {p0 .. p0}, Lat/fhooe/mc/foodlog/SearchDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/fedorvlasov/lazylist/ImageLoader;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lat/fhooe/mc/foodlog/SearchDetailActivity;->imageLoader:Lcom/fedorvlasov/lazylist/ImageLoader;

    .line 62
    const v7, 0x7f0c003a

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lat/fhooe/mc/foodlog/SearchDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/webkit/WebView;

    .line 63
    .local v16, pie:Landroid/webkit/WebView;
    const/4 v7, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 64
    invoke-virtual/range {v16 .. v16}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 65
    const/high16 v7, 0x200

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 66
    const/4 v7, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 67
    const/4 v7, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 68
    const/4 v7, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    .line 70
    const-string v7, "dataloader"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v7}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    new-instance v7, Lat/fhooe/mc/foodlog/SearchDetailActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lat/fhooe/mc/foodlog/SearchDetailActivity$1;-><init>(Lat/fhooe/mc/foodlog/SearchDetailActivity;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 77
    invoke-virtual/range {v16 .. v16}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 79
    const-string v7, "file:///android_asset/pie.html"

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 81
    new-instance v7, Lat/fhooe/mc/foodlog/SearchDetailActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lat/fhooe/mc/foodlog/SearchDetailActivity$2;-><init>(Lat/fhooe/mc/foodlog/SearchDetailActivity;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 89
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v7, v0, Lat/fhooe/mc/foodlog/SearchDetailActivity;->nutritions:Ljava/util/ArrayList;

    .line 90
    new-instance v7, Lat/fhooe/mc/foodlog/SearchDetailActivity$NutritionAdapter;

    const v8, 0x7f030009

    move-object/from16 v0, p0

    iget-object v9, v0, Lat/fhooe/mc/foodlog/SearchDetailActivity;->nutritions:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v7, v0, v1, v8, v9}, Lat/fhooe/mc/foodlog/SearchDetailActivity$NutritionAdapter;-><init>(Lat/fhooe/mc/foodlog/SearchDetailActivity;Landroid/content/Context;ILjava/util/ArrayList;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lat/fhooe/mc/foodlog/SearchDetailActivity;->adapter:Lat/fhooe/mc/foodlog/SearchDetailActivity$NutritionAdapter;

    .line 92
    const v7, 0x7f0c003b

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lat/fhooe/mc/foodlog/SearchDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ListView;

    .line 93
    .local v15, nutritionView:Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget-object v7, v0, Lat/fhooe/mc/foodlog/SearchDetailActivity;->adapter:Lat/fhooe/mc/foodlog/SearchDetailActivity$NutritionAdapter;

    invoke-virtual {v15, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    move-object/from16 v0, p0

    iget-object v7, v0, Lat/fhooe/mc/foodlog/SearchDetailActivity;->item:Lat/fhooe/mc/foodlog/model/Item;

    if-eqz v7, :cond_0

    .line 96
    move-object/from16 v0, p0

    iget-object v7, v0, Lat/fhooe/mc/foodlog/SearchDetailActivity;->item:Lat/fhooe/mc/foodlog/model/Item;

    invoke-virtual {v7}, Lat/fhooe/mc/foodlog/model/Item;->getDescription()Lat/fhooe/mc/foodlog/model/FoodDescription;

    move-result-object v7

    invoke-virtual {v7}, Lat/fhooe/mc/foodlog/model/FoodDescription;->getName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    move-object/from16 v0, p0

    iget-object v7, v0, Lat/fhooe/mc/foodlog/SearchDetailActivity;->item:Lat/fhooe/mc/foodlog/model/Item;

    invoke-virtual {v7}, Lat/fhooe/mc/foodlog/model/Item;->getDescription()Lat/fhooe/mc/foodlog/model/FoodDescription;

    move-result-object v7

    invoke-virtual {v7}, Lat/fhooe/mc/foodlog/model/FoodDescription;->getGroup()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const-string v7, "%d %s has %d kCal"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lat/fhooe/mc/foodlog/SearchDetailActivity;->item:Lat/fhooe/mc/foodlog/model/Item;

    invoke-virtual {v10}, Lat/fhooe/mc/foodlog/model/Item;->getData()Lat/fhooe/mc/foodlog/model/FoodData;

    move-result-object v10

    .line 100
    invoke-virtual {v10}, Lat/fhooe/mc/foodlog/model/FoodData;->getAmount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lat/fhooe/mc/foodlog/SearchDetailActivity;->item:Lat/fhooe/mc/foodlog/model/Item;

    invoke-virtual {v10}, Lat/fhooe/mc/foodlog/model/Item;->getUnit()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    move-object/from16 v0, p0

    iget-object v10, v0, Lat/fhooe/mc/foodlog/SearchDetailActivity;->item:Lat/fhooe/mc/foodlog/model/Item;

    invoke-virtual {v10}, Lat/fhooe/mc/foodlog/model/Item;->getData()Lat/fhooe/mc/foodlog/model/FoodData;

    move-result-object v10

    invoke-virtual {v10}, Lat/fhooe/mc/foodlog/model/FoodData;->getKcal()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 99
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    move-object/from16 v0, p0

    iget-object v7, v0, Lat/fhooe/mc/foodlog/SearchDetailActivity;->imageLoader:Lcom/fedorvlasov/lazylist/ImageLoader;

    move-object/from16 v0, p0

    iget-object v8, v0, Lat/fhooe/mc/foodlog/SearchDetailActivity;->item:Lat/fhooe/mc/foodlog/model/Item;

    invoke-virtual {v8}, Lat/fhooe/mc/foodlog/model/Item;->getThumbsrc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v14}, Lcom/fedorvlasov/lazylist/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 102
    new-instance v2, Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;

    const-string v4, "Fat"

    move-object/from16 v0, p0

    iget-object v7, v0, Lat/fhooe/mc/foodlog/SearchDetailActivity;->item:Lat/fhooe/mc/foodlog/model/Item;

    invoke-virtual {v7}, Lat/fhooe/mc/foodlog/model/Item;->getData()Lat/fhooe/mc/foodlog/model/FoodData;

    move-result-object v7

    invoke-virtual {v7}, Lat/fhooe/mc/foodlog/model/FoodData;->getFat_gram()D

    move-result-wide v5

    .line 103
    const/high16 v7, 0x7f06

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lat/fhooe/mc/foodlog/SearchDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v3, p0

    .line 102
    invoke-direct/range {v2 .. v7}, Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;-><init>(Lat/fhooe/mc/foodlog/SearchDetailActivity;Ljava/lang/String;DI)V

    .line 104
    .local v2, fat:Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;
    new-instance v3, Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;

    const-string v5, "Protein"

    move-object/from16 v0, p0

    iget-object v7, v0, Lat/fhooe/mc/foodlog/SearchDetailActivity;->item:Lat/fhooe/mc/foodlog/model/Item;

    invoke-virtual {v7}, Lat/fhooe/mc/foodlog/model/Item;->getData()Lat/fhooe/mc/foodlog/model/FoodData;

    move-result-object v7

    .line 105
    invoke-virtual {v7}, Lat/fhooe/mc/foodlog/model/FoodData;->getProtein_gram()D

    move-result-wide v6

    .line 106
    const v8, 0x7f060001

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lat/fhooe/mc/foodlog/SearchDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v4, p0

    .line 104
    invoke-direct/range {v3 .. v8}, Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;-><init>(Lat/fhooe/mc/foodlog/SearchDetailActivity;Ljava/lang/String;DI)V

    .line 107
    .local v3, protein:Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;
    new-instance v4, Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;

    const-string v6, "Sugar"

    move-object/from16 v0, p0

    iget-object v7, v0, Lat/fhooe/mc/foodlog/SearchDetailActivity;->item:Lat/fhooe/mc/foodlog/model/Item;

    invoke-virtual {v7}, Lat/fhooe/mc/foodlog/model/Item;->getData()Lat/fhooe/mc/foodlog/model/FoodData;

    move-result-object v7

    .line 108
    invoke-virtual {v7}, Lat/fhooe/mc/foodlog/model/FoodData;->getSugar_gram()D

    move-result-wide v7

    .line 109
    const v9, 0x7f060002

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lat/fhooe/mc/foodlog/SearchDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v5, p0

    .line 107
    invoke-direct/range {v4 .. v9}, Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;-><init>(Lat/fhooe/mc/foodlog/SearchDetailActivity;Ljava/lang/String;DI)V

    .line 110
    .local v4, sugar:Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;
    new-instance v5, Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;

    const-string v7, "Dietary fiber"

    move-object/from16 v0, p0

    iget-object v8, v0, Lat/fhooe/mc/foodlog/SearchDetailActivity;->item:Lat/fhooe/mc/foodlog/model/Item;

    invoke-virtual {v8}, Lat/fhooe/mc/foodlog/model/Item;->getData()Lat/fhooe/mc/foodlog/model/FoodData;

    move-result-object v8

    .line 111
    invoke-virtual {v8}, Lat/fhooe/mc/foodlog/model/FoodData;->getDf_gram()D

    move-result-wide v8

    .line 112
    const v10, 0x7f060003

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lat/fhooe/mc/foodlog/SearchDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v6, p0

    .line 110
    invoke-direct/range {v5 .. v10}, Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;-><init>(Lat/fhooe/mc/foodlog/SearchDetailActivity;Ljava/lang/String;DI)V

    .line 113
    .local v5, df:Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;
    new-instance v6, Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;

    const-string v8, "Carbohydrates"

    move-object/from16 v0, p0

    iget-object v7, v0, Lat/fhooe/mc/foodlog/SearchDetailActivity;->item:Lat/fhooe/mc/foodlog/model/Item;

    invoke-virtual {v7}, Lat/fhooe/mc/foodlog/model/Item;->getData()Lat/fhooe/mc/foodlog/model/FoodData;

    move-result-object v7

    .line 114
    invoke-virtual {v7}, Lat/fhooe/mc/foodlog/model/FoodData;->getKh_gram()D

    move-result-wide v9

    .line 115
    const v7, 0x7f060004

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lat/fhooe/mc/foodlog/SearchDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v7, p0

    .line 113
    invoke-direct/range {v6 .. v11}, Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;-><init>(Lat/fhooe/mc/foodlog/SearchDetailActivity;Ljava/lang/String;DI)V

    .line 116
    .local v6, carb:Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;
    move-object/from16 v0, p0

    iget-object v7, v0, Lat/fhooe/mc/foodlog/SearchDetailActivity;->nutritions:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    move-object/from16 v0, p0

    iget-object v7, v0, Lat/fhooe/mc/foodlog/SearchDetailActivity;->nutritions:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    move-object/from16 v0, p0

    iget-object v7, v0, Lat/fhooe/mc/foodlog/SearchDetailActivity;->nutritions:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    move-object/from16 v0, p0

    iget-object v7, v0, Lat/fhooe/mc/foodlog/SearchDetailActivity;->nutritions:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    move-object/from16 v0, p0

    iget-object v7, v0, Lat/fhooe/mc/foodlog/SearchDetailActivity;->nutritions:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    move-object/from16 v0, p0

    iget-object v7, v0, Lat/fhooe/mc/foodlog/SearchDetailActivity;->adapter:Lat/fhooe/mc/foodlog/SearchDetailActivity$NutritionAdapter;

    invoke-virtual {v7}, Lat/fhooe/mc/foodlog/SearchDetailActivity$NutritionAdapter;->notifyDataSetChanged()V

    .line 125
    .end local v2           #fat:Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;
    .end local v3           #protein:Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;
    .end local v4           #sugar:Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;
    .end local v5           #df:Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;
    .end local v6           #carb:Lat/fhooe/mc/foodlog/SearchDetailActivity$Nutrition;
    :cond_0
    const v7, 0x7f0c003c

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lat/fhooe/mc/foodlog/SearchDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 126
    .local v12, add_diary:Landroid/widget/Button;
    new-instance v7, Lat/fhooe/mc/foodlog/SearchDetailActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lat/fhooe/mc/foodlog/SearchDetailActivity$3;-><init>(Lat/fhooe/mc/foodlog/SearchDetailActivity;)V

    invoke-virtual {v12, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 139
    iget-object v0, p0, Lat/fhooe/mc/foodlog/SearchDetailActivity;->diarySource:Lat/fhooe/mc/foodlog/model/DiaryDataSource;

    invoke-virtual {v0}, Lat/fhooe/mc/foodlog/model/DiaryDataSource;->close()V

    .line 140
    return-void
.end method
