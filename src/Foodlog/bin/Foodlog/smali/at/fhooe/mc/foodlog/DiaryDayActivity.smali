.class public Lat/fhooe/mc/foodlog/DiaryDayActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "DiaryDayActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/fhooe/mc/foodlog/DiaryDayActivity$Information;,
        Lat/fhooe/mc/foodlog/DiaryDayActivity$InformationAdapter;
    }
.end annotation


# instance fields
.field private dateFormat:Ljava/text/SimpleDateFormat;

.field diaryGroup:Lat/fhooe/mc/foodlog/model/DiaryGroup;

.field informationAdapter:Lat/fhooe/mc/foodlog/DiaryDayActivity$InformationAdapter;

.field kcal:I

.field kcal_breakfast:I

.field kcal_diner:I

.field kcal_lunch:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 34
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 35
    const-string v1, "EEE dd.MM.yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lat/fhooe/mc/foodlog/DiaryDayActivity;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 36
    iput v3, p0, Lat/fhooe/mc/foodlog/DiaryDayActivity;->kcal:I

    .line 37
    iput v3, p0, Lat/fhooe/mc/foodlog/DiaryDayActivity;->kcal_breakfast:I

    .line 38
    iput v3, p0, Lat/fhooe/mc/foodlog/DiaryDayActivity;->kcal_lunch:I

    .line 39
    iput v3, p0, Lat/fhooe/mc/foodlog/DiaryDayActivity;->kcal_diner:I

    .line 32
    return-void
.end method


