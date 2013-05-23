.class public Lat/fhooe/mc/foodlog/HistoryActivity$DiaryGroupAdapter;
.super Landroid/widget/ArrayAdapter;
.source "HistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/fhooe/mc/foodlog/HistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DiaryGroupAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lat/fhooe/mc/foodlog/model/DiaryGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lat/fhooe/mc/foodlog/model/DiaryGroup;",
            ">;"
        }
    .end annotation
.end field

.field private dateFormat:Ljava/text/SimpleDateFormat;

.field public imageLoader:Lcom/fedorvlasov/lazylist/ImageLoader;

.field private inflater:Landroid/view/LayoutInflater;

.field private layoutResourceId:I

.field final synthetic this$0:Lat/fhooe/mc/foodlog/HistoryActivity;


# direct methods
.method public constructor <init>(Lat/fhooe/mc/foodlog/HistoryActivity;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter "layoutResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lat/fhooe/mc/foodlog/model/DiaryGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p4, diary:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lat/fhooe/mc/foodlog/model/DiaryGroup;>;"
    iput-object p1, p0, Lat/fhooe/mc/foodlog/HistoryActivity$DiaryGroupAdapter;->this$0:Lat/fhooe/mc/foodlog/HistoryActivity;

    .line 88
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lat/fhooe/mc/foodlog/HistoryActivity$DiaryGroupAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 83
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 84
    const-string v1, "EEE dd.MM.yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lat/fhooe/mc/foodlog/HistoryActivity$DiaryGroupAdapter;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 89
    iput p3, p0, Lat/fhooe/mc/foodlog/HistoryActivity$DiaryGroupAdapter;->layoutResourceId:I

    .line 90
    iput-object p2, p0, Lat/fhooe/mc/foodlog/HistoryActivity$DiaryGroupAdapter;->context:Landroid/content/Context;

    .line 91
    iput-object p4, p0, Lat/fhooe/mc/foodlog/HistoryActivity$DiaryGroupAdapter;->data:Ljava/util/ArrayList;

    .line 94
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 93
    iput-object v0, p0, Lat/fhooe/mc/foodlog/HistoryActivity$DiaryGroupAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 95
    new-instance v0, Lcom/fedorvlasov/lazylist/ImageLoader;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fedorvlasov/lazylist/ImageLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lat/fhooe/mc/foodlog/HistoryActivity$DiaryGroupAdapter;->imageLoader:Lcom/fedorvlasov/lazylist/ImageLoader;

    .line 97
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 102
    move-object/from16 v16, p2

    .line 105
    .local v16, vi:Landroid/view/View;
    if-nez p2, :cond_0

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lat/fhooe/mc/foodlog/HistoryActivity$DiaryGroupAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lat/fhooe/mc/foodlog/HistoryActivity$DiaryGroupAdapter;->layoutResourceId:I

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 109
    :cond_0
    const v17, 0x7f0c0016

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 108
    check-cast v4, Landroid/widget/TextView;

    .line 111
    .local v4, dateView:Landroid/widget/TextView;
    const v17, 0x7f0c0017

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 110
    check-cast v12, Landroid/widget/TextView;

    .line 115
    .local v12, kcalView:Landroid/widget/TextView;
    const v17, 0x7f0c0018

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 116
    .local v3, breakfastView:Landroid/view/View;
    const v17, 0x7f0c0019

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 117
    .local v13, lunchView:Landroid/view/View;
    const v17, 0x7f0c001a

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 119
    .local v6, dinerView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lat/fhooe/mc/foodlog/HistoryActivity$DiaryGroupAdapter;->data:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lat/fhooe/mc/foodlog/model/DiaryGroup;

    .line 120
    .local v7, item:Lat/fhooe/mc/foodlog/model/DiaryGroup;
    const/4 v9, 0x0

    .line 121
    .local v9, kcalBreakfast:I
    const/4 v11, 0x0

    .line 122
    .local v11, kcalLunch:I
    const/4 v10, 0x0

    .line 123
    .local v10, kcalDiner:I
    if-eqz v7, :cond_1

    .line 124
    const/4 v8, 0x0

    .line 125
    .local v8, kcal:I
    const/4 v15, 0x0

    .line 126
    .local v15, tempKcal:I
    invoke-virtual {v7}, Lat/fhooe/mc/foodlog/model/DiaryGroup;->getDiaries()Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_2

    .line 145
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, " kcal"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lat/fhooe/mc/foodlog/HistoryActivity$DiaryGroupAdapter;->dateFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v17, v0

    invoke-virtual {v7}, Lat/fhooe/mc/foodlog/model/DiaryGroup;->getDate()Ljava/util/Date;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    new-instance v14, Landroid/widget/TableRow$LayoutParams;

    const/16 v17, 0x0

    const/16 v18, 0x28

    int-to-float v0, v9

    move/from16 v19, v0

    int-to-float v0, v8

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v14, v0, v1, v2}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    .line 149
    .local v14, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    new-instance v14, Landroid/widget/TableRow$LayoutParams;

    .end local v14           #params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v17, 0x0

    const/16 v18, 0x28

    int-to-float v0, v11

    move/from16 v19, v0

    int-to-float v0, v8

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v14, v0, v1, v2}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    .line 152
    .restart local v14       #params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v13, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    new-instance v14, Landroid/widget/TableRow$LayoutParams;

    .end local v14           #params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v17, 0x0

    const/16 v18, 0x28

    int-to-float v0, v10

    move/from16 v19, v0

    int-to-float v0, v8

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v14, v0, v1, v2}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    .line 155
    .restart local v14       #params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v6, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    .end local v8           #kcal:I
    .end local v14           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v15           #tempKcal:I
    :cond_1
    return-object v16

    .line 126
    .restart local v8       #kcal:I
    .restart local v15       #tempKcal:I
    :cond_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lat/fhooe/mc/foodlog/model/Diary;

    .line 127
    .local v5, diary:Lat/fhooe/mc/foodlog/model/Diary;
    invoke-virtual {v5}, Lat/fhooe/mc/foodlog/model/Diary;->getItem()Lat/fhooe/mc/foodlog/model/Item;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lat/fhooe/mc/foodlog/model/Item;->getData()Lat/fhooe/mc/foodlog/model/FoodData;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lat/fhooe/mc/foodlog/model/FoodData;->getKcal()I

    move-result v18

    .line 128
    invoke-virtual {v5}, Lat/fhooe/mc/foodlog/model/Diary;->getAmount()I

    move-result v19

    .line 127
    mul-int v18, v18, v19

    .line 129
    invoke-virtual {v5}, Lat/fhooe/mc/foodlog/model/Diary;->getItem()Lat/fhooe/mc/foodlog/model/Item;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lat/fhooe/mc/foodlog/model/Item;->getData()Lat/fhooe/mc/foodlog/model/FoodData;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lat/fhooe/mc/foodlog/model/FoodData;->getAmount()I

    move-result v19

    .line 127
    div-int v15, v18, v19

    .line 130
    invoke-virtual {v5}, Lat/fhooe/mc/foodlog/model/Diary;->getMealtime()I

    move-result v18

    packed-switch v18, :pswitch_data_0

    .line 142
    :goto_1
    add-int/2addr v8, v15

    goto/16 :goto_0

    .line 132
    :pswitch_0
    add-int/2addr v9, v15

    .line 133
    goto :goto_1

    .line 135
    :pswitch_1
    add-int/2addr v11, v15

    .line 136
    goto :goto_1

    .line 138
    :pswitch_2
    add-int/2addr v10, v15

    goto :goto_1

    .line 130
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