# virtual methods
.method public getJSON()Ljava/lang/String;
    .locals 7

    .prologue
    .line 140
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 143
    .local v0, array:Lorg/json/JSONArray;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 145
    .local v1, breakfast:Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "value"

    iget v6, p0, Lat/fhooe/mc/foodlog/DiaryDayActivity;->kcal_breakfast:I

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 146
    const-string v5, "color"

    const-string v6, "#D45354"

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string v5, "label"

    const v6, 0x7f09001e

    invoke-virtual {p0, v6}, Lat/fhooe/mc/foodlog/DiaryDayActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    const-string v5, "labelColor"

    const-string v6, "#444"

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string v5, "labelFontSize"

    const-string v6, "1.2em"

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 158
    .local v4, lunch:Lorg/json/JSONObject;
    :try_start_1
    const-string v5, "value"

    iget v6, p0, Lat/fhooe/mc/foodlog/DiaryDayActivity;->kcal_lunch:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 159
    const-string v5, "color"

    const-string v6, "#A9DC3A"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string v5, "label"

    const v6, 0x7f09001f

    invoke-virtual {p0, v6}, Lat/fhooe/mc/foodlog/DiaryDayActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string v5, "labelColor"

    const-string v6, "#444"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    const-string v5, "labelFontSize"

    const-string v6, "1.2em"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    :goto_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 171
    .local v2, diner:Lorg/json/JSONObject;
    :try_start_2
    const-string v5, "value"

    iget v6, p0, Lat/fhooe/mc/foodlog/DiaryDayActivity;->kcal_diner:I

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 172
    const-string v5, "color"

    const-string v6, "#2FCAD8"

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    const-string v5, "label"

    const v6, 0x7f090020

    invoke-virtual {p0, v6}, Lat/fhooe/mc/foodlog/DiaryDayActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    const-string v5, "labelColor"

    const-string v6, "#444"

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    const-string v5, "labelFontSize"

    const-string v6, "1.2em"

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 181
    :goto_2
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 182
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 183
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 185
    const-string v5, "kieslich"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 151
    .end local v2           #diner:Lorg/json/JSONObject;
    .end local v4           #lunch:Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 153
    .local v3, e1:Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 164
    .end local v3           #e1:Lorg/json/JSONException;
    .restart local v4       #lunch:Lorg/json/JSONObject;
    :catch_1
    move-exception v3

    .line 166
    .restart local v3       #e1:Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 177
    .end local v3           #e1:Lorg/json/JSONException;
    .restart local v2       #diner:Lorg/json/JSONObject;
    :catch_2
    move-exception v3

    .line 179
    .restart local v3       #e1:Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 22
    .parameter "savedInstance"

    .prologue
    .line 45
    invoke-super/range {p0 .. p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v18, 0x7f030006

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lat/fhooe/mc/foodlog/DiaryDayActivity;->setContentView(I)V

    .line 47
    invoke-virtual/range {p0 .. p0}, Lat/fhooe/mc/foodlog/DiaryDayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "diarygroup"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v18

    check-cast v18, Lat/fhooe/mc/foodlog/model/DiaryGroup;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lat/fhooe/mc/foodlog/DiaryDayActivity;->diaryGroup:Lat/fhooe/mc/foodlog/model/DiaryGroup;

    .line 51
    move-object/from16 v0, p0

    iget-object v0, v0, Lat/fhooe/mc/foodlog/DiaryDayActivity;->diaryGroup:Lat/fhooe/mc/foodlog/model/DiaryGroup;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 52
    const v18, 0x7f0c001c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lat/fhooe/mc/foodlog/DiaryDayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 53
    .local v8, dateView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lat/fhooe/mc/foodlog/DiaryDayActivity;->dateFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lat/fhooe/mc/foodlog/DiaryDayActivity;->diaryGroup:Lat/fhooe/mc/foodlog/model/DiaryGroup;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lat/fhooe/mc/foodlog/model/DiaryGroup;->getDate()Ljava/util/Date;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    const v18, 0x7f0c001d

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lat/fhooe/mc/foodlog/DiaryDayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 56
    .local v12, kcalView:Landroid/widget/TextView;
    const/16 v17, 0x0

    .line 57
    .local v17, temp_kcal:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lat/fhooe/mc/foodlog/DiaryDayActivity;->diaryGroup:Lat/fhooe/mc/foodlog/model/DiaryGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lat/fhooe/mc/foodlog/model/DiaryGroup;->getDiaries()Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_1

    .line 75
    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v0, v0, Lat/fhooe/mc/foodlog/DiaryDayActivity;->kcal:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " kcal"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .end local v8           #dateView:Landroid/widget/TextView;
    .end local v12           #kcalView:Landroid/widget/TextView;
    .end local v17           #temp_kcal:I
    :cond_0
    const v18, 0x7f0c0021

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lat/fhooe/mc/foodlog/DiaryDayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/webkit/WebView;

    .line 79
    .local v15, pie:Landroid/webkit/WebView;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 80
    invoke-virtual {v15}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 81
    const/high16 v18, 0x200

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 82
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 83
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 84
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    .line 86
    const-string v18, "dataloader"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    new-instance v18, Lat/fhooe/mc/foodlog/DiaryDayActivity$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lat/fhooe/mc/foodlog/DiaryDayActivity$1;-><init>(Lat/fhooe/mc/foodlog/DiaryDayActivity;)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 93
    invoke-virtual {v15}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 95
    const-string v18, "file:///android_asset/pie.html"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 97
    new-instance v18, Lat/fhooe/mc/foodlog/DiaryDayActivity$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lat/fhooe/mc/foodlog/DiaryDayActivity$2;-><init>(Lat/fhooe/mc/foodlog/DiaryDayActivity;)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 104
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 105
    .local v16, pref:Landroid/content/SharedPreferences;
    const v18, 0x7f090006

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lat/fhooe/mc/foodlog/DiaryDayActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x7d0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 106
    .local v13, kcal_all:I
    move-object/from16 v0, p0

    iget v0, v0, Lat/fhooe/mc/foodlog/DiaryDayActivity;->kcal:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v13

    move/from16 v19, v0

    div-float v6, v18, v19

    .line 107
    .local v6, consumed:F
    const v18, 0x7f0c001e

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lat/fhooe/mc/foodlog/DiaryDayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 109
    .local v4, calories_consumed:Landroid/view/View;
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 110
    const/16 v18, 0x0

    .line 111
    const/16 v19, 0x28

    .line 109
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v14, v0, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 112
    .local v14, param:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v4, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    const v18, 0x7f0c001f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lat/fhooe/mc/foodlog/DiaryDayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 114
    .local v5, calories_left:Landroid/view/View;
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 115
    .end local v14           #param:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v18, 0x0

    .line 116
    const/16 v19, 0x28

    const/high16 v20, 0x3f80

    sub-float v20, v20, v6

    .line 114
    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v14, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 117
    .restart local v14       #param:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v5, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v10, information:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lat/fhooe/mc/foodlog/DiaryDayActivity$Information;>;"
    new-instance v9, Lat/fhooe/mc/foodlog/DiaryDayActivity$Information;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lat/fhooe/mc/foodlog/DiaryDayActivity$Information;-><init>(Lat/fhooe/mc/foodlog/DiaryDayActivity;)V

    .line 121
    .local v9, info:Lat/fhooe/mc/foodlog/DiaryDayActivity$Information;
    const v18, 0x7f09001e

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lat/fhooe/mc/foodlog/DiaryDayActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lat/fhooe/mc/foodlog/DiaryDayActivity$Information;->setTilte(Ljava/lang/String;)V

    .line 122
    const-string v18, "%d kcal"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lat/fhooe/mc/foodlog/DiaryDayActivity;->kcal_breakfast:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lat/fhooe/mc/foodlog/DiaryDayActivity$Information;->setSubtitle(Ljava/lang/String;)V

    .line 123
    const v18, 0x7f060005

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lat/fhooe/mc/foodlog/DiaryDayActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lat/fhooe/mc/foodlog/DiaryDayActivity$Information;->setColor(I)V

    .line 124
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v9, Lat/fhooe/mc/foodlog/DiaryDayActivity$Information;

    .end local v9           #info:Lat/fhooe/mc/foodlog/DiaryDayActivity$Information;
    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lat/fhooe/mc/foodlog/DiaryDayActivity$Information;-><init>(Lat/fhooe/mc/foodlog/DiaryDayActivity;)V

    .line 126
    .restart local v9       #info:Lat/fhooe/mc/foodlog/DiaryDayActivity$Information;
    const v18, 0x7f09001f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lat/fhooe/mc/foodlog/DiaryDayActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lat/fhooe/mc/foodlog/DiaryDayActivity$Information;->setTilte(Ljava/lang/String;)V

    .line 127
    const-string v18, "%d kcal"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lat/fhooe/mc/foodlog/DiaryDayActivity;->kcal_lunch:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lat/fhooe/mc/foodlog/DiaryDayActivity$Information;->setSubtitle(Ljava/lang/String;)V

    .line 128
    const v18, 0x7f060006

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lat/fhooe/mc/foodlog/DiaryDayActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lat/fhooe/mc/foodlog/DiaryDayActivity$Information;->setColor(I)V

    .line 129
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v9, Lat/fhooe/mc/foodlog/DiaryDayActivity$Information;

    .end local v9           #info:Lat/fhooe/mc/foodlog/DiaryDayActivity$Information;
    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lat/fhooe/mc/foodlog/DiaryDayActivity$Information;-><init>(Lat/fhooe/mc/foodlog/DiaryDayActivity;)V

    .line 131
    .restart local v9       #info:Lat/fhooe/mc/foodlog/DiaryDayActivity$Information;
    const v18, 0x7f090020

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lat/fhooe/mc/foodlog/DiaryDayActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lat/fhooe/mc/foodlog/DiaryDayActivity$Information;->setTilte(Ljava/lang/String;)V

    .line 132
    const-string v18, "%d kcal"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lat/fhooe/mc/foodlog/DiaryDayActivity;->kcal_diner:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lat/fhooe/mc/foodlog/DiaryDayActivity$Information;->setSubtitle(Ljava/lang/String;)V

    .line 133
    const v18, 0x7f060007

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lat/fhooe/mc/foodlog/DiaryDayActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lat/fhooe/mc/foodlog/DiaryDayActivity$Information;->setColor(I)V

    .line 134
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v18, Lat/fhooe/mc/foodlog/DiaryDayActivity$InformationAdapter;

    const v19, 0x7f030008

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v10}, Lat/fhooe/mc/foodlog/DiaryDayActivity$InformationAdapter;-><init>(Lat/fhooe/mc/foodlog/DiaryDayActivity;Landroid/content/Context;ILjava/util/ArrayList;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lat/fhooe/mc/foodlog/DiaryDayActivity;->informationAdapter:Lat/fhooe/mc/foodlog/DiaryDayActivity$InformationAdapter;

    .line 136
    const v18, 0x7f0c0022

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lat/fhooe/mc/foodlog/DiaryDayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ListView;

    .line 137
    .local v11, informationView:Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lat/fhooe/mc/foodlog/DiaryDayActivity;->informationAdapter:Lat/fhooe/mc/foodlog/DiaryDayActivity$InformationAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    return-void

    .line 57
    .end local v4           #calories_consumed:Landroid/view/View;
    .end local v5           #calories_left:Landroid/view/View;
    .end local v6           #consumed:F
    .end local v9           #info:Lat/fhooe/mc/foodlog/DiaryDayActivity$Information;
    .end local v10           #information:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lat/fhooe/mc/foodlog/DiaryDayActivity$Information;>;"
    .end local v11           #informationView:Landroid/widget/ListView;
    .end local v13           #kcal_all:I
    .end local v14           #param:Landroid/widget/LinearLayout$LayoutParams;
    .end local v15           #pie:Landroid/webkit/WebView;
    .end local v16           #pref:Landroid/content/SharedPreferences;
    .restart local v8       #dateView:Landroid/widget/TextView;
    .restart local v12       #kcalView:Landroid/widget/TextView;
    .restart local v17       #temp_kcal:I
    :cond_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lat/fhooe/mc/foodlog/model/Diary;

    .line 58
    .local v7, d:Lat/fhooe/mc/foodlog/model/Diary;
    invoke-virtual {v7}, Lat/fhooe/mc/foodlog/model/Diary;->getItem()Lat/fhooe/mc/foodlog/model/Item;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lat/fhooe/mc/foodlog/model/Item;->getData()Lat/fhooe/mc/foodlog/model/FoodData;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lat/fhooe/mc/foodlog/model/FoodData;->getKcal()I

    move-result v19

    .line 59
    invoke-virtual {v7}, Lat/fhooe/mc/foodlog/model/Diary;->getAmount()I

    move-result v20

    .line 58
    mul-int v19, v19, v20

    .line 60
    invoke-virtual {v7}, Lat/fhooe/mc/foodlog/model/Diary;->getItem()Lat/fhooe/mc/foodlog/model/Item;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lat/fhooe/mc/foodlog/model/Item;->getData()Lat/fhooe/mc/foodlog/model/FoodData;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lat/fhooe/mc/foodlog/model/FoodData;->getAmount()I

    move-result v20

    .line 58
    div-int v17, v19, v20

    .line 61
    move-object/from16 v0, p0

    iget v0, v0, Lat/fhooe/mc/foodlog/DiaryDayActivity;->kcal:I

    move/from16 v19, v0

    add-int v19, v19, v17

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lat/fhooe/mc/foodlog/DiaryDayActivity;->kcal:I

    .line 62
    invoke-virtual {v7}, Lat/fhooe/mc/foodlog/model/Diary;->getMealtime()I

    move-result v19

    packed-switch v19, :pswitch_data_0

    goto/16 :goto_0

    .line 64
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lat/fhooe/mc/foodlog/DiaryDayActivity;->kcal_breakfast:I

    move/from16 v19, v0

    add-int v19, v19, v17

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lat/fhooe/mc/foodlog/DiaryDayActivity;->kcal_breakfast:I

    goto/16 :goto_0

    .line 67
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lat/fhooe/mc/foodlog/DiaryDayActivity;->kcal_lunch:I

    move/from16 v19, v0

    add-int v19, v19, v17

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lat/fhooe/mc/foodlog/DiaryDayActivity;->kcal_lunch:I

    goto/16 :goto_0

    .line 70
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lat/fhooe/mc/foodlog/DiaryDayActivity;->kcal_diner:I

    move/from16 v19, v0

    add-int v19, v19, v17

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lat/fhooe/mc/foodlog/DiaryDayActivity;->kcal_diner:I

    goto/16 :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
